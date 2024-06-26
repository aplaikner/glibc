/* Optimized strstr implementation for POWER7.
   Copyright (C) 2015-2024 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#define STRSTR __strstr_power7

#undef libc_hidden_builtin_def
#define libc_hidden_builtin_def(name)

#define STRLEN __strlen_power7
#define STRNLEN __strnlen_power7
#define STRCHR __strchr_power7
#ifdef SHARED
#define STRLEN_is_local
#define STRNLEN_is_local
#define STRCHR_is_local
#endif

#include <sysdeps/powerpc/powerpc64/power7/strstr.S>
