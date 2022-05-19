# httpclient

An alternative HTTP client implementation for Go with complete control.

GO PKG VERSION: 1.17.10

## rebase go net pkg version

```bash
git log
# find copy commit last next hash  2134
git rebase -i 2134
# change commit to e
# e 0987222 copy commit
# ...
./scripts/copy.sh
git rebase --continue
```