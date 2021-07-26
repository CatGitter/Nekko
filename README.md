![de4adfaa795b14a44397203480a0830f](https://user-images.githubusercontent.com/84962058/126944502-a8d145a1-bc94-4fd3-b6d7-5682cbac0b25.gif)
:small_red_triangle_down:ローカル環境下での撮影のため、本番環境とは異なる表示です。  
 なお、本番環境では一定時間経過すると画像が表示されなくなりますので、ご注意ください。


# :smirk_cat: アプリ名
## Nekko
ネットで猫を譲りたい人・引き取りたい人を繋ぐ意を込めました。  
（ Nekko = Neko + Net ）

# :scroll: 概要
**猫を飼いたい人と引き渡したい人を繋ぐアプリケーション**です。  
猫引き取りたい人は、トップページの一覧から気になる猫を探し、その猫を保護している人とチャットでやり取りすることができます。  
一方で猫を引き渡したい人は、新規投稿画面から新しい猫の情報を発信することができます。

# :globe_with_meridians: 本番環境（URL）
http://13.230.7.134/

ログイン情報

- テストアカウント①  
メールアドレス：test@test.com  
   パスワード：111aaA

- テストアカウント②  
メールアドレス：aiueo@aui.com  
   パスワード：111aaA

# :arrow_down: 使用法
<code> $ git clone https://github.com/CatGitter/Nekko.git </code>

# :scroll: 制作背景（意図）
私の家では現在、知人から譲り受けた2匹の猫を飼っています。前々から猫を飼うことは家族間で話していたのですが、ペットショップで**お金を払って飼うことに抵抗**がありました。また、せっかく飼うなら**福祉的な観点からも貢献したい**と思っていました。そんな時、たまたま知人の家で子猫が生まれたことを聞き、譲り受けることを決意したのです。  
この出来事から（私の場合はタイミングが良かったものの）、私と同じように「売買でのペット飼育に抵抗がある」「動物擁護に少しでも貢献したい」と思っている人が他にもいるのではないかと考え、当アプリケーションを作成するに至りました。  
また保護猫などの譲渡会は、限られた地域でのみ行われることが多く、それを宣伝する方法もコンビニの壁や電柱にビラを貼るといった原始的な方法が多く見受けられます。当アプリケーションが実装できれば、より円滑に猫の譲渡ができると思っております。

# :arrows_counterclockwise: 画面遷移図
<img width="1075" alt="スクリーンショット 2021-07-21 12 55 46" src="https://user-images.githubusercontent.com/84962058/126428501-5ef3a806-ac48-40d1-a608-e8896f81d6fd.png">

# :mag: DEMO
:small_red_triangle_down:ローカル環境下での撮影のため、本番環境とは異なる表示です。  
 なお、本番環境では一定時間経過すると画像が表示されなくなりますので、ご注意ください。


### :ballot_box_with_check: 新規登録ページ
![55cdfcd327dee6551498b18989365b5f](https://user-images.githubusercontent.com/84962058/126437941-73b4eea2-d33d-43c8-ac2f-3568c554141e.gif)

### :ballot_box_with_check: 新規猫ちゃん投稿ページ
![81fa6b1ffbd9af4d40927bf642bd6afb](https://user-images.githubusercontent.com/84962058/126438271-a625b37b-1e41-4a0c-b3a8-ce5096d33a97.gif)

### :ballot_box_with_check: 猫ちゃん詳細ページ
![f761dc08f9bc51368be27472810487e1](https://user-images.githubusercontent.com/84962058/126438570-b69a6ffb-1d9e-4c04-9989-9083064fddc5.gif)

### :ballot_box_with_check: 猫ちゃん詳細編集ページ
![e19c2922c802a504169e59a2def2f945](https://user-images.githubusercontent.com/84962058/126438816-6d2fb39f-7cf7-4580-9c70-826da29d9ece.gif)

### :ballot_box_with_check: 投稿削除機能
![43c5f1464e80fec7e4d80c00e5f1f016](https://user-images.githubusercontent.com/84962058/126439309-6eb01ad6-8492-43e4-925c-0db753f30594.gif)

### :ballot_box_with_check: ユーザー詳細ページ
<img width="1440" alt="スクリーンショット 2021-07-21 15 12 51" src="https://user-images.githubusercontent.com/84962058/126440399-347698f8-cdf3-46fd-a429-111da7154b87.png">


### :ballot_box_with_check: ユーザー詳細編集ページ（パスワードを除く）
![c7159acb997125e933a4985a28777cb7](https://user-images.githubusercontent.com/84962058/126440238-ae030331-a7da-40ef-b68e-6561be00e59f.gif)


### :ballot_box_with_check: チャットページ
![b3bbdaf361a9b478bbedb86be75efe78](https://user-images.githubusercontent.com/84962058/126439599-d3917c8f-8476-47f8-a165-869ad06a9486.gif)

# :bowtie: 工夫したポイント
- トップページで容易に猫が探せるよう、各猫写真の下に最低限必要な情報を記載した（年齢/種類/性別/所在地/保護主）。
- userモデルで、パスワードに対しupdate_without validationをかけることで、ユーザー情報をパスワードなしで編集できるようにした。
- チャット機能において、「チャットする」ボタンからすぐにチャットできるよう、chatsコントローラーにルームの自動生成の記述をした。
- 可読性向上を意識し、renderオプションや各モデルにおけるwith_optionsの使用などを心がけた。

# :blue_book: 使用環境（開発環境）

## バックエンド
Ruby, Ruby on rails

## フロントエンド
Scss, JavaScript, Ajax

## データベース
MySQL, SequelPro

## インフラ
AWS(EC2), Capistrano

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
- 現状、どのユーザーも必ず1回は投稿しないと相手ユーザーとチャットができないため、ルーティング・chatコントローラーを修正する
- 画像サイズの統一化（ActiveStorageなど）
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

#### 最後まで読んで頂き、ありがとうございました :smile_cat:
