class GithubUploadAsset < Formula
  desc "CLI tool to upload an asset to the given GitHub release"
  homepage "https://github.com/manojkarthick/github-upload-asset"
  url "https://github.com/manojkarthick/homebrew-github-upload-asset/releases/latest/download/github-upload-asset-mac.tar.gz"
  version "0.1.1"
  sha256 "daa36fb3104332139b75ed8011be0083110c21a30332d74780f00b2ce83757cb"

  def install
    bin.install "github-upload-asset"
  end
end
