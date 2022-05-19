#! /bin/bash
set -ex

v=`go version | { read _ _ v _; echo ${v#go}; }`

# update README
sed -i 's/.*GO PKG VERSION.*/GO PKG VERSION: '$v'/' ./README.md

# copy file
rm -rf ./url && cp -r $GOROOT/src/net/url .
rm -rf ./http && mkdir -p ./http
cp -r $GOROOT/src/net/http/{client.go,request.go,response.go,header.go,clone.go,cookie.go,jar.go,http.go,transfer.go,status.go,transport.go} ./http/

# update go module, may cause conflict 
# go mod tidy
