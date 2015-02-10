# eversion-yamj3
Eversion, the flash interface for YAMJ3 on the Syabas Embedded Players
Copyright (C) 2012  Bryan Socha, aka Accident
Copyright (C) 2015  Diodato (YAMJ3 port)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

*************
YAMJ3 PORTING
*************

Read file "YAMJ3 Readme"

************************************
INCOMPLETE SOURCE/HOW TO SETUP FLASH
************************************

Eversion includes code that requires an agreement with Syabas.   To find
the missing pieces, you must signup at http://developer.popbox.com and in
the general forum you'll find the protected download of the missing pieces.

Use the SDK docs from syabas for how to setup Flash for Flashlite and API DEV

All debug code is in the form of trace statements.  When you pushlish Eversion
for use on the embedded hardware, make sure you select the omit trace statement
option under publish settings.

Eversion is published using Adobe Flash CS5.5.  The PHF file is just the swf
renamed

An additional setup in flash is added where it's debugged/published in device central
I'm not sure if that carries over in the FLA file or a flash itself setting you need
to adjust.

***********
CS4 and CS5
***********

As requested, CS4 and CS5 fla files have been saved.   These have never been tried and
it's normally built from the fla file with cs5.5

*****************
UGLY CODE WARNING
*****************

This was in part, my learn flash project.   In an attempt to get as much speed out
of embedded flashlite hardware, I threw out the rules and broke them all in an
attempt to gain nanoseconds.   It's not pretty but it works, works reliable and
used by thousands for their home jukebox expeirence.

****************
RELEASE_ORIGINAL
****************

This directory is an exact replica of the rar and zips made up to download.  It's the
master of the release.


Eversion
--------
www.dentedboxes.com
accident@dentedboxes.com
