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
  homepage "https://downloadcenter.nikonimglib.com/en/products/548/Webcam_Utility.html"
  desc "This program lets a Nikon camera be used as a webcam when connected to a computer via USB. The camera will function as a webcam when “Webcam Utility” is selected as an external camera in a web conferencing app.
Supported cameras: Z 7, Z 6, Z 5, Z 50, D6, D850, D780, D500, D7500, and D5600"

  pkg "WebcamUtility.pkg"

  uninstall :pkgutil => "jp.co.nikon.installer.WebcamUtility.main",
            :delete  => "/Applications/Nikon Software/Webcam Utility"
end
