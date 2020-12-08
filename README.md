# テーブル設計

## user テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| nickname | string | null: false |

### Association

- has_many :tweets
- has_many :comments

## tweet テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| comment | text       | null: false                    |
| address | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comment テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| tweet  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweet