cask "camera-control-pro-2" do
  version "2.34.0"
  sha256 "e0980acff81383a558c855d1211c73899e473bdc7d377f1eb90aa959c7727f53"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/206.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Camera Control Pro 2"
  desc "Tethering sofware for Nikon cameras via USB or WiFi"
  homepage "https://downloadcenter.nikonimglib.com/en/products/165/Camera_Control_Pro_2.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.installer.CameraControlPro2.main"
end
