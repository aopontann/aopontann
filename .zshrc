# Go 設定
export GOROOT=/usr/local/go
export GOPATH=$HOME/go 
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# NVM 設定
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use "v22.3.0"

# 環境変数 読み込み
# IFSは環境変数で区切り文字が設定される。
# 区切り文字のデフォは改行、タブ、スペースなので、改行のみにしている。
IFS=$'\n'
for text in `cat .env`
do
  if [ ! "`echo $text | grep '#'`" ]; then
    export "${text}"
  fi
done

# カレントディレクトリ 表示
PROMPT="%F{green}%n%f :%F{blue}%~%f"$'\n'"%# "
