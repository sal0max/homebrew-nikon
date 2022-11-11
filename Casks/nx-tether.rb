cask "nx-tether" do
  version "1.0.3"
  sha256 "861bc76c78c7b2acb5ce6fd6d2cf5cee641c6d3094c6fcb81107aa188691ca18"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/227.html").open do |landing_page|
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
