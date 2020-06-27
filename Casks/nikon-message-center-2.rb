cask "nikon-message-center-2" do
  version "2.4.0"
  sha256 "ffc201794f1ac77c72e7350fe537d4b38bc97a571c4bf01b6aedd75f36ba8171"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/144.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Nikon Message Center 2"
  homepage "https://downloadcenter.nikonimglib.com/en/products/169/Nikon_Message_Center_2.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall :pkgutil => "jp.co.nikon.MessageCenter2.main",
            :delete  => "/Applications/Nikon Software/Nikon Message Center 2"
end
