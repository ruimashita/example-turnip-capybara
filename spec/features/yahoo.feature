# encoding: utf-8
# language: ja

機能: yahoo

  シナリオ: 検索機能
    前提 "片山祐輔" がキーワード
    前提 "画像" が検索種別
    もし 検索種別をクリック
    ならば 一覧を表示
    もし 検索をクリック
    ならば 一覧を表示

  @javascript
  シナリオ: js検索機能
    前提 "田中角栄" がキーワード
    前提 "画像" が検索種別
    もし 検索種別をクリック
    ならば 一覧を表示
    もし 検索をクリック
    ならば 一覧を表示
