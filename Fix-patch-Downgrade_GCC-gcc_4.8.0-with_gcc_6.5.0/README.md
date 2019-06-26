# Build-gcc-4.8.0 with gcc-6.5.0  
Building gcc-cross 4.8.0 with gcc 6.5.0 for various dependent tools; (I need that for cuda files compilation - CUDA ver. 6.5.12)

Thanks to the *Ioan-Adrian Ratiu* <adrian.ratiu at ni.com> work on http://lists.openembedded.org/pipermail/openembedded-core/2016-May/121395.html the patch is hear in that form.

Furthermore, I will just explain all the steps that I followed for successfully compillation.

0.Go to the gcc source directory:  
# cd gcc-4.8.0/

1. Applay the patch:  
# patch -p1 < patch-4.8.0-6.5.0.patch

2.Run the configuration file:\
*!!! please note that you have to define the path in the config.sh file for: **gcc build path, path_to_gmp, path_to_mpfr, path_to_mpc** directories and if you don't have the gcc 6.5 as default (as gcc and g++ without suffix) then you have to change the variable **CC,CXX,LD,PATH and LD_LIBRARY_PATH** accordingly.
# ./config.sh

3. Do the compilation:\
* For single CPU compilation
# make

* For many CPU compilation where N is number of CPU's
# make -jN

* Just copy all the required files to specific places 
# make install


Thats it! Enjoy with gcc-4.8