cask "camera-control-pro-2" do
  version "2.35.1"
  sha256 "9101d7089d6a6b1c6ad4ae560981d0c91b867d811afc2bfd8733a0f675259e26"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/226.html").open do |landing_page|
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
