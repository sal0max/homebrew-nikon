cask "nikon-webcam-utility" do
  version "1.0.1"
  sha256 "d305e8e52da50ad1ab8fd0aece95c9159eb2cca778a22fd5091d31ec3e06b4f7"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/186.html").open do |landing_page|
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
