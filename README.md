# JPG2HEIC
Bulk convert JPG images to HEIC/HEIF with metadata in Bash.

### Installation (Homebrew)

```bash
brew install exiftool
brew install imagemagick
```

### Installation (Build & Compile)

```bash
su -

sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
apt update
apt install exiftool build-essential autoconf libtool git-core pkg-config m4 automake
apt build-dep imagemagick libmagickcore-dev libde265 libheif

cd /usr/src/ 
git clone https://github.com/strukturag/libde265.git
git clone https://github.com/strukturag/libheif.git
git clone https://github.com/ImageMagick/ImageMagick.git

cd /usr/src/libde265/
./autogen.sh && ./configure
make && make install

cd /usr/src/libheif/
./autogen.sh && ./configure
make && make install

cd /usr/src/ImageMagick/
./configure --with-heic=yes
make && make install
ldconfig /usr/local/lib
```

### Download

https://github.com/Masterflitzer/JPG2HEIC/blob/master/JPG2HEIC.sh

### Usage

```bash
cd ./Camera/
./JPG2HEIC.sh
```

### forked from fotock
https://github.com/fotock/jpg2heic
