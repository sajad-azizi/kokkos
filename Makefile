# KOKKOS_ROOT set via:
#   module load kokkos
# 
# You can look at the first lines of
# $KOKKOS_ROOT/lib64/cmake/Kokkos/KokkosConfigCommon.cmake to see the flags
# used in cmake configuration of the kokkos library build. The default Kokkos
# module on Aurora was built with the default oneAPI module and includes
# Serial, OpenMP (threads) and SYCL backends. So you should have that
# environment module loaded and include compiler flags for sycl and openmp:

# Aurora MPICH wrapper for C++ and C compilers:
CXX="icpx"
CC="icx"

SYCL_AOT_CPPFLAGS=-fsycl -fsycl-targets=spir64_gen -fno-sycl-id-queries-fit-in-int -fsycl-dead-args-optimization -fsycl-unnamed-lambda -std=c++17
SYCL_AOT_LDFLAGS=-Xsycl-target-backend "-device pvc"

CPPFLAGS=-g -O3 -fiopenmp -I $(KOKKOS_ROOT)/include $(SYCL_AOT_CPPFLAGS) -Wno-deprecated-declarations -Wno-tautological-constant-compare -Wno-unknown-attributes -ffp-model=precise

LDFLAGS=$(CPPFLAGS) $(SYCL_AOT_LDFLAGS)
LDLIBS=-L$(KOKKOS_ROOT)/lib64 -lkokkoscore -lkokkossimd -lkokkoscontainers -lpthread

SRCS=./src/hello_kokkos.cpp ./src/matrix_matrix_kokkos.cpp ./src/matrix_matrix_kokkos_cpu.cpp ./src/view_kokkos.cpp ./src/matrix_matrix_kokkos_teams.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

all: hello_kokkos matrix_matrix_kokkos matrix_matrix_kokkos_cpu view_kokkos matrix_matrix_kokkos_teams

hello_kokkos: ./src/hello_kokkos.o
	$(CXX) $(LDFLAGS) -o $@ $< $(LDLIBS)
matrix_matrix_kokkos: ./src/matrix_matrix_kokkos.o
	$(CXX) $(LDFLAGS) -o $@ $< $(LDLIBS)
matrix_matrix_kokkos_cpu: ./src/matrix_matrix_kokkos_cpu.o
	$(CXX) $(LDFLAGS) -o $@ $< $(LDLIBS)
view_kokkos: ./src/view_kokkos.o
	$(CXX) $(LDFLAGS) -o $@ $< $(LDLIBS)
matrix_matrix_kokkos_teams: ./src/matrix_matrix_kokkos_teams.o
	$(CXX) $(LDFLAGS) -o $@ $< $(LDLIBS)


run_all: hello_kokkos matrix_matrix_kokkos matrix_matrix_kokkos_cpu view_kokkos matrix_matrix_kokkos_teams
	ONEAPI_DEVICE_SELECTOR=ext_oneapi_level_zero:gpu ./hello_kokkos
	ONEAPI_DEVICE_SELECTOR=ext_oneapi_level_zero:gpu ./matrix_matrix_kokkos
	ONEAPI_DEVICE_SELECTOR=ext_oneapi_level_zero:gpu ./matrix_matrix_kokkos_cpu
	ONEAPI_DEVICE_SELECTOR=ext_oneapi_level_zero:gpu ./view_kokkos
	ONEAPI_DEVICE_SELECTOR=ext_oneapi_level_zero:gpu ./matrix_matrix_kokkos_teams

clean:
	rm -f $(OBJS)

distclean: clean
	rm -f hello_kokkos
