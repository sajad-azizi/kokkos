cmake_minimum_required(VERSION 3.23)
project(matmul_kokkos LANGUAGES CXX)

# Tell CMake where to find an installed Kokkos or let FetchContent grab it.
find_package(Kokkos REQUIRED)

add_executable(matmul
        src/matmul_kokkos.cpp
)
target_link_libraries(matmul Kokkos::kokkos)
