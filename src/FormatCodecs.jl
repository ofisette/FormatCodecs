module FormatCodecs

using Formats

using CodecZlib

Formats.addcoding("application/gzip")
Formats.addextension("application/gzip", ".gz")
Formats.addextension("application/gzip", ".gzip")
Formats.setdecoder("application/gzip", GzipDecompressor)
Formats.setencoder("application/gzip", GzipCompressor)

using CodecBzip2

Formats.addcoding("application/x-bzip2")
Formats.addextension("application/x-bzip2", ".bz2")
Formats.addextension("application/x-bzip2", ".bzip2")
Formats.setdecoder("application/x-bzip2", Bzip2Decompressor)
Formats.setencoder("application/x-bzip2", Bzip2Compressor)

using CodecXz

Formats.addcoding("application/x-xz")
Formats.addextension("application/x-xz", ".xz")
Formats.setdecoder("application/x-xz", XzDecompressor)
Formats.setencoder("application/x-xz", XzCompressor)

"""
Integrate common transcoders with Formats.
"""
FormatCodecs

end # module
