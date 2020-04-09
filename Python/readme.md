## Dependencies for Python -
This program uses the following libraries as dependencies-

* Matplotlib
* NumPy
* SciPy
* Code2pdf (Optional, only to get your code as a pdf file)

### Installing dependencies/packages

* For Windows/Linux/Mac users

You can install these libraries using ``pip`` (if you have a virtual environment created and only want to install the libraries for that particular file/directory)

``
pip install <name of the library>
``

or Alternatively you can install using pip for your own user system-wide

``
python -m pip install --user <name of the libraries separated by a space>
``

or you could use ``conda`` (if you are using Anaconda IDE)

``
conda install <name of the library>
``

or (If you are using a Linux distribution) then you can simply use you distro's package manager to install the packages (but it will install the packages system wide)

* For Debian/Ubuntu users-

``
sudo apt install python-<name of the library>
``

* For Fedora users-

``
sudo dnf install numpy scipy python-matplotlib 
``

* For Arch users-

``
sudo pacman -S python-<package name>
``

or 

``
yay -S python-<package name>
``

Most python packages are in the ArchLinux repositories and the packages that are not are in AUR (ArchLinux User Repositories) - for these packages you have to download the PKGBUILD file and compile. After that, you have to use PACMAN to finish the installation

``
makepkg -s
``
``
sudo pacman -U 'compiled-package'
``

* For Mac users-

Mac doesn’t have a preinstalled package manager, but there are a couple of popular package managers you can install. For Python 3.5 with Macports , execute this command in a terminal:

``
sudo port install py35-numpy py35-scipy py35-matplotlib 
``

or Alternatively [Homebrew](https://brew.sh) has an incomplete coverage of the SciPy ecosystem, but does install these packages:

``
brew install numpy scipy matplotlib ipython jupyter
``


#### All the instructions related to the code are given in the code as Comments.