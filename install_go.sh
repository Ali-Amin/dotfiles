curl -L https://go.dev/dl/go1.21.3.linux-amd64.tar.gz -o go.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go.tar.gz
rm -rf go.tar.gz

echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc


go install golang.org/x/tools/cmd/goimports@latest
go install mvdan.cc/gofumpt@latest
go install github.com/segmentio/golines@latest

git clone https://github.com/go-delve/delve ~/
cd ~/delve
go install github.com/go-delve/delve/cmd/dlv

git clone https://github.com/golang/vscode-go.git ~/
cd vscode-go
npm install
npm run build
