# アプリケーション名
「自己分析診断アプリ」

# アプリケーション概要
複数の質問に回答するだけで、簡易的にキャリアに関する自己分析の診断ができます  
<働き方の価値観診断>  
40の質問に回答することにより、職業や職種、勤務先を選ぶ際の「判断基準」となる価値観を知ることができます。

# アプリケーションを作成した目的
家族が人材関係の会社を経営しており、現在紙で利用している診断ツールを
ホームページ上から簡単に診断できるようにしてほしいと依頼があり作成しました

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
| 機能 (大分類)             | 機能（小分類）  |        目的                |           要件                             |
| ------------------------|-------------- | --------------------------|--------------------------------------------| 
| 診断案内機能              | 一覧機能       | 診断一覧と診断結果一覧表示     | 各診断ツールへアクセスできるボタンの表示         |
|                         |               |                           | 各診断結果へアクセスできるボタンの表示           |
| キャリアアンカー診断機能    | 一覧機能       | 診断結果の表示               | 診断結果へアクセスできるボタンの表示         |
|                         |               |                           | 各ユーザーは自身の診断しかアクセスできない|
|                         |               |                           | 診断結果のない人には「診断結果はありません」を表示|
|                         |               |                           | 管理者は全ての診断結果へアクセスできる        |
|                         | 投稿機能       | 診断を投稿する               | ログイン者しかアクセスできない   |
|                         |               |                           | フォームから回答を入力でき、投稿ボタンで投稿できる|
|                         |               |                           | 回答はプルダウンから選択                |
|                         | 詳細機能       | 診断結果の詳細を表示する       | 投稿した40の回答を８項目に分類し、項目の高い順に左から棒グラフで表示   |
|                         |               |                           | 項目の高い上位３つのタイプの詳細を表示|
|                         |               |                           | カレントユーザーと管理者ユーザー以外がアクセスしようとすると、トップページへリダイレクトされる|
|                         | 編集機能       | 診断結果の編集               | 自身の診断にしかアクセスできない    |
|                         |               |                           | 詳細ページから編集ボタンをクリックすると編集フォームが表示される    |
|                         |               |                           | 回答を編集することができる                |
|                         |               |                           | 何も編集せずに編集した場合も、投稿内容が消えることはない               |
|                         |               |                           | カレントユーザーと管理者ユーザー以外がアクセスしようとすると、トップページへリダイレクトされる|
|                         | 削除機能       | 診断の削除                  | 詳細ページから削除ボタンをクリックすると、回答が削除される|
|                         |               |                           | 自身の結果しか削除できない                          |
|                         |               |                           | 削除ボタンクリック後はトップページに遷移する              |
|                         |               |                           | カレントユーザー以外が削除ページに遷移しようとするとトップページへリダイレクトされる|
|  ユーザー管理機能          | 新規登録機能    | 新規ユーザーの登録           | 必須項目を入力すると新規登録ができる             |
|                         | ログイン機能    | ログイン                    | 登録済みのユーザー名とパスワードを入力するとサインインできる|
|                        | ログアウト機能   | ログアウト                  | ログアウトボタンを押下するとログアウトしトップページへ遷移する|
| ヘッダー機能              | 表示機能       | ログイン可否による表示分け     | ログインしていない場合は、新規登録のボタンとログインボタンの表示 |
|                        |               |                           | ログインしている場合は、ユーザー名の表示とログアウトボタンの表示、トップページへの遷移ボタンの表示 |




# 実装予定の機能
- レスポンシブ対応
- 診断ツールの追加



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

