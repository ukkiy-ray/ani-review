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


#  このアプリケーション開発で目指した課題解決
- 私はこのアプリケーションを通し、日本の代表的なサブカルチャーであるアニメに関するレビューや情報を、誰もが気軽に収集、共有、投稿することを可能にし、より多くの人にアニメの魅力を伝え、更なる日本のアニメ文化の発展に貢献することを目指して開発しました。


# URL

**このアプリケーションにはBASIC認証を設けてあります。** ご利用の際はお手数ですが以下のIDとPasswordをアクセス時に記入の上ご利用ください。
* ID: utsuki
* Pass: 0213

- https://ani-review.herokuapp.com/
**Google Chromeを推奨ブラウザとしております。**

### テスト用ユーザーアカウント

- 複数用意しています。通知機能等を確認する際にご利用ください。

* Email: test@gmail.com
* Password: test00

* Email: yamada@gmail.com
* Password: yamada00

* Email: tom@gmail.com
* Password: tomtom01

### 使用環境によってビューファイルのレイアウトが崩れる場合がありますが、私のフロントに関する知識と技術不足によるものです。こちらに関しましては随時修正と更新を行って参ります。ご了承頂きますようお願い申し上げます。


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

17. サイドバー下部の「TIME LINE」の表示をクリックすると、フォローしているユーザーのみの投稿が最新順に10件一覧表示されます。

### アカウントを作成し記事を新規投稿した方は、必ずログアウト前に投稿詳細ページより投稿の削除を行って頂くようお願い致します。

[![Image from Gyazo](https://i.gyazo.com/487050a0e84d08d205d7929e561d1f2b.gif)](https://gyazo.com/487050a0e84d08d205d7929e561d1f2b)

### 機能動作確認後は、必ずヘッダー右部分の「ログアウト」ボタンからログアウト処理を行っていただくようお願いいたします。


# 各機能の要件定義

## 新規レビュー投稿機能（カテゴリー、タグ付け機能）
### 目的
- アニメのレビューをカテゴリー別で分け、タグを付けることで検索するときに探しやすくするため。

### 詳細
- 「タイトル」、「内容本文」、「カテゴリー」、「タグ」をそれぞれのフォームに入力させ、「投稿する」ボタンを押すことで投稿が完了する。
- 「内容本文」は1000文字までにバリデーションを設け、改行を反映させる。
- 「カテゴリー」は予め用意してあるジャンルで選択制にするため Active Hashを用いる。
- 「タグ」は逐次検索機能を使って検索候補等を表示させるため別テーブルに保存する。(form object)

### Use Case
- ユーザーがログインしていることが前提
- 一覧ページの「New Post」の表示をクリックすると新規投稿ページに遷移する。
- 「タグ」は新たに作成することができ、既に存在する場合はフォームの下に表示される候補を押すことで反映させることができる。

### 見積もり時間
- 5時間

## フリーワード検索機能 / カテゴリー別絞り込み機能
### 目的
- 数あるレビューの中からユーザーが探したい記事を速やかに見つけられるようにするため。

### 詳細
- ヘッダーに検索フォームを設ける。
- 「タイトル」、「本文に含まれる文字列」、「タグの名前」のいずれかを入力しreturn(enter)を押すことで検索する。
- カテゴリーはより検索し易いようにサイドバーに設置し、選択、クリックすることで絞り込み検索ができるようにする。
- それぞれの検索結果のページにはパンくずリストを表示させる。
- 検索結果が8件以上ある場合はページネーションによって分ける。(kaminari)

### Use Case
- 全ユーザーはログインしていなくてもフォームでの検索、サイドバーからのカテゴリー絞り込み機能を利用できる。

### 見積もり時間
- 3時間

## いいね機能 / いいねランキング一覧表示機能 / 自分がいいねした記事の一覧表示機能
### 目的
- ユーザーが良いと思った投稿にマークを付け、該当記事の著者に評価したという情報を伝えることで投稿するモチベーションの向上につなげるため。
- いいね数をランキングで表示させるページを設けることでユーザー同士の競争心をあおり投稿内容の質を向上させるため。
- いいねした記事をブックマークとしてマイページから閲覧できるようにするため。

### 詳細
- いいね機能は非同期通信にするため、jQueryを導入し、Ajaxで実装する。
- ハートマークの表示を押すことでいいねを付けたり外したりすることができ、その動作によっていいねのカウントも変動させる。
- いいねランキング一覧表示は全ユーザー閲覧可能にするため、リンクをサイドバーに設置する。
- 自分がいいねした記事はマイページにリンクを設置する。
- 他のユーザーのいいねした投稿一覧も相手のユーザーページのリンクから閲覧できる。(但しユーザーがログインしているときに限る)
- いいねした情報は相手に通知させる。

### Use Case
- いいねする、またはいいねした記事を閲覧するためにはユーザーはログインしなければならない。
- ログインしていなくてもサイドバーのリンクからいいね数ランキング一覧は閲覧できる。
- 他のユーザーが自分の投稿をいいねすると自分にその情報の通知が届く。

### 見積もり時間
- 3時間

## フォロー機能 / フォローユーザー一覧、フォロワー一覧表示機能
### 目的
- フォロー機能を実装することで好みのユーザーの投稿を即座に閲覧できるようにするため。

### 詳細
- フォロー機能は非同期通信にするため、jQueryを導入し、Ajaxで実装する。
- ユーザー詳細ページの「フォローする」表示をクリックすることでフォローができ、カウントも非同期で変動させる。
- ユーザー詳細ページ若しくはマイページからフォローしているユーザー一覧、フォロワー一覧のページに遷移でき、閲覧できるようにする。
- フォローした情報は相手に通知させる。

### Use Case
- ユーザーがログインしていることが前提
- 他のユーザーが自分をフォローすると自分にその情報の通知が届く。

### 見積もり時間
- 3時間

## 通知機能
### 目的
- いいねとフォロー情報の通知機能を実装するため。

### 詳細
- 他のユーザーにいいねされると、通知が届く。
- 他のユーザーにフォローされると、通知が届く。
- 通知メッセージの横には何分前の通知なのかを表示させる。
- 削除ボタンで通知を一括削除させる。

### Use Case
- ユーザーがログインしていることが前提
- ヘッダーのベルマークをクリックすると自分の通知ページに遷移する。
- 通知情報が存在する場合、マイページとヘッダーに通知数が表示される。
- 通知一覧の青い文字をクリックするとそれぞれの情報のページに遷移することができる。
- 「通知削除」のボタンをクリックすると表示されている通知を一括削除することができる。

### 見積もり時間
- 3時間

## タイムライン機能（フォローしたユーザーの投稿のみ表示させる）
### 目的
- フォロー機能がフォローするという行為のみで完結してしまうのを防ぐため。
- フォローしたユーザーの投稿のみを表示させることでユーザーの検索の手間を省くため。

### 詳細
- サイドバーにリンクを設置する。
- フォローしたユーザーの投稿は最新順に10件表示させる。

### Use Case
- ユーザーがログインし、他のユーザーを1人以上フォローしていることが前提
- サイドバー下部の「TIME LINE」の表示をクリックすると、該当ページに遷移することができる。

### 見積もり時間
- 2時間

## エラー文の日本語表示機能
### 目的
- フォーム入力でバリデーションに引っかかった際のエラー文を日本語で表示させるため。

### 詳細
- ユーザー登録フォーム、ログインフォーム、新規投稿フォームでバリデーションに引っかかると日本語でエラー文を表示させる。

### 見積もり時間
- 1時間


# 今後実装予定の機能
- 投稿内容編集機能...フォームオブジェクトによる複数モデルへの情報同時更新機能が未だ実装できていないため、今後実装する予定です。


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


# ローカルでの動作方法

* Ruby version
2.6.5

* Ruby on Rails version
6.0.3.4

```ターミナル
  % git clone https://github.com/ukkiy-ray/ani-review.git
  % cd ani-review
  % bundle install
  % yarn install
  % rails db:create
  % rails db:migrate
```