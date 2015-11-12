OMERO Veewee Definitions
========================

Use this repo as the [Veewee](https://github.com/jedi4ever/veewee/blob/master/README.md) definitions directory to build OMERO VMs for use with [Vagrant](http://www.vagrantup.com/).

E.g. Setup the Veewee dependencies, see the [Veewee documentation](https://github.com/jedi4ever/veewee/blob/master/README.md). Then:

    git clone https://github.com/jedi4ever/veewee
    cd veewee
    git clone https://github.com/manics/omero-veewee-definitions definitions

To build an image activate your Ruby environment. For example, if you are using RVM:

    source ~/.rvm/scripts/rvm

Optionally run `rvm use NNN` to select a ruby version. Enter the `veewee` directory if you aren't already there. Install dependencies if required:

    bundle install

And attempt to build an image:

    veewee vbox build BOXNAME

Where `BOXNAME` is one of the subdirectories under `definitions`, e.g.:

    veewee vbox build windows2012r2
