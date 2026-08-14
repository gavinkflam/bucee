# bucee

Gavin's containerized development environment.

## Installation

* Clone the repository to ~/.bucee or somewhere else you want

```bash
git clone git@github.com:gavinkflam/bucee.git ~/.bucee

```

* Symlink the bucee script to somewhere in your $PATH

```bash
ln -s ~/.bucee/bucee ~/bin/bucee
```

* Build the image, start a container and attach a shell

```bash
bucee build
bucee go
bucee shell
```

## License

AGPLv3

