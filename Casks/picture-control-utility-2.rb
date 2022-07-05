cask "picture-control-utility-2" do
  version "2.4.12"
  sha256 "2d25855f895f1d3e121492bf030ed0f91affd86f44b84917f2ecae0c3443d892"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/224.html").open do |landing_page|
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
