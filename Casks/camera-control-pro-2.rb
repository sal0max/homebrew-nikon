cask "camera-control-pro-2" do
  version "2.31.0"
  sha256 "b196c6cbb563bbfc037748bf531abaca19c83b9a451d7930945e1666e0a780de"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/164.html").open do |landing_page|
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
