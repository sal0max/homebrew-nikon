# Nikon Programs, available in [Homebrew][0]

If you found this repo, you probably know what this is. All current Nikon apps, handily installable via homebrew.

## Currently available Nikon programs via this repo are
* [IPTC Preset Manager][nikon-0]
* [KeyMission 360/170 Utility][nikon-1]
* [Nikon Message Center 2][nikon-2]
* [Picture Control Utility 2][nikon-3]
* [ViewNX-i][nikon-4]
* [Wireless Transmitter Utility][nikon-5]

## Why aren't these formulae available in the homebrew-cask repo?
As stated in the [homebrew docs][1], some providers use measurements to block command-line downloads.
Nikon is one of them. Those aren't welcome to be added to the main repository.

## Okay, how do I install these formulae?
Recommended way is `brew tap sal0max/nikon` and then `brew install <formula>`.

Alternatively you can also do `brew install sal0max/nikon/<formula>`



[0]: https://brew.sh/index_de
[1]: https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/url.md#some-providers-block-command-line-downloads

[nikon-0]: https://downloadcenter.nikonimglib.com/en/products/172/IPTC_Preset_Manager.html
[nikon-1]: https://downloadcenter.nikonimglib.com/en/products/335/KeyMission_Utility_Installer.html
[nikon-2]: https://downloadcenter.nikonimglib.com/en/products/169/Nikon_Message_Center_2.html
[nikon-3]: https://downloadcenter.nikonimglib.com/en/products/163/Picture_Control_Utility_2.html
[nikon-4]: https://downloadcenter.nikonimglib.com/en/products/220/ViewNX-i.html
[nikon-5]: https://downloadcenter.nikonimglib.com/en/products/168/Wireless_Transmitter_Utility.html