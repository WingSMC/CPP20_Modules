# File extension agnostic flags
# -xc++-header
# -xc++-system-header
# -xc++-user-header

clang++ -std=c++20 -fmodule-header Foo.hpp -o Foo.pcm
clang++ -std=c++20 -fmodule-file=Foo.pcm main.cpp
