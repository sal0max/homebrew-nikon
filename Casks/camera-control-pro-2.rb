cask "camera-control-pro-2" do
  version "2.34.1"
  sha256 "06d5eb2178c446223b2e1da9965e2a87b4a01a033002a1450a101ee8c06aab55"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/213.html").open do |landing_page|
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
