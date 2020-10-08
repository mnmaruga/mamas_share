# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...




# アプリケーション名

ママ's share

# アプリケーション概要

女性が子育ての悩みや出産に関する悩みなどを気軽にシェアし、ママ同士でアドバイスし合うことができるアプリ。

# URL

https://mamas-share.herokuapp.com/

# テスト用アカウント

* Basic認証
  - ID: mamas
  - Password: 0501
* テスト用アカウント
  - Email: test@test
  - Password: test1234

# 利用方法

- トップページ右上のログイン(または新規登録)リンクからサインイン(またはサインアップ)を行う。サインイン状態でないとトップページ以外のページを見ることができない。
- トップページから相談ルームを選択し、閲覧したい相談内容のルームに遷移する。
- 相談を投稿したい場合は、「投稿する」のボタンから新規投稿ページに遷移し、フォームから投稿を行う。
- 投稿の詳細とコメントを閲覧したい場合は相談ルームの閲覧したい投稿をクリックし、投稿詳細ページへ遷移する。
- コメントを投稿したい場合は、フォームから投稿する。投稿すると、コメント一覧に表示される。

# 目指した課題解決

出産や育児を経験する女性の精神的負担を少しでも減らすために、「初めての出産や育児でわからないことや困ったことを気軽に誰かに相談したい」「身近に相談できる相手がいない」「家族や友人に相談しづらい悩みがある」という課題の解決を目指した。

# 洗い出した要件

### ユーザー管理機能

サインアップ・サインイン・サインアウトができる。deviseのライブラリを用いた実装。

### 相談投稿機能

ユーザーは、相談内容に関係する相談ルームをトップページから選美、遷移した相談ルームで投稿できる。

### 投稿詳細表示機能

各相談ルームの投稿一覧から投稿を選んでクリックすると、投稿の詳細ページへ遷移する。投稿内容、投稿したユーザー、リアクション数、コメント投稿フォーム、コメント一覧が表示される。

### コメント機能

ユーザーは、他ユーザーや自分自身の投稿に対してコメントができる。

### リアクション機能

ユーザーは、他ユーザーの投稿に三種類のリアクションを示すことができる。

### ユーザー情報詳細表示機能

マイページの表示ができる。各ページでのユーザー名をクリックすると、ユーザーのプロフィールなどが表示できる。

### 投稿検索機能

各相談ルームページにて、投稿をキーワードで検索できる。

### 投稿の編集・削除機能

自分の投稿を編集・削除できる。

# 実装した機能について

### ユーザー管理機能

- サインアップ・サインイン・サインアウトができる。
- 各ページにログインの有無によって適したボタンが表示される。
- ユーザー登録の際は、Eメール、パスワードの他に、ニックネーム、年齢、ステータス、プロフィールを登録できるようにする。

[ユーザー管理機能GIF](https://i.gyazo.com/faae663cb08c7d3656f28ee5f5cba8fa.mp4)

### 相談投稿機能

- 相談内容に関係する相談ルームを選んで投稿できる。
- 相談ルームに表示される投稿には、相談のタイトル文と内容、投稿したユーザーが投稿毎一覧で表示される。
- 投稿をクリックすると、投稿詳細ページに遷移する。
- 各相談ルームには、投稿を検索するフォームがある。

[相談投稿機能GIF](https://i.gyazo.com/1e1e41e6a0a57c888d7ec30108c4a9d5.mp4)

### 投稿詳細表示機能

- 投稿内容、投稿したユーザー、リアクション数、コメント投稿フォーム、コメント一覧が表示される。

[投稿詳細表示機能GIF](https://i.gyazo.com/20a06189498facd6bf48cd9b579da3cd.mp4)

### コメント機能

- コメントは自分の投稿にも他ユーザーの投稿にも投稿できる。
- コメントそれぞれにコメントしたユーザーとコメントidが表示される。

[コメント機能GIF](https://i.gyazo.com/e6d191aff0fc94b0f18172df870b1a48.mp4)

# 実装予定の機能

### リアクション機能

- ユーザーは、他ユーザーの投稿にのみリアクションができる。
- リアクションは「わかる」「がんばれ」「ふむふむ」の３つ。
- 投稿詳細ページにはリアクションの数が表示される。

### ユーザー情報詳細表示機能

- ログイン状態で各ページ右上にマイページへのリンクが表示される。
- マイページには、ニックネーム、年齢、ステータス、プロフィールが表示される。
- 各ページにて、他ユーザーのアカウント名をくりっックすると、そのユーザーのニックネーム、年齢、ステータス、プロフィールが表示される。

### 投稿検索機能

- 各相談ルームページにて、投稿をキーワードで検索できるフォームがある。
- 検索結果は上から投稿日時の新しい順で表示される。

### 投稿の編集・削除機能

- 投稿詳細ページには投稿の編集・削除を行えるボタンがある。
- 編集ボタンをクリックすると、編集ページに遷移し、編集が行える。
- 編集せずに保存しても、投稿内容が変わらずに保存される。

# データベース設計

[ER図](https://i.gyazo.com/f40a6f6090e8e96de5d14b8b14df3ae4.png)

## usersテーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| nickname | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| age      | integer |             |
| status   | integer |             |
| profile  | text    | null: false |

### Association

- has_many :posts
- has_many :comments

## postsテーブル

| Column  | Type       | Option                         |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| room    | integer    | null: false                    |
| problem | text       | null: false                    |
| detail  | text       | null: false                    |
| react1  | integer    |                                |
| react2  | integer    |                                |
| react3  | integer    |                                |

### Association

- belongs_to :user
- has_many :comments

## commentsテーブル

| Column  | Type       | Option                         |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| post    | references | null: false, foreign_key: true |
| comment | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :post

# ローカルでの動作方法

#### 開発環境
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello

#### 動作方法
```
$ git clone https://github.com/<user_name>/<project_name>.git
```
でローカル環境にgithubのリポジトリを複製する。

```
$ cd <project_dir>
$ bundle install
```
で必要なGemをインストールする。

```
$ rake db:create
$ rake db:migrate
```
でデータベースを作成し、テーブルを生成する。

```
$ rails s
```
でサーバーを立ち上げ、ブラウザでローカルホストにアクセスする。