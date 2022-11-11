cask "nx-studio" do
  version "1.2.2"
  sha256 "a6e25295d56cbd63ddadc31497c36605b5927b29c959f888062ee45e5244c528"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/228.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "NX Studio"
  desc "Nikons software suite for viewing, processing and editing images and videos"
  homepage "https://downloadcenter.nikonimglib.com/en/products/564/NX_Studio.html"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.NXStudio.main"
end
