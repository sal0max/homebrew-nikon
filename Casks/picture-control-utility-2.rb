cask "picture-control-utility-2" do
  version "2.4.15"
  sha256 "1ab2be080cd32f9b1e8845b051d09c1f125fa1a3549013dccfe9d86fbb127ea7"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/239.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Picture Control Utility 2"
  desc "Color profile editor"
  homepage "https://downloadcenter.nikonimglib.com/en/products/163/Picture_Control_Utility_2.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.installer.PictureControlUtility2.main"
end
