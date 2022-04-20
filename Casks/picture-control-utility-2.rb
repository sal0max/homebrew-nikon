cask "picture-control-utility-2" do
  version "2.4.11"
  sha256 "6c119107f9b7bf9d4a801a3759aa42e7995e56853989ddbfb9b239eda0ca6f24"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/221.html").open do |landing_page|
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
