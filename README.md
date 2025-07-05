# pixelitos-icon-theme

<img src="https://itszariep.codeberg.page/projects/pixelitos-icon-theme/1.webp" width="320px" alt="pixelitos" />

16-bit style icon theme
 
>[!note]
> pixelitos-icon-theme is under constantly development, if you want a icon to be added, please make an issue

> Looking for Pixelitos in HD? see [Ilustraciones](https://github.com/itszariep/ilustraciones-icon-theme)
 
## Preview
You can preview pixelitos icons on their [website](https://itszariep.codeberg.page/projects/pixelitos-icon-theme/icons/)
 
## Installation
<details>

### Release
Download a [Release](https://github.com/ItsZariep/pixelitos-icon-theme/releases) and extract the archive in `~/.local/share/icons`

### Git
 
```bash
git clone https://github.com/itszariep/pixelitos-icon-theme
```
```bash
cd pixelitos-icon-theme
install-git.sh
```

> Using `install-git.sh` let you update the icons with a simply git pull


> [!Note]
> Due to space problems in the repository, it only contains the 16x16 icons, so the 128x128 icons (which display correctly in the apps) need to be generated with ImageMagick (install.sh will also ask you this when you install the theme) (update.sh will do this automatically). 

```
cd pixelitos-icon-theme/pixelitos-dark
./compile-icons.sh
```

### Folder colors

You can choose a folder color by copying the content of a folder from `folder-colors/color` using `folders-color.sh`
```
./folder-colors.sh
```

Available colors:

![img](https://raw.githubusercontent.com/ItsZariep/pixelitos-icon-theme/refs/heads/main/pixelitos-dark/folder-colors/blue/16/places/folder.png)
![img](https://raw.githubusercontent.com/ItsZariep/pixelitos-icon-theme/refs/heads/main/pixelitos-dark/folder-colors/red/16/places/folder.png)
![img](https://raw.githubusercontent.com/ItsZariep/pixelitos-icon-theme/refs/heads/main/pixelitos-dark/folder-colors/green/16/places/folder.png)
![img](https://raw.githubusercontent.com/ItsZariep/pixelitos-icon-theme/refs/heads/main/pixelitos-dark/folder-colors/linuxmint/16/places/folder.png)
![img](https://raw.githubusercontent.com/ItsZariep/pixelitos-icon-theme/refs/heads/main/pixelitos-dark/folder-colors/purple/16/places/folder.png)
</details>

## Theming recommendations:

### Font:
- [PerfectDOS VGA](https://archive.org/details/LessPerfectDOSVGA)

### Cursors:
- [Pixelfun 2](https://www.pling.com/p/1278934/)
- [Onedark](https://www.pling.com/p/1567279/)