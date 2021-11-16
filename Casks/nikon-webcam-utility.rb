cask "nikon-webcam-utility" do
  version "1.1.0"
  sha256 "efd468bb1e213828e9d957be3c139a83e12532530df2a0e98ea830df62ab3c35"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/209.html").open do |landing_page|
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
