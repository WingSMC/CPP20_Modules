module;
#include <iostream>

export module Foo;
export import :interface;
import :impl;

export double baz();

/// @brief Prints something to stdout
export
template<typename T>
void print(T something) {
	std::cout << something;
}
