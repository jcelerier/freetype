# FindBrotliDec.cmake
#
# Copyright (C) 2019-2024 by
# David Turner, Robert Wilhelm, and Werner Lemberg.
#
# Written by Werner Lemberg <wl@gnu.org>
#
# This file is part of the FreeType project, and may only be used, modified,
# and distributed under the terms of the FreeType project license,
# LICENSE.TXT.  By continuing to use, modify, or distribute this file you
# indicate that you have read the license and understand and accept it
# fully.
#
#
# Try to find libbrotlidec include and library directories.
#
# If found, the following variables are set.
#
#   BROTLIDEC_INCLUDE_DIRS
#   BROTLIDEC_LIBRARIES

find_path(BROTLIDEC_INCLUDE_DIRS
  NAMES brotli/decode.h
  PATH_SUFFIXES brotli)

find_library(BROTLIDEC_LIBRARIES
  NAMES brotlidec)


include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
  BrotliDec
  REQUIRED_VARS BROTLIDEC_INCLUDE_DIRS BROTLIDEC_LIBRARIES
  FOUND_VAR BROTLIDEC_FOUND
  VERSION_VAR BROTLIDEC_VERSION)

mark_as_advanced(
  BROTLIDEC_INCLUDE_DIRS
  BROTLIDEC_LIBRARIES)
