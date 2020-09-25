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
| room    | string     | null: false                    |
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

## Association

- belongs_to :user
- belongs_to :post