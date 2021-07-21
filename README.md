# :smirk_cat: アプリ名
## Nekko
ネットで猫を譲りたい人・引き取りたい人を繋ぐ意を込めました。（ Nekko = Neko + Net ）

# :scroll: 概要
猫を飼いたい人と引き渡したい人を繋ぐアプリケーションです。飼いたい人は、トップページの一覧から気になる猫を探し、その猫を保護している人とチャットでやり取りすることができます。一方で猫を引き渡したい人は、新規投稿画面から猫の情報を入力することで、トップページに情報を発信することができます。

# :globe_with_meridians: 本番環境（URL）
http://13.230.7.134/

ログイン情報

- テストアカウント①
メールアドレス：test@test.com
　　パスワード：111aaA

- テストアカウント②
メールアドレス：aiueo@aui.com
 パスワード：111aaA

# :scroll: 制作背景（意図）
私の家では現在、知人から譲り受けた2匹の猫を飼っています。前々から猫を飼うことは家族間で話していたのですが、ペットショップでお金を払って飼うことに抵抗がありました。また、せっかく飼うなら福祉的な観点からも貢献したいと思っていました。そんな時、たまたま知人の家で子猫が生まれたことを聞き、譲り受けることを決意したのです。
この出来事から（私の場合はタイミングが良かったものの）、私と同じように「売買でのペット飼育に抵抗がある」「動物擁護に少しでも貢献したい」と思っている人が他にもいるのではないかと考え、当アプリケーションを作成するに至りました。
また保護猫などの譲渡会は、限られた地域でのみ行われることが多く、それを宣伝する方法もコンビニの壁や電柱にビラを貼るといった原始的な方法が多く見受けられます。当アプリケーションが実装できれば、より円滑に猫の譲渡ができると思っております。
# :mag: DEMO

### 新規登録ページ

### トップページ（紹介されている猫ちゃん一覧）

### 猫ちゃん詳細ページ

### 猫ちゃん詳細編集ページ

### ユーザー詳細ページ

### ユーザー詳細編集ページ（パスワードを除く）

### チャットページ

# :bowtie: 工夫したポイント
- トップページで容易に猫が探せるよう、各猫写真の下に最低限必要な情報を記載した（年齢/種類/性別/所在地/保護主）。
- userモデルで、パスワードに対しupdate_without validationをかけることで、ユーザー情報をパスワードなしで行えるようにした。
- チャット機能において、「チャットする」ボタンからすぐにチャットできるよう、chatsコントローラーにルームの自動生成の記述をした。
- 可読性向上を意識し、renderオプションや各モデルにおけるwith_optionsの使用などを心がけた。

# :blue_book: 使用環境（開発環境）

## バックエンド
Ruby, Ruby on rails

## フロントエンド
Scss,JavaScript, Ajax

## データベース
MySQL, SequelPro

## インフラ
AWS(EC2),Capistrano

## Webサーバー（本番環境）
Nginx

## アプリケーションサーバー（本番環境）
Unicorn

## ソース管理
GitHub, GitHubDesktop

## テスト
RSpec

## エディタ
VSCode

# :memo: 課題や今後実装したい機能
- チャット機能の非同期通信化(例えばfetchなど)
- 画像サイズの統一化
- トップページでの検索機能の実装
- ユーザーの新規登録画面や猫の新規投稿画面・チャット画面がデフォルトに近い形のため、随時CSSを修正
- 猫の詳細画面にいいね機能を追加（Jquery）

# :thought_balloon: DB設計

## usersテーブル

| Column             | Type       | Options                            |
| ------------------ | ---------- | ---------------------------------- |
| email              | string     | null: false                        |
| encrypted_password | string     | null: false                        |
| nickname           | string     | null: false                        |
| profile            | text       | null: false                        |

### Association

- has_many :cats
- has_many :user_rooms
- has_many :rooms, through: :user_rooms
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

- has_many :user_rooms, dependent: :destroy
- has_many :users, through: :user_rooms
- has_many :chats, dependent: :destroy

# user_roomsテーブル

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
