# 引数確認
if [ $# -ne 1 ]; then
  echo "フォルダ名を指定してください"
  exit 1
fi

# フォルダの名前を取得
FOLDER_NAME=$1

# shell実行ファイルのディレクトに移動
cd $(dirname $0)

# フォルダがあれば異常終了
if [ -e $FOLDER_NAME ]; then
  echo "そのフォルダはすでに存在します"
  exit 1
fi

mkdir $FOLDER_NAME
cp template/index.html $FOLDER_NAME/index.html
cp template/index.js $FOLDER_NAME/index.js

cd $FOLDER_NAME
