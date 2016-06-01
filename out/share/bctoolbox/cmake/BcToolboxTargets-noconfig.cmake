#----------------------------------------------------------------
# Generated CMake target import file for configuration "".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "bctoolbox-static" for configuration ""
set_property(TARGET bctoolbox-static APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(bctoolbox-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C;CXX"
  IMPORTED_LOCATION_NOCONFIG "/home/test/VOIP/opt/lib/libbctoolbox.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS bctoolbox-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_bctoolbox-static "/home/test/VOIP/opt/lib/libbctoolbox.a" )

# Import target "bctoolbox-tester-static" for configuration ""
set_property(TARGET bctoolbox-tester-static APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(bctoolbox-tester-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "/home/test/VOIP/opt/lib/libbctoolbox-tester.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS bctoolbox-tester-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_bctoolbox-tester-static "/home/test/VOIP/opt/lib/libbctoolbox-tester.a" )

# Import target "bctoolbox" for configuration ""
set_property(TARGET bctoolbox APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(bctoolbox PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/home/test/VOIP/opt/lib/libbctoolbox.so.0"
  IMPORTED_SONAME_NOCONFIG "libbctoolbox.so.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS bctoolbox )
list(APPEND _IMPORT_CHECK_FILES_FOR_bctoolbox "/home/test/VOIP/opt/lib/libbctoolbox.so.0" )

# Import target "bctoolbox-tester" for configuration ""
set_property(TARGET bctoolbox-tester APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(bctoolbox-tester PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/home/test/VOIP/opt/lib/libbctoolbox-tester.so.0"
  IMPORTED_SONAME_NOCONFIG "libbctoolbox-tester.so.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS bctoolbox-tester )
list(APPEND _IMPORT_CHECK_FILES_FOR_bctoolbox-tester "/home/test/VOIP/opt/lib/libbctoolbox-tester.so.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
