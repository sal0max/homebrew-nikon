cask "nx-studio" do
  version "1.1.2"
  sha256 "7b9ec270a626794a5983d35eadc536c591aeb6ad7521f8e944cefd73ae6a6a47"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/215.html").open do |landing_page|
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
