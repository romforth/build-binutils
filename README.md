# build-binutils : a build wrapper for binutils builds (for multiple archs)

This repo is a build wrapper to build `binutils` for various architectures.

It uses a `Makefile` and a helper script (`makegen`) to build all of the
binutils binaries in the toolchain required to build and test
[romforth](https://github.com/romforth/romforth).

Running `make` after cloning
	git clone https://github.com/romforth/build-binutils
will build all of the binutils binaries required by `romforth` - specifically,
the binutils build is done for each architecture listed in the file `list`.

When you run `make` all that it does is:
1. Fetch a vendored snapshot of the `binutils` source
2. Run `configure` with the right set of arguments for each architecture in `list`
3. Run `make`
4. Run `make install`

After a successful `make`, you can choose to use the binutils build products
either directly from this directory itself or move it to some other place, (for
example, a `toolchain` directory) and use it from there.
