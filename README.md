# Push your coverage metrics to Coveralls.io from Travis-ci

## Usage

Append the following `install` stanza of your `.travis.yml`:

```yml
install:
  ...
  - wget https://raw.githubusercontent.com/simonjbeaumont/ocaml-travis-coveralls/master/travis-coveralls.sh
```

and add the following to your the `script` stanza:

```yml
script: ... && bash travis-coveralls.sh
```

## Prerequisites

0. Your project is enabled on [Coveralls.io][1]; and
0. Your project is configured using [Oasis][2].

The dependency on Oasis allows this tool to link in [Bisect][3] (the OCaml tool
for collecting coverage metrics) in a predictable way.

## Configuration
You can configure the commands used to build and what commands are measured by
setting the following environment variables in your `.tavis.yml`:

* `$COV_CONF`: The command used to configure your project, maybe to enable any
  tests that are not built by default. This defaults to a no-op;
* `$COV_BUILD`: The command used to build your project. This defaults to
  `make`;
* `$COV_TEST`: The command under inspection of the coverage tools. Defaults to
  `make test`.

For example, if you need to enable tests with a configure script option you can
set the following:

```yml
env:
  global:
    ...
    - COV_CONF="./configure --enable-tests"
```

## Example
For an example of using this tool and its features, check out the following
project:

* [ocaml-pci][4]

[1]: https://coveralls.io
[2]: http://oasis.forge.ocamlcore.org/
[3]: http://bisect.x9c.fr/
[4]: https://github.com/simonjbeaumont/ocaml-pci
