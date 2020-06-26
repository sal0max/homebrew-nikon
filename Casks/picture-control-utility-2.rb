cask 'picture-control-utility-2' do
  version '2.4.5'
  sha256 'dd2fb39cc029c6ce2bb753a6d2dd520a5c0df2feeb5a3633157f7495366d28cd'

  url do
    require 'open-uri'
    URI('https://downloadcenter.nikonimglib.com/en/download/sw/163.html').open do |landing_page|
        content = landing_page.read
        content.scan(/id="for64".*href="(.*)".*\.dmg/m)
            .flatten
            .first
            .gsub(/&amp;/, "&")
    end
  end
  name 'Picture Control Utility 2'
  homepage 'https://downloadcenter.nikonimglib.com/en/products/163/Picture_Control_Utility_2.html'

  pkg "Installers/NikonInstaller.pkg"

  uninstall pkgutil: [
                       'jp.co.nikon.installer.PictureControlUtility2.main',
                     ]
end
