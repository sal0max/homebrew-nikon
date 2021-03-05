cask "capture-nx-d" do
  version "1.6.5"
  sha256 "bf50551153c4cec53e9e352560a5d638826a18fd92fc66fbdc23191b4374ed3a"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/194.html").open do |landing_page|
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
