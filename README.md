# アプリケーション名
「自己分析診断アプリ」

# アプリケーション概要
複数の質問に回答するだけで、簡易的に自己分析の診断ができます

# URL
https://analysis-app-37848.herokuapp.com/

## ユーザー認証コード
- ユーザー名：johnta
- パスワード：johnta123

## 管理者用アカウント
- メールアドレス：kanri@com
- パスワード：kanri123
- ユーザーID:44

## ユーザーアカウント
- メールアドレス：testtest@com
- パスワード：test123

# 要件定義

# 実装予定の機能
- 
- 



# テーブル設計

## users テーブル

| Column                  | Type   | Options                   |
| ----------------------- | ------ | ------------------------- |
| name                    | string | null: false               |
| email                   | string | null: false, unique: true |
| encrypted_password      | string | null: false               |
| company_name            | string | null: false               |
| position                | string | null: false               |
| occupation              | string | null: false               |

### Association
 has_one :carrier_anchor

## carrier_anchors テーブル
| Column             | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| question_1         | integer    | null: false                    |
| question_2         | integer    | null: false                    |
| question_3         | integer    | null: false                    |
| question_4         | integer    | null: false                    |
| question_5         | integer    | null: false                    |
| question_6         | integer    | null: false                    |
| question_7         | integer    | null: false                    |
| question_8         | integer    | null: false                    |
| question_9         | integer    | null: false                    |
| question_10        | integer    | null: false                    |
| question_11        | integer    | null: false                    |
| question_12        | integer    | null: false                    |
| question_13        | integer    | null: false                    |
| question_14        | integer    | null: false                    |
| question_15        | integer    | null: false                    |
| question_16        | integer    | null: false                    |
| question_17        | integer    | null: false                    |
| question_18        | integer    | null: false                    |
| question_19        | integer    | null: false                    |
| question_20        | integer    | null: false                    |
| question_21        | integer    | null: false                    |
| question_22        | integer    | null: false                    |
| question_23        | integer    | null: false                    |
| question_24        | integer    | null: false                    |
| question_25        | integer    | null: false                    |
| question_26        | integer    | null: false                    |
| question_27        | integer    | null: false                    |
| question_28        | integer    | null: false                    |
| question_29        | integer    | null: false                    |
| question_30        | integer    | null: false                    |
| question_31        | integer    | null: false                    |
| question_32        | integer    | null: false                    |
| question_33        | integer    | null: false                    |
| question_34        | integer    | null: false                    |
| question_35        | integer    | null: false                    |
| question_36        | integer    | null: false                    |
| question_37        | integer    | null: false                    |
| question_38        | integer    | null: false                    |
| question_39        | integer    | null: false                    |
| question_40        | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user

