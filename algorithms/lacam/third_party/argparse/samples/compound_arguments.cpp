// SPDX-License-Identifier: MIT

#include <argparse/argparse.hpp>

int main(int argc, char *argv[]) {
  argparse::ArgumentParser program("test");

  program.add_argument("-a").flag();

  program.add_argument("-b").flag();

  program.add_argument("-c")
      .nargs(2)
      .default_value(std::vector<float>{0.0f, 0.0f})
      .scan<'g', float>();

  try {
    program.parse_args(argc, argv); // Example: ./main -abc 1.95 2.47
  } catch (const std::exception &err) {
    std::cerr << err.what() << std::endl;
    std::cerr << program;
    return 1;
  }

  auto a = program.get<bool>("-a");               // true
  auto b = program.get<bool>("-b");               // true
  auto c = program.get<std::vector<float>>("-c"); // {1.95, 2.47}

  std::cout << "a: " << std::boolalpha << a << "\n";
  std::cout << "b: " << b << "\n";
  if (!c.empty()) {
    std::cout << "c: ";
    for (auto &v : c) {
      std::cout << v << " ";
    }
    std::cout << std::endl;
  }
}