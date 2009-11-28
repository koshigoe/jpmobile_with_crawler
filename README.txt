= jpmobile_with_crawler

* http://github.com/koshigoe/jpmobile_with_crawler/tree/master

== DESCRIPTION:

jpmobile にモバイル用検索クローラを追加するもの。

== FEATURES/PROBLEMS:

* 実験的モジュール
* RubyForge に関する記述はダミー
* 今後は jpmobile に直接書き加えようと考えているため、こちらへの変更は行わない予定(いずれリポジトリを削除する)

== SYNOPSIS:

  require 'jpmobile_with_crawler'

== REQUIREMENTS:

* jpmobile (version 0.0.4)

== INSTALL:

  rake gem
  sudo gem install pkg/jpmobile_with_crawler-0.0.4.gem

== ChangeLog

* 2009/03/18
** jpmobile-0.0.4 対応
** 過去のバージョンと互換性を維持しない変更
*** Jpmobile::Mobile に追加していたメソッドの削除と名前変更
*** 常にモバイル用検索クローラへが有効になる様に変更
** テスト周りの修正

== LICENSE:

(The MIT License)

Copyright (c) 2008 koshigoe

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
