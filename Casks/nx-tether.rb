cask "nx-tether" do
  version "1.0.2"
  sha256 "b871c30a78faf8b6ac87b0bdb5b9752c197242759e3980beec3b319116175692"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/222.html").open do |landing_page|
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
