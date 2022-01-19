version := "0.1.1"

download:
    wget https://github.com/manojkarthick/github-upload-asset/releases/download/v{{version}}/github-upload-asset-{{version}}-darwin-all.tar.gz -O github-upload-asset-mac.tar.gz

checksum:
    shasum -a 256 github-upload-asset-mac.tar.gz

commit:
    git add -A
    git commit -m "Create release v{{version}}"
    git tag {{version}}
    git push -f origin master --tags

upload:
    github-upload-asset --owner manojkarthick --repo homebrew-github-upload-asset --release-tag {{version}} --asset-path github-upload-asset-mac.tar.gz --create-release
