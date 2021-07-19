# アプリ名

Nekko

# 概要

猫を飼いたい人と引き渡したい人を繋ぐアプリケーションです。飼いたい人は、トップページの一覧から気になる猫を探し、その猫を保護している人とチャットでやり取りすることができます。一方で猫を引き渡したい人は、新規投稿画面から猫の情報を入力することで、トップページに情報を発信することができます。

# 本番環境

# 制作背景(意図)
私の家では現在、知人から譲り受けた2匹の猫を飼っています。前々から猫を飼うことは家族間で話していたのですが、ペットショップでお金を払って飼うことに抵抗がありました。また、せっかく飼うなら福祉的な観点からも貢献したいと思っていました。そんな時、たまたま知人の家で子猫が生まれたことを聞き、譲り受けることを決意したのです。
この出来事から（私の場合はタイミングが良かったものの）、私と同じように「売買でのペット飼育に抵抗がある」「動物擁護に少しでも貢献したい」と思っている人が他にもいるのではないかと考え、当アプリケーションを作成するに至りました。
また保護猫などの譲渡会は、限られた地域でのみ行われることが多く、それを宣伝する方法もコンビニの壁や電柱にビラを貼るといった原始的な方法が多く見受けられます。当アプリケーションが実装できれば、より円滑に猫の譲渡ができると思っております。
# DEMO

## 

## 

## 

## 

# 工夫したポイント

# 使用環境(開発環境)

## バックエンド

Ruby, Ruby on rails

## フロントエンド

## データベース

MySQL, SequelPro

## インフラ

## Webサーバー（本番環境）

## アプリケーションサーバー（本番環境）

## ソース管理

GitHub, GitHubDesktop

## テスト

RSpec

## エディタ

VSCode

# 課題や今後実装したい機能

# DB設計

## usersテーブル

| Column             | Type       | Options                            |
| ------------------ | ---------- | ---------------------------------- |
| email              | string     | null: false                        |
| encrypted_password | string     | null: false                        |
| nickname           | string     | null: false                        |
| profile            | text       | null: false                        |

### Association

- has_many :cats
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :chats

## catsテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| name          | string     | null: false                    |
| age           | string     | null: false                    |
| breed         | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| sex_id        | integer    | null: false                    |
| vaccine_id    | integer    | null: false                    |
| castration_id | integer    | null: false                    |
| personality   | text       | null: false                    |
| health        | text       | null: false                    |
| adopt_method  | text       | null: false                    |
| remarks       | text       | ------------------------------ |
| user          |references  | null: false, foreign_key: true |

### Association

- belongs_to :user

## roomsテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |

### Association

- has_many :room_users, dependent: :destroy
- has_many :users, through: :room_users
- has_many :chats, dependent: :destroy

# room_usersテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| room          | references | null: false, foreign_key: true |

### Association
- belongs_to :room
- belongs_to :user

## chatsテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content       | string     | null: false                    |
| user          | references | null: false, foreign_key: true |
| room          | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
