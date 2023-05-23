cask "camera-control-pro-2" do
  version "2.36.0"
  sha256 "69471522a5248a1509b6692ebbbc31352a05e2e756bfb7cde2d490c2af46c002"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/238.html").open do |landing_page|
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
