cask "nx-tether" do
  version "1.0.4"
  sha256 "84d8f57c910a31b82606529468fce52241f5948ead279e240681445c989906d9"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/241.html").open do |landing_page|
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
