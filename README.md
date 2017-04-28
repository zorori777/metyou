データベース設計
===================

#テーブル

* users

* reviews

* memos


# users

|column |type    |options |
|:-----:|:------:|:------:|
| name  |string  |NOT NULL|

### アソシエーション
 has_many :memos

 has_many :reviews

# reviews

|column   |type     |option  |
|:-------:|:-------:|:------:|
|body     |text     |NOT NULL|
|rate     |integer  |NOT NULL|
|user_id  |integer  |NOT NULL|
|memos_id |integer  |NOT NULL|

### アソシエーション
  belongs_to :memo

  belongs_to :user

# memos

|column   |type     |option   |
|:-------:|:-------:|:-------:|
|body     |text     |         |
|people   |stiring  |         |
|image    |string   |         |

### アソシエーション
 has_many :reviews

 belongs_to :user


# place
|column  |type      |option   |
|:------:|:--------:|:-------:|
|name    |string    |NOT NULL |
|address |string    |NOT NULL |
|latitude|float     |NOT NULL |



