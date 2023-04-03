include(FindPackageHandleStandardArgs)

#[=====================================================[.rst:
FindLibCBOR
-----------

Result Variables
^^^^^^^^^^^^^^^^

This module defines the following variables:

``LIBCBOR_FOUND``
  system has LibCBOR
``LIBCBOR_INCLUDE_DIRS``
  the LibCBOR include directories
``LIBCBOR_LIBRARIES``
  Link these to use LibCBOR

#]=====================================================]

find_path(LIBCBOR_INCLUDE_DIR cbor.h
        PATH_SUFFIXES include
        )

# find libcbor.so and set LIBCBOR_FOUND to true
find_library(LIBCBOR_LIBRARY NAMES cbor)

find_package_handle_standard_args(LibCBOR
                                  DEFAULT_MSG
                                  LIBCBOR_LIBRARY LIBCBOR_INCLUDE_DIR
                                  )

if (LIBCBOR_FOUND)
    set(LIBCBOR_LIBRARIES ${LIBCBOR_LIBRARY})
    set(LIBCBOR_INCLUDE_DIRS ${LIBCBOR_INCLUDE_DIR})
endif()

mark_as_advanced(LIBCBOR_LIBRARY LIBCBOR_INCLUDE_DIR)
