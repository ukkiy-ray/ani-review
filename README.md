# README


# アプリケーション名 / タイトル
- Ani Review


# アプリケーション概要
### ユーザー登録をしていなくても、下記の機能が利用可能です。
- 投稿詳細の閲覧機能
- 検索フォームからフリーワードでの検索機能、検索結果の閲覧
- サイドバーにあるカテゴリーからの検索、またはいいねランキングでの検索結果の閲覧
- ユーザー情報の閲覧(投稿した記事のみ)

### ユーザー登録が完了しログインすると、上記に加え、下記の機能が利用可能になります。
- 新規投稿機能、投稿削除機能
- いいね機能
- フォロー機能
- タイムライン機能(フォローしたユーザーの投稿のみ時系列順に一覧表示したページの閲覧)
- ユーザーのいいねした記事の閲覧
- フォローした、またはフォローされたユーザー一覧の閲覧
- いいねまたはフォローされた時の自分の通知情報の閲覧


# URL

**このアプリケーションにはBASIC認証を設けてあります。** ご利用の際はお手数ですが以下のIDとPasswordをアクセス時に記入の上ご利用ください。
* ID: utsuki
* Pass: 0213

- https://ani-review.herokuapp.com/

### テスト用ユーザーアカウント

- 複数用意しています。通知機能等を確認する際にご利用ください。

* Email: test@gmail.com
* Password: test00

* Email: yamada@gmail.com
* Password: yamada00

* Email: tom@gmail.com
* Password: tomtom01


# 利用方法
1. ヘッダーの右上の「新規登録」をクリックしユーザー登録をします。テストアカウントを利用する場合、ヘッダー右上の「ログイン」をクリックし記載されているEmailとPasswordを入力してログインしてください。

[![Image from Gyazo](https://i.gyazo.com/7733099acd5faabd007ae0e89489e6db.gif)](https://gyazo.com/7733099acd5faabd007ae0e89489e6db)

2. 新規投稿は、一覧ページの左上にある New Post をクリックすると新規投稿ページに遷移し、タイトル、投稿内容、タグを入力し、カテゴリーを選択後、「投稿する」ボタンをクリックすると投稿できます。

3. タグ入力の際、入力した文字列を含むタグが既に存在する場合フォームの下に逐次検索による候補が表示され、候補を押すとそのままタグを反映できます。

[![Image from Gyazo](https://i.gyazo.com/8fcf9eb48cc54723c4e8687efc3e7ba7.gif)](https://gyazo.com/8fcf9eb48cc54723c4e8687efc3e7ba7)

4. 投稿を検索する場合、ヘッダーにあるフォームにてフリーワード（タイトル、タグ、投稿内容に含まれる文字）で検索でき、入力した文字が含まれる検索結果が一覧で表示されます。

[![Image from Gyazo](https://i.gyazo.com/742aa86f0d5c390124ca427fd05b4c44.gif)](https://gyazo.com/742aa86f0d5c390124ca427fd05b4c44)

5. サイドバーにある任意のカテゴリーをクリックすると、そのカテゴリーに紐付いた投稿が一覧で表示されます。

[![Image from Gyazo](https://i.gyazo.com/c001210d33603f9e62e8cdf4bf9e5177.gif)](https://gyazo.com/c001210d33603f9e62e8cdf4bf9e5177)

6. サイドバー下部のいいねランキングの表示をクリックするといいね数の降順で一覧が表示されます。

[![Image from Gyazo](https://i.gyazo.com/ca7e10572f7fa745172ded9734a87a1e.gif)](https://gyazo.com/ca7e10572f7fa745172ded9734a87a1e)

7. 一覧が表示されている各投稿の左上にあるタイトルをクリックすると、投稿詳細ページに遷移します。

8. 一覧が表示されている各投稿の右側（投稿詳細ページでは右下）にある灰色のハートマークをクリックすると、非同期でいいねすることができ、いいねのカウントが1上がります。また切り替わった赤いハートをクリックするといいねを外すことができます。カウントも1下がります。

[![Image from Gyazo](https://i.gyazo.com/7ddff2309701bb0248e4c5c16c393e31.gif)](https://gyazo.com/7ddff2309701bb0248e4c5c16c393e31)

9. 一覧が表示されている各投稿の左下（投稿詳細ページでは右上）にあるユーザー名をクリックするとその投稿の作成者のページに遷移します。

10. ユーザーのページの右上にある「フォローする」ボタンをクリックすると非同期でフォローすることができ、「フォローを解除する」ボタンをクリックするとフォローを解除することができます。

[![Image from Gyazo](https://i.gyazo.com/320cd508f1db45bd2fd7ff5749aba1ed.gif)](https://gyazo.com/320cd508f1db45bd2fd7ff5749aba1ed)

11. 9でクリックしたユーザーの名前が自分である場合、またはヘッダーの「こんにちは、○○さん」の表示をクリックすると、マイページに遷移します。

12. ユーザーの詳細ページやマイページの右上にある「フォロワー○人」のボタンをクリックすると、そのユーザーのフォロワーが一覧で表示される画面に遷移します。

13. ユーザーの詳細ページやマイページの右上にある「フォロー○人」のボタンをクリックすると、そのユーザーがフォローしているユーザーの一覧が表示される画面に遷移します。

[![Image from Gyazo](https://i.gyazo.com/386c65cc5c99fe3e7346e08346e51416.gif)](https://gyazo.com/386c65cc5c99fe3e7346e08346e51416)

14. ヘッダー中央付近にあるベルのマーク（新着通知がある場合マイページにも表示される）をクリックすると、他のユーザーから受けたいいね、もしくはフォローされたという通知情報を確認できます。

15. 通知の表示からも青い文字をクリックすることで相手のユーザーやいいねされた自分の投稿等それぞれの情報にアクセスすることが可能です。

16. 通知一覧ページ左上にある「通知削除」をクリックすると、一括で通知を全て削除することができます。

[![Image from Gyazo](https://i.gyazo.com/ebd232e07892b3a4f9f025946211aa8f.gif)](https://gyazo.com/ebd232e07892b3a4f9f025946211aa8f)

### 機能確認後は、必ずヘッダー部分の「ログアウト」ボタンからログアウト処理を行っていただくようお願いいたします。


#  目指した課題解決
- 私はこのアプリケーションを通し、日本の代表的なサブカルチャーであるアニメに関するレビューや情報を、誰もが気軽に収集、共有、投稿することを可能にし、より多くの人にアニメの魅力を伝え、更なる日本のアニメ文化の発展に貢献することを目指して開発しました。


# DB設計について
- 以下のテーブル設計とER図をもとに実装しました。

[![Image from Gyazo](https://i.gyazo.com/1dccaefad2617ca33c202ab12685c8a7.png)](https://gyazo.com/1dccaefad2617ca33c202ab12685c8a7)


## users テーブル

| Column    | Type     | Options     |
| --------- | -------- | ----------- |
| nickname  | string   | null: false |
| email     | string   | null: false |
| password  | string   | null: false |

### Association

- has_many :posts
- has_many :likes
- has_many :following_relationships
- has_many :following, through: :following_relationships
- has_many :follower_relationships
- has_many :followers, through: :follower_relationships
- has_many :active_notifications, foreign_key: 'visitor_id'
- has_many :passive_notifications, foreign_key: 'visited_id'


## posts テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| title        | string     | null: false                    |
| content      | text       | null: false                    |
| category_id  | integer    | null: false                    |
| user_id      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :post_tag_relations
- has_many :tags, through: :post_tag_relations
- has_many :likes
- has_many :notifications


## tags テーブル

| Column      | Type      | Options     |
| ----------- | --------- | ----------- |
| name        | string    | null: false |

### Association

- has_many :post_tag_relations
- has_many :posts, through: :post_tag_relations


## post_tag_relations テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| post_id      | references   | null: false, foreign_key: true |
| tag_id       | references   | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :tag


## likes テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| user_id      | references   | null: false, foreign_key: true |
| post_id      | references   | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user


## relationships テーブル

| Column        | Type      | Options     |
| ------------- | --------- | ----------- |
| following_id  | integer   | null: false |
| follower_id   | integer   | null: false |

### Association

- belongs_to :follower, class_name: "User"
- belongs_to :following, class_name: "User"


## notifications テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| visitor_id   | integer    | null: false                    |
| visited_id   | integer    | null: false                    |
| category_id  | integer    | null: false                    |
| post_id      | integer    | null: false                    |
| action       | string     | null: false, default: ''       |
| checked      | boolean    | null: false, default: false    |

- belongs_to :post, optional: true
- belongs_to :visitor, class_name: 'User', foreign_key: 'visitor_id', optional: true
- belongs_to :visited, class_name: 'User', foreign_key: 'visited_id', optional: true