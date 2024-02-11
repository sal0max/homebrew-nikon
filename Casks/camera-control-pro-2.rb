cask "camera-control-pro-2" do
  version "2.37.0"
  sha256 "cabca9f063b972a4d1897d3a8d16abb17f647d8434315937cb0acfc1cd792994"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/248.html").open do |landing_page|
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
