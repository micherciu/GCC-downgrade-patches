# Fix patches to downgrade GCC
--------> For a specific patch <--------

0. Create a working directory:  
'''
# mkdir "your_dir"   
'''

1. Go to "your_dir":  
'''
# cd "your_dir"  
'''

2. Initialize a repo in "your_dir":  
'''
# git init  
'''

3. Link the remote repository with the origin alias:\
'''
# git remote add origin https://github.com/micherciu/GCC-downgrade-patches.git
'''

4. Enable the spase github option, to be able to checkout a specified directory:  
'''
# git config core.sparsecheckout true
'''

5. Specified the directory you are interested in:  
'''
# echo "the_exact_name_of_the_directory_interested_in" >> .git/info/sparse-checkout
'''

6. Download the content from the remote directory (with all commit history):  
'''
# git pull origin master
'''