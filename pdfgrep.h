/***************************************************************************
 *   Copyright (C) 2015-2023 by Hans-Peter Deifel                          *
 *   hpd@hpdeifel.de                                                       *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,      *
 *   Boston, MA 02110-1301 USA.                                            *
 ***************************************************************************/

#ifndef PDFGREP_H
#define PDFGREP_H

#include "config.h"
#include "exclude.h"
#include "intervals.h"

#include <vector>
#include <string>

/* Exit codes. */
enum {
	/* EXIT_SUCCESS = 0 */

	// no match was found
	EXIT_NOT_FOUND = 1,
	// an error occured
	EXIT_ERROR = 2,
};


/* Options */
// -r and -R
enum class Recursion {
	NONE,
	FOLLOW_SYMLINKS,
	DONT_FOLLOW_SYMLINKS
};
// -l and -L
enum class OnlyFilenames {
	NOPE,
	WITH_MATCHES,
	WITHOUT_MATCH
};
// -n
enum class PagenumType { INDEX, LABEL };


/* Configs */
struct Colorconf {
	char *filename;
	char *pagenum;
	char *highlight;
	char *separator;
};

// Controls, what to print
struct Outconf {
	bool filename = false;
	bool pagenum = false;
	PagenumType pagenum_type = PagenumType::INDEX;
	bool color = false;
	bool only_matching = false;
	bool null_byte_sep = false;
	std::string prefix_sep = ":";

	// true, if we need to print context separators between lines
	bool context_mode = false;
	int context_before = 0;
	int context_after = 0;

	Colorconf colors;
};

/* All structured option settings */
struct Options {
	bool ignore_case = false;                           // -i
	Recursion recursive = Recursion::NONE;              // -r or -R
	bool count = false;                                 // -c
	bool pagecount = false;                             // -p
	bool quiet = false;                                 // -q
	// vector of all passwords to try on any pdf
	std::vector<std::string> passwords;                 // --password
	int max_count = 0;                                  // -m
	bool debug = 0;                                     // --debug
	bool warn_empty = false;                            // --warn-empty
#ifdef HAVE_UNAC
	bool use_unac = false;
#endif
	Outconf outconf;                                    // Output config
	ExcludeList excludes;
	ExcludeList includes;
	bool use_cache = false;
	std::string cache_directory;
	IntervalContainer page_range;                       // --page-range
	OnlyFilenames only_filenames = OnlyFilenames::NOPE; // -l or -L
};

#ifdef HAVE_UNAC
/* convenience layer over libunac */
std::string simple_unac(const Options &opts, const std::string str);
#endif

#endif /* PDFGREP_H */

/* Local Variables: */
/* mode: c++ */
/* End: */
