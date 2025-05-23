INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e001',1,'ディレクトリを移動するコマンドは？','cd','ls','pwd','ps','cd','「cd ディレクトリ名」で、指定したディレクトリに移動
※cdはchange directoryの頭文字','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e002',1,'cdコマンドで
ホームディレクトリに移動するために必要な指定は？','/','~','-','..','~','「cd ~」で、ホームディレクトリに移動
※「cd」だけでもホームディレクトリに移動可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e003',1,'cdコマンドで
移動する前にいたディレクトリへ戻るために必要な指定は？','/','~','-','..','-','「cd -」で、移動する前にいたディレクトリに戻る','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e004',1,'cdコマンドで
1つ上の階層のディレクトリへ移動するために必要な指定は？','/','~','-','..','..','「cd ..」で、1つ上の階層のディレクトリに移動','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e005',1,'cdコマンドで
ルートディレクトリに移動するために必要な指定は？','/','~','-','..','/','「cd /」で、ルートディレクトリに移動','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e006',1,'ディレクトリの中に保存されている
ファイルやディレクトリの一覧を表示するコマンドは？','ps','ls','cd','pwd','ls','lsはlistの略称','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e007',1,'lsコマンドのオプションで
隠しファイルを含むすべてのファイルとディレクトリを
表示するためのオプションは？','-p','-l','-a','-g','-a','「ls -a」で、隠しファイルを含む
すべてのファイルとディレクトリを表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e008',1,'lsコマンドのオプションで
ファイルやディレクトリの種類や所有者・所有グループなどの
詳細情報を表示するためのオプションは？','-a','-g','-p','-l','-l','「ls -l」で、ファイルやディレクトリの種類や
所有者・所有グループなどの詳細情報を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e009',1,'ファイルの中身を表示するコマンドは？','cat','pig','dog','rat','cat','「cat ファイル名」で、指定したファイルの中身を表示
※「concatenate」（つなげる・連結する）の一部をとってcat','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e010',1,'catコマンドのオプションで
連続したスペースやタブを1行にして表示するためのオプションは？','-b','-s','-n','-z','-s','「cat -s ファイル名」で、連続したスペースやタブを
1行にしてファイルの中身を表示
※無駄なスペースやタブが消えてスッキリ表示される','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e011',1,'catコマンドのオプションで
行番号をつけて表示するためのオプションは？','-z','-s','-n','-m','-n','「cat -n ファイル名」で、行番号をつけてファイルの中身を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e012',1,'現在作業しているディレクトリの位置を
絶対パスで表示するコマンドは？','ls','ps','cd','pwd','pwd','pwdは「print working directory」の略称','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e013',1,'新しくディレクトリを作成するコマンドは？','mkdir','dir','dirmk','make dir','mkdir','「mkdir ディレクトリ名」で
指定したディレクトリ名のディレクトリを作成','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e014',1,'mkdirコマンドのオプションで
親ディレクトリが存在しない場合、
一緒に親ディレクトリも作成するためのオプションは？','-t','-p','-o','-z','-p','「mkdir -p 親ディレクトリ名/子ディレクトリ名」で
親ディレクトリが存在しなくてもまとめてディレクトリを作成','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e015',1,'既に存在しているファイルを削除するコマンドは？','del','dr','rm','delfile','rm','「rm ファイル名」で、指定したファイル名のファイルを削除','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e016',1,'rmコマンドのオプションで
ディレクトリを削除するためのオプションは？','-i','-k','-w','-r','-r','「rm -r ディレクトリ名」で
指定したディレクトリ名のディレクトリを
中身（ファイルやディレクトリなど）も含めて削除','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e017',1,'ファイルやディレクトリを移動したり
名前を変更したりするコマンドは？','mv','ch','rm','cp','mv','「mv ファイル名(ディレクトリ名) 移動先ディレクトリ名」で
ファイル(ディレクトリ)を移動先ディレクトリ内に移動
※移動先ディレクトリ名が存在しない場合は
　ファイル(ディレクトリ)の名前を変更','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e018',1,'ファイルをコピーするコマンドは？','mv','cp','ch','rm','cp','「cp ファイル名 コピー先ディレクトリ名」で
ファイルをコピー先ディレクトリ内にコピー
※コピー先ディレクトリ名が存在しない場合は
　同階層にファイルをコピー','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e019',1,'cpコマンドのオプションで
ディレクトリをコピーするためのオプションは？','-q','-v','-r','-n','-r','「cp -r ディレクトリ名 コピー先ディレクトリ名」で
ディレクトリをコピー先ディレクトリ内にコピー
※コピー先ディレクトリ名が存在しない場合は
　同階層にディレクトリをコピー','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e020',1,'ファイルを新規作成するコマンドは？','catch','makefile','addfile','touch','touch','「touch 新規ファイル名」で
現在のディレクトリに空の新規ファイルを作成','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e021',1,'ファイルやディレクトリの所有者を変更するコマンドは？','chown','chfile','chowner','chmaster','chown','「chown [新しい所有者名] [ファイル名]」で変更
※「chown [新しい所有者名]:[新しいグループ名] [ファイル名]」で
　所有者とグループを同時に変更することも可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e022',1,'コマンドのプログラムファイルが置いてあるパスを表示するコマンドは？','who','which','where','what','which','例：「which ls」で
lsコマンドのプログラムファイルが置いてあるパスを確認可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e023',1,'ファイルやディレクトリの権限を変更するコマンドは？','chmode','chmd','chmod','ch','chmod','「chmod 変更したい権限内容 ファイル名(ディレクトリ名)」で
ファイルやディレクトリの権限を指定した内容に変更','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e024',1,'chmodコマンドのオプションで
指定したディレクトリ内のディレクトリ・ファイル等も
すべて権限変更対象にするためのコマンドは？','-S','-T','-A','-R','-R','「chmod 変更したい権限内容 -R ディレクトリ名」で
指定したディレクトリ内を再帰的に権限変更','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e025',1,'chmodコマンドで、所有者ユーザに
実行権限を付与するときの指定方法は？','u+x','g+x','o+x','p+x','u+x','例：「chmod u+x test.txt」で
所有者ユーザの実行権限をtest.txtに付与','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e026',1,'chmodコマンドで、所有グループに属するユーザに
書き込み権限を付与するときの指定方法は？','u+w','g+w','o+w','p+w','g+w','例：「chmod g+w test.txt」で
所有グループに属するユーザの書き込み権限をtest.txtに付与','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e027',1,'chmodコマンドで、その他ユーザに
読み取り権限を付与するときの指定方法は？','u+r','g+r','o+r','p+r','o+r','例：「chmod o+r test.txt」で
その他ユーザの読み取り権限をtest.txtに付与','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e028',1,'chmodコマンドで、すべてのユーザに
実行権限を付与するときの指定方法は？','z+x','b+x','c+x','a+x','a+x','例：「chmod a+x test.txt」で
すべてのユーザの実行権限をtest.txtに付与','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e029',1,'chmodコマンドで「754」のパーミッションを設定した場合
所有者ユーザは何ができる？','読み取り/書き込み/実行','読み取り/書き込み','読み取り/実行','読み取り','読み取り/書き込み/実行','所有者ユーザには1桁目（7）の権限を付与
※7は「読み取り/書き込み/実行」がすべて可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e030',1,'chmodコマンドで「754」のパーミッションを設定した場合
所有グループに属するユーザは何ができる？','読み取り/書き込み/実行','読み取り/実行','読み取り/書き込み','読み取り','読み取り/実行','所有グループに属するユーザには2桁目（5）の権限を付与
※5は「読み取り/実行」が可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e031',1,'chmodコマンドで「754」のパーミッションを設定した場合
その他ユーザは何ができる？','書き込み','何もできない','読み取り','実行','読み取り','その他ユーザには3桁目（4）の権限を付与
※4は「読み取り」が可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e032',1,'ファイルやディレクトリを検索するためのコマンドは？','search','check','grep','find','find','「find ディレクトリ名 [オプション] [検索条件]」で
指定したディレクトリを起点に、その下のディレクトリをファイル検索','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e033',1,'findコマンドのオプションで
ファイル名で検索するためのオプションは？','-name','-n','-file','-filename','-name','「find ディレクトリ名 -name ファイル名」で
指定したディレクトリを起点に、指定した名称のファイルを検索','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e034',1,'findコマンドのオプションで
ファイル種別を指定して検索するためのオプションは？','-file','-type','-t','-f','-type','「find ディレクトリ名 -type ファイル種別」で
指定したディレクトリを起点に、指定した種別※のファイルを検索
※「d: ディレクトリ」「f: ファイル」「l: シンボリックリンク」','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e035',1,'ファイルの中身に特定の「文字列（文字のパターン）」が
存在するかを調べるコマンドは？','find','search','grep','check','grep','「grep [オプション] 文字列 ファイル名」で
ファイル内に指定した文字列が存在するか確認','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e036',1,'テキストデータを扱うファイルの中身（行）を
昇順で並べ替えて表示するコマンドは？','sorting','so','s','sort','sort','「sort ファイル名」で
指定したファイルの中身（行）を昇順で並び替え','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e037',1,'sortコマンドのオプションで、テキストデータを扱うファイルの
中身（行）を降順で並べ替えて表示するコマンドは？','-r','-a','-d','-z','-r','「sort -r ファイル名」で
指定したファイルの中身（行）を降順で並び替え','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e038',1,'テキストデータを扱うファイルの中身について
隣接する行が重複している場合、重複を削除して表示するコマンドは？','rem','uniq','only','one','uniq','sortコマンドとセットで使うことが多い
例：「sort sample.txt | uniq」で
sample.txtの中身を昇順で並び替えたあと、隣接する重複行を削除','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e039',1,'コンピュータに割り当てられているIPアドレスを確認するコマンドは？','ipcheck','adck','ifconfig','config','ifconfig','主に端末のIPアドレスやMACアドレスの確認に使用','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e040',1,'シンボリックリンクを作成するコマンドは？','ln -l','ln -a','ln -r','ln -s','ln -s','「ln -s ファイルのパス リンクの名前」でシンボリックリンクを作成','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e041',1,'ネットワークに接続されているサーバを遠隔操作するコマンドは？','ssh','remote','rrh','ssr','ssh','sshコマンドでサーバの遠隔操作が可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e042',1,'sshコマンドのオプションで
接続先のポート番号を指定するためのオプションは？','-n','-o','-p','-q','-p','「-p ポート番号」で指定
※通常は22番で接続するが、接続ポートの変更が必要な場合に指定','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e043',1,'sshコマンドのオプションで
公開鍵認証方式の秘密鍵を指定するためのオプションは？','-s','-h','-k','-i','-i','「-i 秘密鍵のパス（ファイル名含む）」で指定','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e044',1,'システムのカーネル名（≒OS名）を表示するコマンドは？','uname','name','oname','osname','uname','ちなみにLinuxはOSの一種であり、カーネルの名前でもある。
（Linuxカーネルを用いたOSをLinuxと呼ぶ）','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e045',1,'unameコマンドのオプションで
unameコマンドで取得できるすべての情報を
まとめて表示するためのオプションは？','-all','-a','-m','-x','-a','「uname -a」で
unameコマンドで取得できるすべての情報をまとめて表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e046',1,'ファイルの内容をテストし、ファイルの種類を特定するコマンドは？','tfile','test','file','checkfile','file','「file ファイル名」で
指定したファイルのファイル種類を特定','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e047',1,'プロセスの状態を確認するコマンドは？','pscheck','p','psc','ps','ps','オプションを付けずにpsコマンドを実行すると
現在のターミナルで実行中の自分（現在のユーザ）のプロセスのみ表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e048',1,'psコマンドのオプションで
システム上で動いている全プロセスの詳細情報を
表示するためのオプションは？','aux','alb','atm','all','aux','「ps aux」で
システム上で動いている全てのプロセスの詳細情報
（プロセス起動ユーザやメモリ利用状況など）を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e049',1,'プロセスを終了させるためのコマンドは？','end','kill','over','stop','kill','「kill プロセスID」で、指定したプロセスを終了','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e050',1,'PATHの一覧を表示するコマンドは？','$PATH','echo PATH','echo $PATH','$echoPATH','echo $PATH','「echo $PATH」で環境変数として定義しているPATHの一覧を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e051',1,'ターミナル画面に文字列を表示させるコマンドは？','disp','word','output','echo','echo','「echo 文字列」でターミナル上に文字列を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e052',1,'指定したファイルの中身を表示するコマンドは？
（ただし、1画面ずつ表示できるものとする）','less','ness','gess','hess','less','ページ分割して内容を表示（スクロール可）','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e053',1,'lessコマンドでファイルの中身を表示した状態で
1画面分下に移動するためのコマンドは？','u','f','a','n','f','「f」で次の画面に進む','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e054',1,'lessコマンドでファイルの中身を表示した状態で
1画面分上に移動するためのコマンドは？','k','u','b','n','b','「b」で前の画面に戻る','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e055',1,'lessコマンドでファイルの中身を表示した状態で
1行下に移動するためのコマンドは？','k','u','d','j','j','「j」で1つ下の行に進む','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e056',1,'lessコマンドでファイルの中身を表示した状態で
1行上に移動するためのコマンドは？','k','u','d','j','k','「k」で1つ上の行に戻る','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e057',1,'ファイルの中身の先頭10行を表示するコマンドは？','pre','head','lead','front','head','「head ファイル名」で、指定したファイルの先頭10行を表示
※「head ファイル名 -数字」とすると、指定した数字の行数を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e058',1,'ファイルの中身の末尾10行を表示するコマンドは？','end','back','tail','last','tail','「tail ファイル名」で、指定したファイルの末尾10行を表示
※「tail ファイル名 -数字」とすると、指定した数字の行数を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e059',1,'テキストファイルの行数や単語数などを数えるコマンドは？','wk','wr','ww','wc','wc','「wc テキストファイル名」で
指定したテキストファイルの行数、単語数、バイト数を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e060',1,'現在のユーザアカウント名を表示するコマンドは？','whoami','whoareyou','who','whoever','whoami','現在のユーザアカウント名を表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e061',1,'コマンドの入力履歴を調べるコマンドは？','resume','history','rireki','cmhis','history','コマンドの入力履歴を一覧で表示
※表示された履歴の番号を使って「!番号」とコマンド入力すると
　履歴と同じコマンドを実行可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e062',1,'ユーザIDやユーザ名、グループIDなどの
ユーザ識別情報を表示するコマンドは？','uinfo','uid','id','ids','id','オプションなしだと現在のユーザアカウントに関する情報を表示
「id ユーザ名」で確認したいユーザ名を指定することも可能','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e063',1,'指定したホスト（IPやドメイン）と
ネットワーク接続できるか確認するコマンドは？','traceroute','nslookup','curl','ping','ping','「ping IP（ドメイン名）」で
指定したIP（ドメイン名）にネットワーク接続できるか確認','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e064',1,'指定したホスト（IPやドメイン）までの
ネットワーク経路を調べるためのコマンドは？','traceroute','ping','nslookup','curl','traceroute','「traceroute IP（ドメイン名）」で
パケットがどのような経路を通って
指定したIP（ドメイン名）に到達するかを表示','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e065',1,'HTTPリクエストを送るためのコマンドは？','ping','curl','traceroute','nslookup','curl','「curl URL」で、指定したURLにHTTPリクエストを送信
（データ取得やデータ送信が可能）','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e066',1,'curlコマンドのオプションで
HTTPメソッドを指定するためのオプションは？','-E','-D','-X','-H','-X','例：「curl -X POST -d name=John URL」で
指定したURLに「name=John」というデータをPOSTで送信','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e067',1,'curlコマンドのオプションで
POSTデータを送信するためのオプションは？','-h','-x','-e','-d','-d','例：「curl -X POST -d age=25 URL」で
指定したURLに「age=25」というデータをPOSTで送信','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e068',1,'Linuxのターミナル画面で
入力行の先頭に移動するコマンドは？','Ctrl + a','Ctrl + e','Ctrl + u','Ctrl + k','Ctrl + a','「Ctrl + a」で入力行の先頭に移動','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e069',1,'Linuxのターミナル画面で
入力行の最後に移動するコマンドは？','Ctrl + a','Ctrl + e','Ctrl + u','Ctrl + k','Ctrl + e','「Ctrl + e」で入力行の最後に移動','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e070',1,'Linuxのターミナル画面で
カーソル位置から行の先頭までを削除するコマンドは？','Ctrl + a','Ctrl + e','Ctrl + u','Ctrl + k','Ctrl + u','「Ctrl + u」でカーソル位置から行の先頭までを削除','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e071',1,'Linuxのターミナル画面で
カーソル位置から行の最後までを削除するコマンドは？','Ctrl + a','Ctrl + e','Ctrl + u','Ctrl + k','Ctrl + k','「Ctrl + k」でカーソル位置から行の最後までを削除','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e072',1,'Linuxのターミナル画面で
実行中の処理をキャンセルするコマンドは？','Ctrl + c','Ctrl + d','Ctrl + s','Ctrl + l','Ctrl + c','「Ctrl + c」で実行中の処理をキャンセル','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e073',1,'Linuxのターミナル画面で
画面をクリアにするコマンドは？','Ctrl + d','Ctrl + l','Ctrl + c','Ctrl + s','Ctrl + l','「Ctrl + l」で画面をクリアに
（ターミナル画面の1行目から入力できる状態になる）','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e074',1,'vimでインサートモード（修正可能な状態）に
切り替えるためのコマンドは？','s','t','i','w','i','vimでファイルを開いた状態で「i」を入力すると
インサートモードになり、ファイルを修正可能になる','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e075',1,'vimでノーマルモード（保存できる状態）に
切り替えるためのコマンドは？','!','/','~','esc','esc','インサートモードの状態で
「esc」を入力するとノーマルモードになる','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e076',1,'vimで修正した内容を保存してから
ファイルを閉じるためのコマンドは？',':wq',':q!','esc','exit',':wq','ノーマルモードの状態で
「:wq」を入力すると保存してからファイルを閉じる','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e077',1,'vimで最終行に移動するためのコマンドは？','L','G','R','E','G','ノーマルモードの状態で
「G(大文字)」を入力すると最終行に移動できる','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e078',1,'vimでファイル内を検索するためのコマンドは？',':','?','/','^','/','ノーマルモードの状態で「/」を入力し
続けて検索したい文字列を入力・Enterを押すと
ヒットした箇所にカーソルが当たる','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e079',1,'vimで「/」を使ってファイル内を検索中に
次にヒットした箇所（現在のカーソル位置より下）へ
移動するためのコマンドは？','N','M','m','n','n','検索で複数箇所にヒットした場合は「n」を入力すると
次にヒットした箇所に移動できる','2025-05-20 22:00:00','2025-05-20 22:00:00');
INSERT INTO questions (id,rank_id,question,choice_1,choice_2,choice_3,choice_4,answer,explanation,created_at,updated_at) VALUES ('cc66960261784dbd81169c3ff9e1e080',1,'vimで「/」を使ってファイル内を検索中に
前にヒットした箇所（現在のカーソル位置より上）へ
移動するためのコマンドは？','N','M','m','n','N','検索で複数箇所にヒットした場合は「N(大文字)」を入力すると
前にヒットした箇所に移動できる','2025-05-20 22:00:00','2025-05-20 22:00:00');