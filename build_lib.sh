#sudo apt-get install cmake

#http://blog.cleverelephant.ca/2014/12/building-cunit-from-source.html

PREFIX=/home/test/VOIP
cd ./CUnit-2.1-2
libtoolize -f -c -i 
aclocal 
autoconf 
automake --gnu --add-missing 

./configure  --prefix=${PREFIX} \
	     --libdir=${PREFIX}/usr/lib/ \
	     --includedir=${PREFIX}/usr/include/ 
make
make install

