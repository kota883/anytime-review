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
