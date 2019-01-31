# FormatCodecs

Julia package to integrate common transcoders with the Formats package.

Using FormatCodecs, you can transparently read and write formatted data
compressed with the gzip, bzip2 and xz codings.

## License

You can use FormatCodecs under the terms of the MIT “Expat” License; see
`LICENSE.md`.

## Installation

FormatCodecs is not a registered package. You can add it to your Julia
environment by giving the URL to its repository:

```julia
Pkg.add("https:://github.com/ofisette/FormatCodecs.jl")
```

## Usage

Simply load the package to activate the transcoders:

```julia
using FormatCodecs
```

You can then read/write data using the functions provided by Formats:

```julia
mol = read(infer("insulin.pdb.gz"))
write(infer("insulin.gro.bz2"), mol)
```

## See also

* [Formats](https://github.com/ofisette/Formats.jl):
  Read, write and detect formatted data, based on MIME types (dependency).
