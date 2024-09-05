## アプリ名「道の駅めぐるメモリー」、略して「道めぐ！」

■ サービス概要
「道の駅めぐるメモリー」は、ユーザーが日本の「道の駅」を訪問し、写真スタンプやメモを記録できるアプリです。
ユーザーは訪問した道の駅の情報を整理し、購入記録を管理できます。
旅行の思い出を簡単に振り返ることができます。

■ このサービスへの思い・作りたい理由
道の駅巡りをした際に撮った写真や購入品の思い出を後で振り返ろうとしたが、どこの道の駅で撮った写真なのか、何を感じたのか覚えていないことに気付きました。旅行の思い出をいつまでも忘れずに残したいと思い、このサービスを思いつきました。
また、スタンプラリー形式にすることで、道の駅巡りをもっと楽しんでもらいたいという思いも込めています。

■ ユーザー層について
道の駅巡りが趣味の人、家族で道の駅を訪れる機会が多い人、
新しい場所を訪れるのが好きで旅の思い出を記録したい人。

■ サービスの利用イメージ
ユーザーは道の駅を訪れ、写真スタンプを取得し、購入品やメモを記録します。
スタンプラリーを楽しみながら、数年後にも思い出を振り返ることができます。

■ ユーザーの獲得について
**道の駅巡りが好きな方**: 道の駅関連のSNSやコミュニティでの宣伝、コラボイベントの開催
**旅行好きな人**: 旅行ブログやサイトでの紹介、インフルエンサーとの連携
**家族連れ**: ファミリー向けのイベントやブログでのプロモーション、教育機関との協力

■ サービスの差別化ポイント・推しポイント
スタンプラリー機能と写真日記機能を組み合わせることで、ユーザーに楽しい体験と便利な記録を提供します。
情報管理と共有: 道の駅ごとの情報管理やスタンプ機能があり、家族や友人と簡単に共有できます。


◆◆追記◆◆
・道の駅データ収集は道の駅公式サイトや関連団体が提供しているAPIがあり利用可能の場合そちらを使用。
　国土交通省が提供する国土数値情報ダウンロードサイトの道の駅のデータを入手しようと考えています。
　https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-P35.html#!

・道の駅API
　https://it-social.net/roadside_station/indexs.html

・Yahoo社が提供するYOLP（Yahoo!ローカルサーチAPI、Yahoo!ジオコーダAPI）

・google maps platformの（Google Places API、Maps JavaScript API）を使用することも視野に入れています。
こちらを使用する場合、料金が発生するので、範囲を全国ではなく一部地域に絞ることも考えています。

・スタンプはこちらの「Arctext.js」というスクリプトを使用して作成を考えています。
　https://tympanus.net/codrops/2012/01/24/arctext-js-curving-text-with-css3-and-jquery/


・道の駅の検索機能
・都道府県から地方で絞り、さらに県ごとに選択で検索でるようにする。
（例）都道府県　→　近畿地方　→　大阪府　→　検索結果
・1文字入力するたびに、候補が表示されるオートコンプリート検索
・施設設備・フリーワードで絞り込む機能を付けたいと考えています。
・google maps platform（Google Maps API）を使用の場合、地図から道の駅検索できるようにします。


・スタンプラリー機能について。
ユーザーが道の駅の写真をアップロード　→　スタンプラリーデザインありなしを選択　→　スタンプラリーが作成

※ありなし選択は道の駅のスタンプ画像をアップロードしてくる可能性を考えてます。
デザインは統一で地域ごとにカラーで分けようと思います。

API以外に使用予定の技術の詳細（DBやバックエンド、フロントエンド、デプロイ先など）を記載頂けたらと思います。


◆◆使用予定の技術◆◆
・データベース
　PostgreSQL、MySQL

・バックエンド
　Ruby 
　Ruby on Rails
　Devise
　Active Storage

・フロントエンド
　HTML
　CSS
　JavaScript
　jQuery

・デプロイ先
　プラットフォーム: Render.com または　Heroku　、 AWS　を使用



###  機能候補　

### MVPリリース時に作りたい機能

1. **ユーザー登録とログイン**
    - 新規ユーザー登録機能
    - ログイン・ログアウト機能

2. **道の駅情報の管理**
    - 道の駅の基本情報（名前、所在地、写真など）の表示
    - スタンプ画像の保存と表示

3. **写真アップロードと管理**
    - 写真のアップロード機能
    - 写真の表示・削除機能

4. **メモ機能**
    - 各道の駅に関するメモの入力・保存・編集・削除機能

5. **道の駅の検索機能**
    - 名前、所在地、カテゴリなどで道の駅を検索する機能


### 本リリースまでに作りたい機能

使用サンプル例追加

道の駅のお気に入り機能

カレンダー機能

一定数のスタンプを集めるとバッジがもらえる機能

 いいね機能


### ■ 機能の実装方針予定

Xへの共有

利用規約、お問い合わせ、プライバシーポリシー

オフラインモードでも登録できるように

道の駅にチェックイン機能

画面遷移図
https://www.figma.com/design/F6owR6Vs7ioyjZcSaOw8ss/%E3%82%AA%E3%83%AA%E3%82%B8%E3%83%8A%E3%83%AB%E3%82%A2%E3%83%97%E3%83%AA?t=595wkLAk0GuQO58h-0

ER図 
https://drive.google.com/file/d/1f3tmrmFHdcdsCSTPxHu2yXNsexlVCAIO/view?usp=sharing
