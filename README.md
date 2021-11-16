MYSTRAN
=======

MYSTRAN is an acronym for “My Structural Analysis” (https://mystran.com)


---

[Introduction](#Introduction) |
[Features](#Features) |
[Installation Instructions](#Installation-Instructions) |
[Compilation Instructions](#Compilation-Instructions) |
[Developmental Goals](#Developmental-Goals) |
[Ways You Can Help](#ways-you-can-help) |
[Community](#community)

---


# Introduction

MYSTRAN is a general purpose finite element analysis computer program for structures that can be modeled as linear (i.e. displacements, forces and stresses proportional to applied load). MYSTRAN is an acronym for “My Structural Analysis”, to indicate it’s usefulness in solving a wide variety of finite element analysis problems.

For anyone familiar with the popular NASTRAN computer program developed by NASA (National Aeronautics and Space Administration) in the 1970’s and popularized in several commercial versions since, the input to MYSTRAN will look quite familiar. Many structural analyses modeled for execution in NASTRAN will execute in MYSTRAN with little, or no, modification. MYSTRAN, however, is not NASTRAN. It is an independent program written in modern Fortran 95.

# Features

- NASTRAN compatibility
- Modal analysis
- Linear Static Analysis
- Linear Elastic Buckling Analysis (All but shell elements as of 13.3)
- Support for True Classical Laminate Plate Theory
- All of our documentation can be found in MYSTRAN forums

# Installation Instructions

For Windows

* A binary can be downloaded from this link

For Linux

* An appimage can be downloaded from this link

More detailed instructions can be found here.
[Currently I'd post this link](https://www.mystran.com/forums/showthread.php?tid=2) But I think that's not good enough, this should be in a docs directory in the github repository so that version control of it can be done properly. Ideally it would be just as a PDF generated by something like LATEX so that anybody could contribute things like edits to it. Barring that it should be in some kind of open office format so that anybody could access it without paying 130 bucks for microsoft word.

# Compilation Instructions

### For Windows

* A binary can be downloaded from this link: https://www.mystran.com/forums/showthread.php?tid=39
* Compilation Instructions can be downloaded from this link: https://www.mystran.com/forums/showthread.php?tid=2

### For Linux

<details><summary>Debian/Ubuntu</summary><br>
MYSTRAN relies upon the following dependencies

- gcc
- g++ (may come with gcc)
- gfortran
- make
- git
- cmake (version 3.18 or above)

Check if gcc is installed. 
```
dpkg --list | grep -P "^ii\s+gcc\s+"
```

Check if g++ is installed
```
dpkg --list | grep g++
```

If it is not installed, installed it.
```
sudo apt install gcc
```

Check if gfortran is installed
```
dpkg --list | grep -P "^ii\s+gfortran\s+"
```

If it is not installed, install it.
```
sudo apt install gfortran
```

Check if make is installed
```
dpkg --list | grep -P "^ii\s+make\s+"
```

If it is not installed, install it.
```
sudo apt install make
```

Check if git is installed
```
dpkg --list | grep -P "^ii\s+git\s+"
```

If it is not installed, install it.
```
sudo apt install git
```

Check if cmake is installed

```
dpkg --list | grep -P "^ii\s+cmake\s+"
```
If it is not installed, or it is not version 3.18 or later, you can purge it,
and aquire the newest version from source, or from the snapcraft store. Using snap is reccomended.
```
sudo snap install cmake
```
   
Alternatively, if you do not want to use snap, you can aquire the newest version from source.
   
```
sudo apt purge cmake
git clone "https://gitlab.kitware.com/cmake/cmake.git"
cd cmake
./bootstrap
make
sudo make install
```

You now have all of the prerequisites to compile Mystran.

Aquire the Mystran source.
```
git clone https://github.com/dr-bill-c/MYSTRAN.git
cd MYSTRAN
```

Generate the build scripts.
```
cmake .
```

Compile with make.
```
make
```

Copy the mystran binary to the appropriate location
```
sudo cp MYSTRAN/Binaries/mystran /usr/local/bin/mystran
```

Delete the git repository 
```
cd ..
sudo rm -r MYSTRAN
```

Congragulations! You have just installed MYSTRAN.

</details>

[General guidance can be found here.](https://gist.github.com/Bruno02468/4b58a04168d090a8b62cc9f2008698f5) (last updated 2021-02-01) 

# Developmental Goals

- Add detailed installation instructions for Windows to the README
- Add installation instructions for other platforms to the readme (other linux distributions, and/or Apple operating systems)
- Implement differential stiffness matrices for shell elements
- Implement OP2 output format
- Creating easier ways to aquire mystran would be nice. This would include, but is not limited to, entry into the Arch Linux User Repository (AUR), the Debian Advanced Package Manager (apt), the snapcraft store (snap), the chocolatey package manager for Windows, an appimage, or flatpak.
- Creation of a more comprehensive testing suite would be nice. Current method uses VBA and Microsoft excel. New testing methods should ideally include correlation to other solvers, previous versions of mystran, industry standard demonstration problems, and continuum mechanics/direct solutions.
- The default QUAD element is internally composed of 4 tri elements. These internal tri elements need a coordinate transformation to allow for orthotropic/anisotropic materials. Currently, the default QUAD element is only valid for isotropic materials (though the alternate QUAD element does support anisotropic materials).
- Migrate documentation to github.
- As a longer term goal, materialistically nonlinear support is desirable.
- As a longer term goal, geometric nonlinear support is desirable.

# Ways You Can Help

- Join the MYSTRAN forum and/or Discord Channel below
- Contribute your MYSTRAN runs to the list of demonstration problems by posting on the forums, or in our discord channel below

# Community
- [Join our Forums](https://mystran.com/forums)
- [Join our Discord Channel on the Elmer Discord Server](https://discord.com/invite/fUJr75H)
