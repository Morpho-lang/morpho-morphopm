![Morpho](https://github.com/Morpho-lang/morpho-manual/blob/main/src/Figures/morphologosmall-white.png#gh-light-mode-only)![Morpho](https://github.com/Morpho-lang/morpho-manual/blob/main/src/Figures/morphologosmall-white.png#gh-dark-mode-only)

# morphopm

morphopm is a simple package manager for the [morpho](https://github.com/Morpho-lang/morpho) language. morphopm downloads known packages from a provided url, builds them if necessary, and can install additional dependencies using external package managers.

To get a list of available packages:

    morphopm list    

You can install a package like this:

    morphopm install <packagename>

and remove one using:

    morphopm uninstall <packagename>

Update a package to the latest version:

    morphopm upgrade <packagename>

## Installation

It is recommended to install `morphopm` using homebrew:

    brew install morpho-morphopm

## Preparing your own packages

Packages must be hosted in a public git repository, e.g. on Github, and are defined to morphopm by a simple JSON file (see the packages folder in this repository for examples). Contributions of external packages are welcome; please fork this repository and make a Pull Request containing your package definition file in the packages folder.
