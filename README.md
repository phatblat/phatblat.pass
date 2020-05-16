# 🛂 phatblat.pass

My business card as an Apple Wallet pass.
The intent of publishing this example Apple Wallet pass is so that you can quickly create your own.
However, please change the contents and don't pretend to be me. That would just be silly.

## 📲 Install

Open the following link on an device that supports Apple Wallet (iOS or macOS):

- [https://phatbl.at/pass](https://s3-us-west-2.amazonaws.com/phatblat/phatblat.pkpass)

📷 Alternatively, use the camera app on your device to scan the QR code:

![Apple Wallet pass](pass.jpeg)

## Making Your Own

My pass uses the "Generic" style, which is the best fit for a business card.
There are different sets of fields and design options available for each of the
different pass types.

The configuration and assets are all located in the [`phatblat.pass`](blob/master/phatblat.pass) folder.
The [`pass.json`](blob/master/phatblat.pass/pass.json) contains all the configuration of the pass.
Image assets reside next to it and have specific names, depending on their purpose for
a given pass type.

Once you've configured the pass and added assets, you will need to
[sign and compress](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/PassKit_PG/YourFirst.html#//apple_ref/doc/uid/TP40012195-CH2-SW28)
the pass package. This repo contains a copy of Apple's sample signpass macOS CLI command,
which can be built and run all with the following command:

```bash
make pass
```

See the `Makefile` for the underlying commands.

## References

- [Wallet Developer Guide](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/PassKit_PG/index.html#//apple_ref/doc/uid/TP40012195-CH1-SW1)
- [Wallet Support Materials](https://developer.apple.com/services-account/download?path=/iOS/Wallet_Support_Materials/WalletCompanionFiles.zip)
Contains example passes and source for `signpass` binary.
- [PassKit Package Format Reference](https://developer.apple.com/library/archive/documentation/UserExperience/Reference/PassKit_Bundle/Chapters/Introduction.html#//apple_ref/doc/uid/TP40012026-CH0-SW1)

## 📄 License

This repo is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for rights and limitations.
