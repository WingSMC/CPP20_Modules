# When the file extension isn't cppm clang needs the -x c++-module
# flag to clarify it's purpose

# Compiling into modules
clang++ -std=c++20 Foo-interface.cppm --precompile -o Foo-interface.pcm
clang++ -std=c++20 Foo-impl.cppm --precompile -fprebuilt-module-path=. -o Foo-impl.pcm
clang++ -std=c++20 Foo.cppm --precompile -fprebuilt-module-path=. -o Foo.pcm

clang++ -std=c++20 Baz-impl.cpp -fmodule-file=Foo.pcm -c -o Baz-impl.o
clang++ -std=c++20 main.cpp -fprebuilt-module-path=. -c -o main.o

# Compiling and linking
clang++ -std=c++20 Foo-interface.pcm -c -o Foo-interface.o
clang++ -std=c++20 Foo-impl.pcm -c -o Foo-impl.o
clang++ -std=c++20 Foo.pcm -c -o Foo.o
clang++ main.o Foo.o Foo-interface.o Foo-impl.o Baz-impl.o -o a.out
