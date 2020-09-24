cask "nikon-webcam-utility" do
  version "0.9.0"
  sha256 "95da2ea2fd0ea95793d91613a64880ebf9db6a3c6bdad262f4b4bd31078e05cc"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/178.html").open do |landing_page|
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
