#
#  Copyright 2016 Matteo Alessio Carrara <sw.matteoac@gmail.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#


######################## Root for the installation. ############################

# All the other installation directories should be subdirectories of one of these two,
# and nothing should be directly installed into these two directories.
# Generally, $(exec_prefix) is used for directories that contain machine-specific files
# (such as executables and subroutine libraries), while $(prefix) is used directly
# for other directories.

prefix = /usr/local
exec_prefix = $(prefix)


######################### Executable programs ##################################

# The directory for installing executable programs that users can run.
bindir = $(exec_prefix)/bin

# The directory for installing executable programs that can be run from the shell,
# but are only generally useful to system administrators.
sbindir = $(exec_prefix)/sbin

# The directory for installing executable programs to be run by other programs
# rather than by users.
# The definition of ‘libexecdir’ is the same for all packages, so you should install
# your data in a subdirectory thereof. Most packages install their data under
# $(libexecdir)/package-name/, possibly within additional subdirectories thereof,
# such as $(libexecdir)/package-name/machine/version.
libexecdir = $(exec_prefix)/libexec


############################# Data files #######################################

# The root of the directory tree for read-only architecture-independent data files.
datarootdir = $(prefix)/share

# The directory for installing idiosyncratic read-only architecture-independent
# data files for this program.
# The definition of ‘datadir’ is the same for all packages, so you should install
# your data in a subdirectory thereof. Most packages install their data under
# $(datadir)/package-name/.
datadir = $(datarootdir)

# The directory for installing read-only data files that pertain to a single machine
# – that is to say, files for configuring a host. Mailer and network configuration
# files, /etc/passwd, and so forth belong here.
# All the files in this directory should be ordinary ASCII text files.
# Do not install executables here in this directory (they probably belong in
# $(libexecdir) or $(sbindir)). Also do not install files that are modified
# in the normal course of their use (programs whose purpose is to change the
# configuration of the system excluded). Those probably belong in $(localstatedir).
sysconfdir = $(prefix)/etc

# The directory for installing architecture-independent data files which
# the programs modify while they run.
sharedstatedir = $(prefix)/com

# The directory for installing data files which the programs modify while they run,
# and that pertain to one specific machine.
# Users should never need to modify files in this directory to configure
# the package’s operation; put such configuration information in separate files
# that go in $(datadir) or $(sysconfdir).
localstatedir = $(prefix)/var

# The directory for installing data files which the programs modify while they run,
# that pertain to one specific machine, and which need not persist longer than
# the execution of the program—which is generally long-lived, for example, until the next reboot.
# PID files for system daemons are a typical use. In addition, this directory
# should not be cleaned except perhaps at reboot, while the general /tmp (TMPDIR)
# may be cleaned arbitrarily.
runstatedir = $(localstatedir)/run


######################### Specific types of files ##############################

# The directory for installing header files to be included by user programs with
# the C ‘#include’ preprocessor directive.
# Most compilers other than GCC do not look for header files in directory /usr/local/include.
# So installing the header files this way is only useful with GCC. Sometimes
# this is not a problem because some libraries are only really intended to work
# with GCC. But some libraries are intended to work with other compilers. They
# should install their header files in two places, one specified by includedir
# and one specified by oldincludedir.
includedir = $(prefix)/include

# The directory for installing ‘#include’ header files for use with compilers
# other than GCC.
# The Makefile commands should check whether the value of oldincludedir is empty.
# If it is, they should not try to use it; they should cancel the second
# installation of the header files.
# A package should not replace an existing header in this directory unless
# the header came from the same package. Thus, if your Foo package provides
# a header file foo.h, then it should install the header file in the oldincludedir
# directory if either (1) there is no foo.h there or (2) the foo.h that exists
# came from the Foo package.
# To tell whether foo.h came from the Foo package, put a magic string in the
# file—part of a comment—and grep for that string.
oldincludedir = /usr/include

# The directory for installing documentation files (other than Info) for this package.
# There should be a subdirectory "yourpkg".
# The yourpkg subdirectory, which may include a version number, prevents collisions
# among files with common names, such as README.
docdir = $(datarootdir)/doc

# The directory for installing the Info files for this package.
# infodir is separate from docdir for compatibility with existing practice.
infodir = $(datarootdir)/info

# Directories for installing documentation files in the particular format.
# Packages which supply several translations of their documentation should install
# them in $(htmldir)/ll, $(pdfdir)/ll, etc. where ll is a locale abbreviation
# such as ‘en’ or ‘pt_BR’.
htmldir = $(docdir)
dvidir = $(docdir)
pdfdir = $(docdir)
psdir = $(docdir)

# The directory for object files and libraries of object code.
# Do not install executables here, they probably ought to go in $(libexecdir) instead.
libdir = $(exec_prefix)/lib

# The directory for installing any Emacs Lisp files in this package.
lispdir = $(datarootdir)/emacs/site-lisp

# The directory for installing locale-specific message catalogs for this package.
# This directory usually has a subdirectory per locale.
localedir = $(datarootdir)/locale


######################### Unix-style man pages #################################

# The top-level directory for installing the man pages (if any) for this package.
mandir = $(datarootdir)/man

man1dir = $(mandir)/man1
man2dir = $(mandir)/man2
man3dir = $(mandir)/man3
man4dir = $(mandir)/man4
man5dir = $(mandir)/man5
man6dir = $(mandir)/man6
man7dir = $(mandir)/man7
man8dir = $(mandir)/man8
man9dir = $(mandir)/man9

# The file name extension for the installed man page.
manext = .1

man1ext = .1
man2ext = .2
man3ext = .3
man4ext = .4
man5ext = .5
man6ext = .6
man7ext = .7
man8ext = .8
man9ext = .9
