cask "nx-studio" do
  version "1.4.1"
  sha256 "b8f6ab645808dcbbd9a841d5d0c02f5bb8374b988ef1a2169dcf8c90670e93ae"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/243.html").open do |landing_page|
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
