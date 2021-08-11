#!/bin/bash
PACKAGE="firefox-nightly"
SRC="$PACKAGE.svg"
DIR="debian/$PACKAGE/usr/share/icons/hicolor"

resolutions='16 32 48 64 128 256 512 1024'

INKVER=`inkscape -V | awk '{print $2}'`

for resolution in $resolutions
do
    echo ${resolution}x${resolution}
    mkdir -p $DIR/${resolution}x${resolution}/
    if [ `echo ${INKVER}| awk -F. '{print $1}'` -eq 0 ]; then
	inkscape -z -w ${resolution} -h ${resolution} $SRC -e $DIR/${resolution}x${resolution}/$PACKAGE.png
    else
        inkscape -w ${resolution} -h ${resolution} $SRC $DIR/${resolution}x${resolution}/$PACKAGE.png
    fi
    rsvg-convert -a -w ${resolution} -f svg ${SRC} -o $DIR/${resolution}x${resolution}/$PACKAGE.svg
done


mkdir -p $DIR/scalable/apps
cp $SRC $DIR/scalable/apps/$PACKAGE.svg
echo All done

