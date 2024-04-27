# テストすべき項目

自分が追加した機能について正しい動作ができているかすべて確認するイメージ。

validationなどrailsで設定する機能のテストは優先度が低そう。

モデル、コントローラー、ビューで別々にテストする必要あり。
- ユーザー登録　成功・失敗
- ユーザー編集　成功・失敗
- ユーザー削除
- (フラッシュメッセージのテスト)
- タグとの関連付けが正しく行われているか
- 認証されたユーザーのみ記事を投稿・削除・編集ができるか
