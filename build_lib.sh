echo "setup tools"

requirement() 
{
git clean -d -f
git checkout -- .
git pull origin master
git submodule  update --init

sudo apt-get install cmake
sudo apt-get install automake
sudo apt-get install libtool

}

#https://cmake.org/download/
#curl -sSL https://cmake.org/files/v3.5/cmake-3.5.2-Linux-x86_64.tar.gz | sudo tar -xzC  ./

#http://blog.cleverelephant.ca/2014/12/building-cunit-from-source.html

PREFIX=${PWD}/
ROOT=${PWD}/

rm -r out
mkdir -p out
call_makefile()
{
  make clean
  make
  make install
}

checkCode()
{
  if [ $? != 0 ]; then
	exit 1
  fi
}

echo ""
echo "build cunit"
cd ./CUnit-2.1-2
libtoolize -f -c -i 
aclocal 
autoconf 
automake --gnu --add-missing 

./configure  --prefix=${PREFIX}/out \
	     --libdir=${PREFIX}/out/lib/ \
	     --includedir=${PREFIX}/out/include
call_makefile

echo ""
echo "build mbedtls"
cd ${ROOT}
cd ./mbedtls
cmake . -DCMAKE_INSTALL_PREFIX=${PREFIX}/out \
	-DCMAKE_PREFIX_PATH=${PREFIX}/out

call_makefile
cd ${ROOT}
cd ./bctoolbox
cmake . -DCMAKE_INSTALL_PREFIX=${PREFIX}/out \
	-DCMAKE_PREFIX_PATH=${PREFIX}/out \
	 -DENABLE_POLARSSL=OFF -DENABLE_MBEDTLS=ON
  
cp -f src/libbctoolbox.* ../out/lib
cp -rf include/bctoolbox  ../out/include


call_makefile
cd ${ROOT}

echo ""
echo "build ortp"

cd ortp
./autogen.sh

cd ${ROOT}
cd ./ortp
./autogen.sh

export BCTOOLBOX_LIBS=-L${PREFIX}/out/lib -lbctoolbox
export BCTOOLBOX_CFLAGS=-I${PREFIX}/out/include/
./configure  --prefix=${PREFIX} \
	     --libdir=${PREFIX}/out/lib/ \
	     --includedir=${PREFIX}/out/include/ 

call_makefile



