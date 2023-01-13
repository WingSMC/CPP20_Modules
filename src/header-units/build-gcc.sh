g++-11 -std=c++20 -fmodules-ts -fmodule-header Foo.hpp
g++-11 -std=c++20 -fmodules-ts Foo.cpp -c -o Foo.o

g++-11 -std=c++20 -fmodules-ts main.cpp Foo.o
