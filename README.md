# Nikon Programs, available in [Homebrew][0]

If you found this repo, you probably know what this is. All current Nikon apps, handily installable via homebrew.

## Currently available Nikon programs via this repo are
| program                                 | cask name
| --------------------------------------- | ---------
| [NX Studio][nikon-9]                    | `nx-studio`
| [Capture NX-D][nikon-6]                 | `capture-nx-d`
| [ViewNX-i][nikon-4]                     | `viewnx-i`
| [Webcam Utility][nikon-8]               | `nikon-webcam-utility`
| [KeyMission 360/170 Utility][nikon-1]   | `keymission-360-170-utility`
| [Camera Control Pro 2][nikon-7]         | `camera-control-pro-2`
| [Nikon Message Center 2][nikon-2]       | `nikon-message-center-2`
| [IPTC Preset Manager][nikon-0]          | `iptc-preset-manager`
| [Picture Control Utility 2][nikon-3]    | `picture-control-utility-2`
| [Wireless Transmitter Utility][nikon-5] | `wireless-transmitter-utility`


## Why aren't these casks available in the homebrew-cask repo?
As stated in the [homebrew docs][1], some providers use measurements to block command-line downloads.
Nikon is one of them. Those aren't welcome to be added to the main repository.


## Okay, how do I install these casks?
Recommended way is `brew tap sal0max/nikon` and then `brew install <formula>`.

Alternatively you can also do `brew install sal0max/nikon/<formula>`


## What do those programs do? Do I need them?

### NX Studio
Nikons newest photo and video editing application.

An image-processing suite designed for viewing, processing and editing images captured with Nikon digital cameras.

**NX Studio integrates the image viewing features of ViewNX-i and processing/editing features of Capture NX-D into one piece of software.**

### Capture NX-D
Basically Nikons official RAW converter.

Similar to ViewNX-i, but designed specifically for the processing of images in Nikon’s unique RAW (nef/nrw) formats. Used in combination with ViewNX-i, it offers a smooth imaging workflow from image selection to RAW processing.

[Also, check out this comparison of Capture NX-D with ViewNX-i.][3]

*Replaces Capture NX 2.*

### ViewNX-i
Designed primarily as an image browser, it can be used with other software to improve to the post-shooting experience.
It also supports map displays based on image location data and can be used with social media and other web services.

The Software includes the ViewNX-Movie Editor for movie processing and editing. It ca be used for basic image editing of jpeg and tiff images and convert nef photos to other formats.

*Replaces ViewNX 2.*

### Webcam Utility
Webcam Utility lets a Nikon camera be used as a webcam when connected to a computer via USB.
The camera will function as a webcam when “Webcam Utility” is selected as an external camera in a web conferencing app.
Supported cameras: Z 7, Z 6, Z 5, Z 50, D6, D850, D780, D500, D7500, and D5600

### KeyMission 360/170 Utility
A companion app for the KeyMission 360 and KeyMission 170 cameras.
Let's you edit and export the video  and image footage. You also can adjust camera settings like e.g. the frame rate.

### Camera Control Pro 2
Basically for studio usage to tether the camera with the pc and immidiately transfer all newly shot images to the computer.

Usable for a 30 day trial periode. After that a key is required. Alternatives would be e.g. [Entangle](https://entangle-photo.org/) (Linux), [digiCamControl](http://www.digicamcontrol.com/) (Windows) or [qDslrDashboard](https://dslrdashboard.info/).

### Nikon Message Center 2
The software lets you check when updates are available for Nikon software and firmware.

### IPTC Preset Manager
IPTC metadata are data like location, comments or image captions. They can be included in both jpeg and nef image files.

Some selected cameras like the D5, D4, D4S and D500 support IPTC presets. There can be several different presets on a memory card. The IPTC presets stored on the camera can be viewed during playback by holding down the `OK` button and pressing `down`. To embed IPTC information in the current image, highlight a preset and press `OK`.

This application allows to generate these presets.

### Picture Control Utility 2
Nikon Picture Control is basically Nikons system how to process RAW image data. Default options are e.g. *Standard*, *Neutral*, *Vivid*, *Monochrome*, *Portrait*, *Landscape* and *Flat*.
Those profiles are used both in-camera and in some Nikon PC applications.

A profile defines settings on clarity, contrast, brightness, saturation and many more.

In-camera, a profile is applied when saving images as jpeg instead of nef. But more importingly it is also used when previewing an image.
Profiles are also being used in post-processing with applications like ViewNX-i or Capture NX-D.
**This program is included in both of them.**

This software allows creating and editing of new profiles.

More info on the topic can be found on [nikonusa.com][2]. The default profiles are explained there, too.

### Wireless Transmitter Utility
Use this application to adjust network settings and more for

* UT-1 communications units
* Z 7, Z 6, Z 50 built-in Wi-Fi
* D5, D4S, and D4 Ethernet connections
* WT-7, WT-6, WT-5, and WT-4 wireless transmitters

When a camera is connected via this application, it can be used to transfer images from the camera to the computer.

Formerly called *WT-4 Setup Utility*.



[0]: https://brew.sh/index_de
[1]: https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/url.md#some-providers-block-command-line-downloads
[2]: https://www.nikonusa.com/en/learn-and-explore/a/tips-and-techniques/picture-controls-step-by-step.html
[3]: https://imaging.nikon.com/support/digitutor/viewnx-i_capture_nx-d/functions/comparison.html

[nikon-0]: https://downloadcenter.nikonimglib.com/en/products/172/IPTC_Preset_Manager.html
[nikon-1]: https://downloadcenter.nikonimglib.com/en/products/335/KeyMission_Utility_Installer.html
[nikon-2]: https://downloadcenter.nikonimglib.com/en/products/169/Nikon_Message_Center_2.html
[nikon-3]: https://downloadcenter.nikonimglib.com/en/products/163/Picture_Control_Utility_2.html
[nikon-4]: https://downloadcenter.nikonimglib.com/en/products/220/ViewNX-i.html
[nikon-5]: https://downloadcenter.nikonimglib.com/en/products/168/Wireless_Transmitter_Utility.html
[nikon-6]: https://downloadcenter.nikonimglib.com/en/products/162/Capture_NX-D.html
[nikon-7]: https://downloadcenter.nikonimglib.com/en/products/165/Camera_Control_Pro_2.html
[nikon-8]: https://downloadcenter.nikonimglib.com/en/products/548/Webcam_Utility.html
[nikon-9]: https://www.nikonusa.com/en/Nikon-Products/Imaging-Software/nx-studio.page
