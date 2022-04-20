cask "nx-tether" do
  version "1.0.1"
  sha256 "3cfa1c11e13509e3bdce66e303bb34d15ce819a6c3533555268214e609ea8a11"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/219.html").open do |landing_page|
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
