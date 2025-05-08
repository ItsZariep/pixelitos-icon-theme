# pixelitos-icon-theme
16-bit style icon theme
 
>[!note]
> pixelitos-icon-theme is under constantly development, if you want a icon to be added, please make an issue

> Looking for Pixelitos in HD? see [Ilustraciones](https://github.com/itzselenux/ilustraciones-icon-theme)
 
 ## Preview
 You can preview pixelitos icons on their [website](https://itszariep.codeberg.page/projects/pixelitos-icon-theme/icons/)
 
 ## Installation
```bash
git clone https://github.com/ItzSelenux/pixelitos-icon-theme
```

> [!Note]
> Due to space problems in the repository, it only contains the 16x16 icons, so the 128x128 icons (which display correctly in the apps) need to be generated with ImageMagick. 

```
cd pixelitos-icon-theme
./compile-icons.sh
cd ../
```

```
mv pixelitos-icon-theme ~/.local/share/icons/pixelitos
```


### Folder colors

You can choose a folder color by copying the content of a folder from `folder-colors/color` using `folders-color.sh`
```
./folder-colors.sh
```