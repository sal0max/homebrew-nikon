cask "viewnx-i" do
  version "1.4.5"
  sha256 "bf50551153c4cec53e9e352560a5d638826a18fd92fc66fbdc23191b4374ed3a"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/193.html").open do |landing_page|
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
