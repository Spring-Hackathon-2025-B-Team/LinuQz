INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e001',2,'カレントディレクトリに存在する「test」ディレクトリに
移動するコマンドを入力してください。','cd test','「cd ディレクトリ名」で、指定したディレクトリに移動
※cdはchange directoryの頭文字','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e002',2,'ホームディレクトリに移動するコマンドを入力してください。
（ホームディレクトリを明示的に指定してください）','cd ~','「cd ~」で、ホームディレクトリに移動
※「cd」だけでもホームディレクトリに移動可能','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e003',2,'移動する前にいたディレクトリに戻るコマンドを入力してください。','cd -','「cd -」で、移動する前にいたディレクトリに戻る','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e004',2,'1つ上の階層のディレクトリに移動するコマンドを入力してください。','cd ..','「cd ..」で、1つ上の階層のディレクトリに移動','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e005',2,'ルートディレクトリに移動するコマンドを入力してください。','cd /','「cd /」で、ルートディレクトリに移動','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e006',2,'ディレクトリの中に保存されているファイルやディレクトリの一覧を
表示するコマンドを入力してください。','ls','lsはlistの略称','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e007',2,'隠しファイルを含むすべてのファイルとディレクトリの一覧を
表示するコマンドを入力してください。','ls -a','「ls -a」で、隠しファイルを含む
すべてのファイルとディレクトリを表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e008',2,'ファイルやディレクトリの一覧を
ファイルやディレクトリの種類や所有者・所有グループなどの
詳細情報も含めて表示するためのコマンドを入力してください。','ls -l','「ls -l」で、ファイルやディレクトリの種類や
所有者・所有グループなどの詳細情報を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e009',2,'「test.txt」ファイルの中身を表示するコマンドを入力してください。','cat test.txt','「cat ファイル名」で、指定したファイルの中身を表示
※「concatenate」（つなげる・連結する）の一部をとってcat','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e010',2,'「test.txt」ファイルの中身を
連続したスペースやタブを1行にして
表示するコマンドを入力してください。','cat -s test.txt','「cat -s ファイル名」で、連続したスペースやタブを
1行にしてファイルの中身を表示
※無駄なスペースやタブが消えてスッキリ表示される','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e011',2,'「test.txt」ファイルの中身を
行番号をつけて表示するコマンドを入力してください。','cat -n test.txt','「cat -n ファイル名」で、行番号をつけてファイルの中身を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e012',2,'現在作業しているディレクトリの位置を
絶対パスで表示するコマンドを入力してください。','pwd','pwdは「print working directory」の略称','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e013',2,'カレントディレクトリに新しく「test」ディレクトリを
作成するコマンドを入力してください。','mkdir test','「mkdir ディレクトリ名」で
指定したディレクトリ名のディレクトリを作成','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e014',2,'新しく「test/test2」の階層でディレクトリを
作成するコマンドを入力してください。
ただし「test」ディレクトリは
カレントディレクトリに存在していないものとします。','mkdir -p test/test2','「mkdir -p 親ディレクトリ名/子ディレクトリ名」で
親ディレクトリが存在しなくてもまとめてディレクトリを作成','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e015',2,'「test.txt」ファイルを削除するコマンドを入力してください。','rm test.txt','「rm ファイル名」で、指定したファイル名のファイルを削除','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e016',2,'「test」ディレクトリを削除するコマンドを入力してください。','rm -r test','「rm -r ディレクトリ名」で
指定したディレクトリ名のディレクトリを
中身（ファイルやディレクトリなど）も含めて削除','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e017',2,'カレントディレクトリにある「test.txt」ファイルを
カレントディレクトリにある「test」ディレクトリ内に
移動するコマンドを入力してください。','mv test.txt test/','「mv ファイル名(ディレクトリ名) 移動先ディレクトリ名」で
ファイル(ディレクトリ)を移動先ディレクトリ内に移動
※移動先ディレクトリ名が存在しない場合は
　ファイル(ディレクトリ)の名前を変更','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e018',2,'カレントディレクトリにある「test.txt」ファイルの名前を
「test2.txt」に変更するコマンドを入力してください。','mv test.txt test2.txt','「mv ファイル名(ディレクトリ名) 移動先ディレクトリ名」で
ファイル(ディレクトリ)を移動先ディレクトリ内に移動
※移動先ディレクトリ名が存在しない場合は
　ファイル(ディレクトリ)の名前を変更','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e019',2,'カレントディレクトリにある「test.txt」ファイルを
カレントディレクトリにある「test」ディレクトリ内に
コピーするコマンドを入力してください。','cp test.txt test/','「cp ファイル名 コピー先ディレクトリ名」で
ファイルをコピー先ディレクトリ内にコピー
※コピー先ディレクトリ名が存在しない場合は
　同階層にファイルをコピー','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e020',2,'カレントディレクトリにある「test.txt」ファイルを
「test2.txt」という名前でカレントディレクトリに
コピーするコマンドを入力してください。','cp test.txt test2.txt','「cp ファイル名 コピー先ディレクトリ名」で
ファイルをコピー先ディレクトリ内にコピー
※コピー先ディレクトリ名が存在しない場合は
　同階層にファイルをコピー','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e021',2,'カレントディレクトリにある「test」ディレクトリを
カレントディレクトリにある「test2」ディレクトリ内に
コピーするコマンドを入力してください。','cp -r test test2/','「cp -r ディレクトリ名 コピー先ディレクトリ名」で
ディレクトリをコピー先ディレクトリ内にコピー
※コピー先ディレクトリ名が存在しない場合は
　同階層にディレクトリをコピー','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e022',2,'カレントディレクトリにある「test」ディレクトリを
カレントディレクトリに「test3」という名前で
コピーするコマンドを入力してください。','cp -r test test3','「cp -r ディレクトリ名 コピー先ディレクトリ名」で
ディレクトリをコピー先ディレクトリ内にコピー
※コピー先ディレクトリ名が存在しない場合は
　同階層にディレクトリをコピー','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e023',2,'「test.txt」ファイルを新規作成するコマンドを入力してください。','touch test.txt','「touch 新規ファイル名」で
現在のディレクトリに空の新規ファイルを作成','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e024',2,'「test.txt」ファイルの所有者を「user1」に
変更するコマンドを入力してください。','chown user1 test.txt','「chown [新しい所有者名] [ファイル名]」で変更
※「chown [新しい所有者名]:[新しいグループ名] [ファイル名]」で
　所有者とグループを同時に変更することも可能','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e025',2,'lsコマンドのプログラムファイルが置いてある
パスを表示するコマンドを入力してください。','which ls','例：「which ls」で
lsコマンドのプログラムファイルが置いてあるパスを確認可能','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e026',2,'「test.txt」ファイルに対して
所有者ユーザに実行権限を
付与するコマンドを入力してください。','chmod u+x test.txt','「chmod u+x test.txt」で
所有者ユーザの実行権限をtest.txtに付与','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e027',2,'「test.txt」ファイルに対して
所有グループに属するユーザに書き込み権限を
付与するコマンドを入力してください。','chmod g+w test.txt','「chmod g+w test.txt」で
所有グループに属するユーザの書き込み権限をtest.txtに付与','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e028',2,'「test.txt」ファイルに対して
その他ユーザに読み込み権限を
付与するコマンドを入力してください。','chmod o+r test.txt','「chmod o+r test.txt」で
その他ユーザの読み取り権限をtest.txtに付与','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e029',2,'「test.txt」ファイルに対して
すべてのユーザに実行権限を
付与するコマンドを入力してください。','chmod a+x test.txt','「chmod a+x test.txt」で
すべてのユーザの実行権限をtest.txtに付与','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e030',2,'「test.txt」ファイルに以下権限を付与するコマンドを入力してください。
・所有者ユーザに「読み取り/書き込み/実行」
・所有グループに属するユーザに「読み取り/書き込み」
・その他ユーザに「読み取り/実行」','chmod 765 test.txt','・7は「読み取り/書き込み/実行」がすべて可能
・6は「読み取り/書き込み」が可能
・5は「読み取り/実行」が可能','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e031',2,'カレントディレクトリ配下で「test.txt」を
ファイル検索するコマンドを入力してください。','find ./ -name test.txt','「find ディレクトリ名 -name ファイル名」で
指定したディレクトリを起点に、指定した名称のファイルを検索','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e032',2,'カレントディレクトリ配下で
「種別=ファイル」を検索するコマンドを入力してください。','find ./ -type f','「find ディレクトリ名 -type 種別」で
指定したディレクトリを起点に、指定した種別※を検索
※「d: ディレクトリ」「f: ファイル」「l: シンボリックリンク」','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e033',2,'カレントディレクトリ配下で
「種別=ディレクトリ」を検索するコマンドを入力してください。','find ./ -type d','「find ディレクトリ名 -type 種別」で
指定したディレクトリを起点に、指定した種別※を検索
※「d: ディレクトリ」「f: ファイル」「l: シンボリックリンク」','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e034',2,'カレントディレクトリ配下で
「種別=シンボリックリンク」を検索するコマンドを入力してください。','find ./ -type l','「find ディレクトリ名 -type 種別」で
指定したディレクトリを起点に、指定した種別※を検索
※「d: ディレクトリ」「f: ファイル」「l: シンボリックリンク」','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e035',2,'「test.txt」ファイル内で文字列「test」が存在するかを
調べるコマンドを入力してください。','grep test test.txt','「grep [オプション] 文字列 ファイル名」で
ファイル内に指定した文字列が存在するか確認','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e036',2,'「test.txt」ファイル内を昇順で並べ替えて表示する
コマンドを入力してください。','sort test.txt','「sort ファイル名」で
指定したファイルの中身（行）を昇順で並び替え','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e037',2,'「test.txt」ファイル内を降順で並べ替えて表示する
コマンドを入力してください。','sort -r test.txt','「sort -r ファイル名」で
指定したファイルの中身（行）を降順で並び替え','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e038',2,'「test.txt」ファイル内を昇順で並べ替えた上で
隣接する重複行を削除して表示するコマンドを入力してください。','sort test.txt | uniq','「sort ファイル名 | uniq」で
指定したファイルの中身を昇順で並び替えたあと、隣接する重複行を削除','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e039',2,'コンピュータに割り当てられているIPアドレスを確認する
コマンドを入力してください。','ifconfig','主に端末のIPアドレスやMACアドレスの確認に使用','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e040',2,'「link」という名前で
カレントディレクトリ内の「test」ディレクトリを参照する
シンボリックリンクを作成するコマンドを入力してください。','ln -s ./test/ link','「ln -s ファイルのパス リンクの名前」でシンボリックリンクを作成','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e041',2,'sshで以下の通り接続するコマンドを入力してください。
・接続先ポート番号：10022
・接続ユーザ名：user
・接続先ホスト名：test.com','ssh -p 10022 user@test.com','「-p ポート番号」で接続先ポート番号を指定
※通常は22番で接続するが、接続ポートの変更が必要な場合に指定','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e042',2,'システムのカーネル名（≒OS名）を
表示するコマンドを入力してください。','uname','ちなみにLinuxはOSの一種であり、カーネルの名前でもある。
（Linuxカーネルを用いたOSをLinuxと呼ぶ）','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e043',2,'「test.txt」ファイルの内容をテストし、
ファイルの種類を特定するコマンドを入力してください。','file test.txt','「file ファイル名」で
指定したファイルのファイル種類を特定','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e044',2,'現在のユーザが実行しているプロセスの状態を
確認するコマンドを入力してください。','ps','オプションを付けずにpsコマンドを実行すると
現在のターミナルで実行中の自分（現在のユーザ）のプロセスのみ表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e045',2,'システム上で動いている全プロセスの詳細情報を
表示するコマンドを入力してください。','ps aux','「ps aux」で
システム上で動いている全てのプロセスの詳細情報
（プロセス起動ユーザやメモリ利用状況など）を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e046',2,'プロセスIDが「777」のプロセスを終了させる
コマンドを入力してください。','kill 777','「kill プロセスID」で、指定したプロセスを終了','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e047',2,'PATHの一覧を表示するコマンドを入力してください。','echo $PATH','「echo $PATH」で環境変数として定義しているPATHの一覧を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e048',2,'「test.txt」ファイルの中身を表示するための
コマンドを入力してください。
（ただし、1画面ずつ表示できるものとする）','less test.txt','ページ分割して内容を表示（スクロール可）','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e049',2,'lessコマンドでファイルの中身を表示した状態で
1画面分下に移動するためのコマンドを入力してください。','f','「f」で次の画面に進む','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e050',2,'lessコマンドでファイルの中身を表示した状態で
1画面分上に移動するためのコマンドを入力してください。','b','「b」で前の画面に戻る','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e051',2,'lessコマンドでファイルの中身を表示した状態で
1行下に移動するためのコマンドを入力してください。','j','「j」で1つ下の行に進む','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e052',2,'lessコマンドでファイルの中身を表示した状態で
1行上に移動するためのコマンドを入力してください。','k','「k」で1つ上の行に戻る','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e053',2,'「test.txt」ファイルの中身の先頭10行を
表示するコマンドを入力してください。','head test.txt','「head ファイル名」で、指定したファイルの先頭10行を表示
※「head ファイル名 -数字」とすると、指定した数字の行数を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e054',2,'「test.txt」ファイルの中身の末尾10行を
表示するコマンドを入力してください。','tail test.txt','「tail ファイル名」で、指定したファイルの末尾10行を表示
※「tail ファイル名 -数字」とすると、指定した数字の行数を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e055',2,'「test.txt」ファイルの行数や単語数などを数える
コマンドを入力してください。','wc test.txt','「wc テキストファイル名」で
指定したテキストファイルの行数、単語数、バイト数を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e056',2,'現在のユーザアカウント名を表示するコマンドを入力してください。','whoami','現在のユーザアカウント名を表示','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e057',2,'コマンドの入力履歴を調べるコマンドを入力してください。','history','コマンドの入力履歴を一覧で表示
※表示された履歴の番号を使って「!番号」とコマンド入力すると
　履歴と同じコマンドを実行可能','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e058',2,'ユーザIDやユーザ名、グループIDなどの
ユーザ識別情報を表示するコマンドを入力してください。','id','オプションなしだと現在のユーザアカウントに関する情報を表示
「id ユーザ名」で確認したいユーザ名を指定することも可能','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e059',2,'IPアドレス「8.8.8.8」に
ネットワーク接続できるか確認するコマンドを入力してください。','ping 8.8.8.8','「ping IP（ドメイン名）」で
指定したIP（ドメイン名）にネットワーク接続できるか確認','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e060',2,'ドメイン「google.com」に
ネットワーク接続できるか確認するコマンドを入力してください。','ping google.com','「ping IP（ドメイン名）」で
指定したIP（ドメイン名）にネットワーク接続できるか確認','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e061',2,'Linuxのターミナル画面で
入力行の先頭に移動するコマンド「Ctrl + ?」の
?に当てはまる文字を入力してください。','a','「Ctrl + a」で入力行の先頭に移動','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e062',2,'Linuxのターミナル画面で
入力行の最後に移動するコマンド「Ctrl + ?」の
?に当てはまる文字を入力してください。','e','「Ctrl + e」で入力行の最後に移動','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e063',2,'Linuxのターミナル画面で
カーソル位置から行の先頭までを削除するコマンド「Ctrl + ?」の
?に当てはまる文字を入力してください。','u','「Ctrl + u」でカーソル位置から行の先頭までを削除','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e064',2,'Linuxのターミナル画面で
カーソル位置から行の最後までを削除するコマンド「Ctrl + ?」の
?に当てはまる文字を入力してください。','k','「Ctrl + k」でカーソル位置から行の最後までを削除','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e065',2,'Linuxのターミナル画面で
実行中の処理をキャンセルするコマンド「Ctrl + ?」の
?に当てはまる文字を入力してください。','c','「Ctrl + c」で実行中の処理をキャンセル','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e066',2,'Linuxのターミナル画面で
画面をクリアにするコマンド「Ctrl + ?」の
?に当てはまる文字を入力してください。','l','「Ctrl + l」で画面をクリアに
（ターミナル画面の1行目から入力できる状態になる）','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e067',2,'vimでインサートモード（修正可能な状態）に
切り替えるためのコマンドを入力してください。','i','vimでファイルを開いた状態で「i」を入力すると
インサートモードになり、ファイルを修正可能になる','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e068',2,'vimで修正した内容を保存してから
ファイルを閉じるためのコマンドを入力してください。',':wq','ノーマルモードの状態で
「:wq」を入力すると保存してからファイルを閉じる','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e069',2,'vimで最終行に移動するためのコマンドを入力してください。','G','ノーマルモードの状態で
「G(大文字)」を入力すると最終行に移動できる','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e070',2,'vimでファイル内を
文字列「test」で検索するためのコマンドを入力してください。','/test','ノーマルモードの状態で「/」を入力し
続けて検索したい文字列を入力・Enterを押すと
ヒットした箇所にカーソルが当たる','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e071',2,'vimで「/」を使ってファイル内を検索中に
次にヒットした箇所（現在のカーソル位置より下）へ
移動するためのコマンドを入力してください。','n','検索で複数箇所にヒットした場合は「n」を入力すると
次にヒットした箇所に移動できる','2025-05-23 21:00:00','2025-05-23 21:00:00');
INSERT INTO questions (id,rank_id,question,answer,explanation,created_at,updated_at) VALUES ('dd66960261784dbd81169c3ff9e1e072',2,'vimで「/」を使ってファイル内を検索中に
前にヒットした箇所（現在のカーソル位置より上）へ
移動するためのコマンドを入力してください。','N','検索で複数箇所にヒットした場合は「N(大文字)」を入力すると
前にヒットした箇所に移動できる','2025-05-23 21:00:00','2025-05-23 21:00:00');
