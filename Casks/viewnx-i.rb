cask "viewnx-i" do
  version "1.4.2"
  sha256 "6871345221ddb5bce3fe015fa9aa1d4b1b93c53db9f75d107361ef7778608085"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/165.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "ViewNX-i"
  homepage "https://downloadcenter.nikonimglib.com/en/products/220/ViewNX-i.html"

  pkg "Installer/NikonInstaller.pkg"

  uninstall :pkgutil => [
    "jp.co.nikon.MovieEditor.main",
    "jp.co.nikon.ViewNX-i.main",
  ]
end
