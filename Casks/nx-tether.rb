cask "nx-tether" do
  version "1.0.0"
  sha256 "8faee09ad3a58596353da299d06444dd803aa8ffa574d6396229865786b21d3c"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/204.html").open do |landing_page|
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