cask "nx-studio" do
  version "1.0.0"
  sha256 "b20fc285fb01ba5465eaffb3c7a60cbce22b14f1b87443930a6e45b773799bfa"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/195.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "NX Studio"
  desc "Suite for viewing, processing and editing images and videos"
  homepage "https://downloadcenter.nikonimglib.com/en/products/564/NX_Studio.html"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.NXStudio.main"
end
