## usersテーブル

| Column          | Type    | Option     |
|-----------------|---------|------------|
| nickname        | string  | null: false|
| first_name      | string  | null: false|
| last_name       | string  | null: false|
| email           | string  | null: false|
| password        | string  | null: false|

### Association
has_many :templates
has_many :orders

## templatesテーブル

| Column          | Type    | Option     |
|-----------------|---------|------------|
| template_explain| string  | null: false|
| category        | bigint  | null: false|
| template_image  | string  | null: false|
| user_id         | bigint  | null: false|



### Association
belongs_to :user
has_one :order


## ordersテーブル

| Column          | Type    | Option     |
|-----------------|---------|------------|
| order_message   | string  | null: false|
| template_id     | integer | null: false|
| category_id     | integer | null: false|
|  order_message  | string  | null: false|

### Association
belongs_to :template
belongs_to :user

