cask "capture-nx-d" do
  version "1.6.4"
  sha256 "62c0cb3e8766729e28320043ac20df02e10827c0bce68fc7a46bdb5f685e0d0c"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/182.html").open do |landing_page|
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
