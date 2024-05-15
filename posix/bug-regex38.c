/* Diagnose invalid back-reference in the ERE '()|\1' (BZ #18986).
   Copyright (C) 2018-2024 Free Software Foundation, Inc.
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

#include <regex.h>

#include <support/check.h>

static int
do_test (void)
{
  char const pattern[] = "0|()0|\\1|0";
  regex_t r;
  TEST_VERIFY_EXIT (regcomp (&r, pattern, REG_EXTENDED) == REG_ESUBREG);
  return 0;
}

#include <support/test-driver.c>
