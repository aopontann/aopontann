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
source .env

# カレントディレクトリ 表示
PROMPT="%F{green}%n%f :%F{blue}%~%f"$'\n'"%# "
