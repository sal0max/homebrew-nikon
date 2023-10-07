cask "nx-tether" do
  version "1.0.5"
  sha256 "0fc600b0becd1fb6f42c8b1012271a40e73da19bf121be4911b95d65fa973238"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/246.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "NX Tether"
  desc "Tethered photography with Nikon cameras connected to your computer"
  homepage "https://downloadcenter.nikonimglib.com/en/products/578/NX_Tether.html"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: [
    "jp.co.nikon.NXTether.main",
  ]
end
