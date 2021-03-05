cask "camera-control-pro-2" do
  version "2.33.1"
  sha256 "b27b7f07ba138cfaf65f5bb2fd04122f500bb44cf7d826204ca3a20ce236632b"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/191.html").open do |landing_page|
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
