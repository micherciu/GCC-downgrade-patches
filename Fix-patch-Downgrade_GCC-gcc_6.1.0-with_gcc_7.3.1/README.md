# Fix-patch-Downgrade_GCC-gcc_6.1.0-with_gcc_7.3.1  
Building gcc-cross 6.1.0 with gcc 7.3.1 for various dependent tools;  

Furthermore, I will just explain all the steps that I followed for successfully compillation.  

0.Go to the gcc source directory:  
# cd gcc-6.1.0/  

1.Applay the patch:  
# patch -p1 < patch-6.1.0-7.3.1.patch  

2.Run the configuration file:  
*!!! please note that you have to define the path in the config.sh file for: **gcc build path, path_to_gpm, path_to_mpfr, path_to_mpc** directories and if you don't have the gcc 7.3.1 as default (as gcc and g++ without suffix) then you have to change the variable **PATH, LD_LIBRARY_PATH, CC, CXX and LD accordingly** .*  
# ./config.sh  

3.Do the compilation:\
* For single CPU compilation  
# make

* For many CPU compilation where N is number of CPU's  
# make -jN

* Just copy all the required files to specific places  
# make install

Thats it! Enjoy with gcc-6.1
