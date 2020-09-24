cask "capture-nx-d" do
  version "1.6.2"
  sha256 "dbc65eadbf9953e6ad5d872d2d1baf2a89a2b928405d7b8570bcceb37a18277d"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/166.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Capture NX-D"
  desc "Nikons official raw converter"
  homepage "https://downloadcenter.nikonimglib.com/en/products/162/Capture_NX-D.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.CaptureNX-D.main"
end
