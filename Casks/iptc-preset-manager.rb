cask "iptc-preset-manager" do
  version "1.2.0"
  sha256 "3fcf95e5b8f2b72fa30a9fedd44a00f8c6548b86657cf858532de92aa0b19168"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/169.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "IPTC Preset Manager"
  homepage "https://downloadcenter.nikonimglib.com/en/products/172/IPTC_Preset_Manager.html"

  pkg "IPTCPresetManager.pkg"

  uninstall pkgutil: "jp.co.nikon.installer.IPTCPresetManager.main",
            delete:  "/Applications/Nikon Software/IPTC Preset Manager"
end
