## Web LZF

The purpose of this small project is mainly educational. My intension was to use some C library with a help of
[emscripten](https://emscripten.org/) compiler to port that libary to nodejs (javascript) environment.

Required tools for building project:
- emscripten compiler toolchain
- cmake as build tool


```
git clone https://github.com/sigidagi/weblzf
cd weblzf/build
./configure
make

cd ../
ls ./bin
```

It will generate two files: binary [webassembly](https://webassembly.org/) file: *weblzf.wasm* and  JavaScript file: *weblzf.js* containing glue code to translate between the native C functions, and JavaScript/wasm. Check folderi: *weblzf/bin*

### LZF C library

[LibLZF](http://oldhome.schmorp.de/marc/liblzf.html) is a compression/decompression library by Marc Lehmann.
It aims for very high speeds and reasonable compression. It could be widely used in everything from
[BigTable](https://en.wikipedia.org/wiki/Bigtable) and other large data sets like
[MapReduce](https://en.wikipedia.org/wiki/MapReduce) and Hierarchical Data Formats [HDF5](http://portal.hdfgroup.org/display/knowledge/What+is+HDF5)

Some performance comparision between different compression algorithms [LZF vs LZO vs Snappy vs ZLIB](https://blog.erdemagaoglu.com/post/4605524309/lzo-vs-snappy-vs-lzf-vs-zlib-a-comparison-of).

### Usage

*index.html* provides example javascript code how to access LZF compression/decompression library.

```
python3 -m http.server
```

check console logs on web browser
```
firefox http://localhost:8000
```
by pressing <F12>


### License

This code is under a BSD license. This essentially means you can freely use it as long as you include the copyright statements as attribution. See the license file for details.
