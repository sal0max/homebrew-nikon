cask "camera-control-pro-2" do
  version "2.33.0"
  sha256 "1e06e4cbb797e9265e564b707e5e910f0f312965fa1c85577eac22af2ca05c05"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/181.html").open do |landing_page|
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