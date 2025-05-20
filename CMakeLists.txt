cmake_minimum_required(VERSION 3.23)
project(kokkos LANGUAGES CXX)

set(CMAKE_CXX_COMPILER icpx)
add_compile_options(-fsycl -fopenmp -w)

find_package(Kokkos REQUIRED CONFIG)

add_executable(${PROJECT_NAME}
  src/hello_kokkos.cpp
  ####src/matmul_kokkos.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE Kokkos::kokkoscore)


##to run on Phase 2
###module sw spack/24.1.1
####module load kokkos
###module load intel-toolkit
###mkdir build
###cd build
###cmake -DKokkos_DIR=/dss/lrzsys/sys/spack/release/24.1.1/opt/sapphirerapids/kokkos/4.3.01-oneapi-7n64bxg/lib64/cmake/Kokkos  ..
###cmake -DKokkos_DIR=~/KOKKOS/kokkos-testing/working_kokkos/kokkos_lib/lib64/cmake/Kokkos  .. ## perfer 