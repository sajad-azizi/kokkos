set(CMAKE_CXX_COMPILER "/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-oneapi-compilers/2024.1.0-gcc-lymzqpv/compiler/2024.1/bin/icpx")
set(CMAKE_CXX_COMPILER_ARG1 "")
set(CMAKE_CXX_COMPILER_ID "IntelLLVM")
set(CMAKE_CXX_COMPILER_VERSION "2024.1.0")
set(CMAKE_CXX_COMPILER_VERSION_INTERNAL "")
set(CMAKE_CXX_COMPILER_WRAPPER "")
set(CMAKE_CXX_STANDARD_COMPUTED_DEFAULT "17")
set(CMAKE_CXX_EXTENSIONS_COMPUTED_DEFAULT "ON")
set(CMAKE_CXX_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters;cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates;cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates;cxx_std_17;cxx_std_20;cxx_std_23")
set(CMAKE_CXX98_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters")
set(CMAKE_CXX11_COMPILE_FEATURES "cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates")
set(CMAKE_CXX14_COMPILE_FEATURES "cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates")
set(CMAKE_CXX17_COMPILE_FEATURES "cxx_std_17")
set(CMAKE_CXX20_COMPILE_FEATURES "cxx_std_20")
set(CMAKE_CXX23_COMPILE_FEATURES "cxx_std_23")

set(CMAKE_CXX_PLATFORM_ID "Linux")
set(CMAKE_CXX_SIMULATE_ID "GNU")
set(CMAKE_CXX_COMPILER_FRONTEND_VARIANT "GNU")
set(CMAKE_CXX_SIMULATE_VERSION "4.2.1")




set(CMAKE_AR "/usr/bin/ar")
set(CMAKE_CXX_COMPILER_AR "CMAKE_CXX_COMPILER_AR-NOTFOUND")
set(CMAKE_RANLIB "/usr/bin/ranlib")
set(CMAKE_CXX_COMPILER_RANLIB "CMAKE_CXX_COMPILER_RANLIB-NOTFOUND")
set(CMAKE_LINKER "/usr/bin/ld")
set(CMAKE_MT "")
set(CMAKE_TAPI "CMAKE_TAPI-NOTFOUND")
set(CMAKE_COMPILER_IS_GNUCXX )
set(CMAKE_CXX_COMPILER_LOADED 1)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_CXX_ABI_COMPILED TRUE)

set(CMAKE_CXX_COMPILER_ENV_VAR "CXX")

set(CMAKE_CXX_COMPILER_ID_RUN 1)
set(CMAKE_CXX_SOURCE_FILE_EXTENSIONS C;M;c++;cc;cpp;cxx;m;mm;mpp;CPP;ixx;cppm;ccm;cxxm;c++m)
set(CMAKE_CXX_IGNORE_EXTENSIONS inl;h;hpp;HPP;H;o;O;obj;OBJ;def;DEF;rc;RC)

foreach (lang C OBJC OBJCXX)
  if (CMAKE_${lang}_COMPILER_ID_RUN)
    foreach(extension IN LISTS CMAKE_${lang}_SOURCE_FILE_EXTENSIONS)
      list(REMOVE_ITEM CMAKE_CXX_SOURCE_FILE_EXTENSIONS ${extension})
    endforeach()
  endif()
endforeach()

set(CMAKE_CXX_LINKER_PREFERENCE 30)
set(CMAKE_CXX_LINKER_PREFERENCE_PROPAGATES 1)
set(CMAKE_CXX_LINKER_DEPFILE_SUPPORTED )

# Save compiler ABI information.
set(CMAKE_CXX_SIZEOF_DATA_PTR "8")
set(CMAKE_CXX_COMPILER_ABI "ELF")
set(CMAKE_CXX_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CXX_LIBRARY_ARCHITECTURE "x86_64-unknown-linux-gnu")

if(CMAKE_CXX_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CXX_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CXX_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CXX_COMPILER_ABI}")
endif()

if(CMAKE_CXX_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "x86_64-unknown-linux-gnu")
endif()

set(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_CXX_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES "/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-dpct/2024.1.0-gcc-oz32aep/dpcpp-ct/2024.1/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-dpl/2022.5.0-gcc-eiz5r4d/dpl/2022.5/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-ippcp/2021.11.0-gcc-hhti4px/ippcp/2021.11/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-dal/2024.2.0-gcc-mm6m4ag/dal/2024.2/include/dal;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-ipp/2021.11.0-gcc-tngtfa7/ipp/2021.11/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-tbb/2021.12.0-gcc-cnei7wb/tbb/2021.12/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-dnn/2024.1.0-gcc-soyjen4/dnnl/2024.1/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-mkl/2024.1.0-gcc-z262y4r/mkl/2024.1/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-mpi/2021.12.0-gcc-obwyfto/mpi/2021.12/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-oneapi-compilers/2024.1.0-gcc-lymzqpv/compiler/2024.1/opt/oclfpga/include;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-oneapi-compilers/2024.1.0-gcc-lymzqpv/compiler/2024.1/opt/compiler/include;/dss/lrzsys/sys/spack/release/23.0.0/opt/x86_64/gcc/7.5.0-gcc-i2izh6q/include/c++/7.5.0;/dss/lrzsys/sys/spack/release/23.0.0/opt/x86_64/gcc/7.5.0-gcc-i2izh6q/include/c++/7.5.0/x86_64-pc-linux-gnu;/dss/lrzsys/sys/spack/release/23.0.0/opt/x86_64/gcc/7.5.0-gcc-i2izh6q/include/c++/7.5.0/backward;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-oneapi-compilers/2024.1.0-gcc-lymzqpv/compiler/2024.1/lib/clang/18/include;/usr/local/include;/usr/include")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "svml;irng;stdc++;imf;m;gcc_s;gcc;irc;dl;gcc_s;gcc;c;gcc_s;gcc;irc_s")
set(CMAKE_CXX_IMPLICIT_LINK_DIRECTORIES "/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-oneapi-compilers/2024.1.0-gcc-lymzqpv/compiler/2024.1/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-oneapi-compilers/2024.1.0-gcc-lymzqpv/compiler/2024.1/lib/clang/18/lib/x86_64-unknown-linux-gnu;/dss/lrzsys/sys/spack/release/23.0.0/opt/x86_64/gcc/7.5.0-gcc-i2izh6q/lib/gcc/x86_64-pc-linux-gnu/7.5.0;/dss/lrzsys/sys/spack/release/23.0.0/opt/x86_64/gcc/7.5.0-gcc-i2izh6q/lib64;/lib64;/usr/lib64;/dss/lrzsys/sys/spack/release/23.0.0/opt/x86_64/gcc/7.5.0-gcc-i2izh6q/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-oneapi-compilers/2024.1.0-gcc-lymzqpv/compiler/2024.1/opt/compiler/lib;/lib;/usr/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-dpl/2022.5.0-gcc-eiz5r4d/dpl/2022.5/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-ippcp/2021.11.0-gcc-hhti4px/ippcp/2021.11/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-dal/2024.2.0-gcc-mm6m4ag/dal/2024.2/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-ipp/2021.11.0-gcc-tngtfa7/ipp/2021.11/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-tbb/2021.12.0-gcc-cnei7wb/tbb/2021.12/lib/intel64/gcc4.8;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-dnn/2024.1.0-gcc-soyjen4/dnnl/2024.1/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-mkl/2024.1.0-gcc-z262y4r/mkl/2024.1/lib;/dss/lrzsys/sys/spack/release/24.1.1/opt/x86_64/intel-toolkit/2024.1.0/intel-oneapi-mpi/2021.12.0-gcc-obwyfto/mpi/2021.12/lib")
set(CMAKE_CXX_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
