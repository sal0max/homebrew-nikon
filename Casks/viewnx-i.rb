cask "viewnx-i" do
  version "1.4.4"
  sha256 "576986851ddbe55c2a67769d9bfcc8ba2da4f978edc70456357378562cde6732"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/183.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "ViewNX-i"
  desc "Image browser and editor"
  homepage "https://downloadcenter.nikonimglib.com/en/products/220/ViewNX-i.html"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: [
    "jp.co.nikon.MovieEditor.main",
    "jp.co.nikon.ViewNX-i.main",
  ]
end
