## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|item_explanation|text|null: false|
|image|string|null: false|

### Association
- has_many :item_imgs, dependent: :destroy


### Association
-  belongs_to :item

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|
|introduction|text||
|icon|string||

### Association
- has_many :comments,  dependent: :destroy

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|references|null: false, unique: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item
