# Anytime-Review

# 概要
スポーツジム「エニタイム」の口コミアプリです。  
エニタイムを利用されている方が、店舗の特徴を押さえた口コミができます。  
エニタイムの会員、または入会を考えている方で「どこの店舗が自分に合っているのか知りたい」そんなときに使えるアプリにしました。  

# 本番環境
https://anytime-review.herokuapp.com/

# ログイン情報（テスト用）
* メールアドレス:test1@test.com
* パスワード:test123

# 利用方法
## サインアップ
トップ画面右上の「新規登録」から会員登録してください。  
※企業担当の方は下記テストアカウントからログインいただけます
* メールアドレス:test1@test.com
* パスワード:test123

## 口コミ投稿
ログイン状態になると、右上に表示される「投稿する」で投稿画面に入れます。  

### ＜入力項目＞
* 店舗の名前
* 設備の充実度
* 客層
* アクセスのしやすさ
* 都道府県
* 駐輪場の有無
* 駐車場の有無
* 混む時間帯
* スタッフ対応
* 口コミ自由記入欄

入力後に「保存する」を押すと投稿できます。

## 口コミ詳細画面
トップページから投稿されている口コミを押すと口コミ詳細画面へ移動できます。  
自分の投稿であれば編集・削除ができます。

# 制作背景（意図）
### ＜作成したきっかけ＞
エニタイムの会員、または入会を考えている方で、「公式HPや店舗のインスタグラムだけではどこの店舗が自分にあっているの分からない…。」
そんな思いをしている方がたくさんいることに気づいたことがきっかけとなりました。
### ＜解決したい課題＞
課題は、実際に店舗に足を運ばずに店舗の雰囲気などが分かるようにすることです。
### ＜解決策＞
エニタイム各店舗の口コミアプリを開発しました。  
口コミの投稿・閲覧ができます。  
気になっている店舗の口コミに対してコメントできるようにコメント機能を実装しました。

# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/2128b940d5dec89edd2b7def80452a8b.gif)](https://gyazo.com/2128b940d5dec89edd2b7def80452a8b)

## 新規会員ユーザー登録ページ
[![Image from Gyazo](https://i.gyazo.com/d46fc93dfb0a9744dd31fe0077c592e7.png)](https://gyazo.com/d46fc93dfb0a9744dd31fe0077c592e7)

## 口コミ投稿詳細ページ
[![Image from Gyazo](https://i.gyazo.com/907bd40e12204fb3a3b723e8577727d2.gif)](https://gyazo.com/907bd40e12204fb3a3b723e8577727d2)

## 新規口コミ投稿ページ
[![Image from Gyazo](https://i.gyazo.com/c06d03fea7a8226046a9b1c2aaa41a0a.gif)](https://gyazo.com/c06d03fea7a8226046a9b1c2aaa41a0a)

# 使用技術（開発環境）
## バックエンド
Ruby, Ruby on Rails
## フロントエンド
Html, Sass, Javascript, JQuery, Bootstrap
## データベース
MySQL, SequelPro
## サーバー（本番環境）
Heroku
## ソース管理
GitHub, GitHubDesktop
## テスト
RSpec
## エディタ
VScode

# 今後実装したい機能
* ユーザー詳細機能
* いいね機能
* ページネーション機能
* タグ付け機能
* SNS認証機能

# DB設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| age                | integer | null: false               |
| gender             | integer | null: false               |

### Association

- has_many :comments
- has_many :reviews

## reviews テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| store_name         | string     | null: false                    |
| facility_id        | integer    | null: false                    |
| customer_base_id   | integer    | null: false                    |
| access_id          | integer    | null: false                    |
| prefectures_id     | integer    | null: false                    |
| bicycle_parking_id | integer    | null: false                    |
| parking_lot_id     | integer    | null: false                    |
| crowded_time_id    | integer    |                                |
| staff_id           | integer    |                                |
| text               | text       |                                |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| review    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :review
