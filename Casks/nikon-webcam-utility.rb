cask "nikon-webcam-utility" do
  version "1.0.1_1"
  sha256 "59d5eba98ab8fec975e10bff2c2d420bddd1a75bcd2d381d43686737233a2ca8"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/188.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Nikon Webcam Utility"
  desc "Lets supported Nikon cameras be used as a webcam via USB"
  homepage "https://downloadcenter.nikonimglib.com/en/products/548/Webcam_Utility.html"

  pkg "WebcamUtility.pkg"

  uninstall pkgutil: "jp.co.nikon.installer.WebcamUtility.main",
            delete:  "/Applications/Nikon Software/Webcam Utility"
end
