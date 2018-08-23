cd src
mkdir binaries
cd binaries
mkdir Windows32
mkdir Windows64
mkdir Linux32
mkdir Linux64
mkdir MACOSX
cd ..
cd ..
cd depends
make download
make HOST=i686-w64-mingw32 -j4
make HOST=x86_64-w64-mingw32 -j4
make HOST=arm-linux-gnueabihf -j4
make HOST=aarch64-linux-gnu -j4
make HOST=x86_64-apple-darwin11 -j4
cd ..
autogen.sh
./configure --prefix=`pwd`/depends/i686-w64-mingw32 --enable-hardening
make
cd src
mv betchipd.exe binaries/Windows32/
mv betchip-tx.exe binaries/Windows32/
cd qt
mv betchip-qt.exe ../binaries/Windows32/
cd ../..
./configure --prefix=`pwd`/depends/x86_64-w64-mingw32 --enable-hardening
make
cd src
mv betchipd.exe binaries/Windows64/
mv betchip-tx.exe binaries/Windows64/
cd qt
mv betchip-qt.exe ../binaries/Windows64/
cd ../..
./configure --prefix=`pwd`/depends/arm-linux-gnueabihf --enable-hardening
make
cd src
mv betchipd binaries/Linux32/
mv betchip-tx binaries/Linux32/
cd qt
mv betchip-qt ../binaries/Linux32/
cd ../..
./configure --prefix=`pwd`/depends/aarch64-linux-gnu --enable-hardening
make
cd src
mv betchipd binaries/Linux64/
mv betchip-tx binaries/Linux64/
cd qt
mv betchip-qt ../binaries/Linux64/
cd ../..
./configure --prefix=`pwd`/depends/x86_64-apple-darwin11 --enable-hardening
make
cd src
mv betchipd binaries/MACOSX/
mv betchip-tx binaries/MACOSX/
cd qt
mv betchip-qt ../binaries/MACOSX/
cd ../..
