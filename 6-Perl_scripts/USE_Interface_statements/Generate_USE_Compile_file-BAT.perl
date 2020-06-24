# Generate_USE2_Compile_file-BAT.perl
# -----------------------------------

# Begin license text.                                                                                    
# _______________________________________________________________________________________________________
                                                                                                         
# Copyright 2019 Dr William R Case, Jr (dbcase29@gmail.com)                                              
                                                                                                         
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and      
# associated documentation files (the "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to   
# the following conditions:                                                                              
                                                                                                         
# The above copyright notice and this permission notice shall be included in all copies or substantial   
# portions of the Software.                                                                              
                                                                                                         
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS                                
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,                            
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE                            
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER                                 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,                          
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN                              
# THE SOFTWARE.                                                                                          
# _______________________________________________________________________________________________________
                                                                                                        
# End license text.                                                                                      

# This perl script is part of a process to generate and compile modules that contain USE_xxxxxx_Interface statements for MYSTRAN
# subroutines. It is intended to replace the error prone manual entering of USE Interface statements for each subroutine which
# are needed to insure that all CALL statements have the proper number and type of arguments. The description below describes the
# process, of which this perl script is a part (see (2) below):

# At the DOS prompt in the dir where the USE modules are to go (assuming all of the batch files below are in the current path):

#                   (1) Run USE1.BAT which executes perl script USE_Interface_statements.perl to create the fortran modules with
#                       the USE_xxxxxx_Interface code for all of the MYSTRAN subrs. USE_Interface_statements.perl scans MYSTRAN
#                       subroutines to find CALL statements and creates modules named subr-name_USE_IFs.f90 (where subr-name is
#                       the name of the MYSTRAN subroutine for which the interface statements are generated). A typical module 
#                       generated by USE_Interface_statements.perl is (for MYSTRAN subr READ_INI.f90 is:

#                             MODULE READ_INI_USE_IFs

#                             USE OPNERR_Interface
#                             USE OUTA_HERE_Interface
#                             USE MKJCARD_Interface
#                             USE WRITE_FILNAM_Interface
#                             USE SET_FILE_CLOSE_STAT_Interface

#                             END MODULE READ_INI_USE_IFs

#                       This module contains USE_xxxxxx_Interface statements for all of the unique CALL statements in MYSTRAN
#                       subr READ_INI that are not CONTAINd in READ_INI (since interfaces for CONTAINd subrs are automatically
#                       checked). Then, in subr READ_INI, a statement USE READ_INI_USE_IFs is included to use this module.
#                       This way, we can automatically have USE_xxxxxx_Interface statements in MYSTRAN subrs without having
#                       to enter tham manually (error prone - may miss some interface statements if we do it manually).

#                   (2) Run USE2.BAT %1 (where %1 = D or C) which executes this perl script to generate a batch file called 
#                       USE_Compile_file.BAT

#                   (3) Run USE_Compile_file.BAT %1 %2 (where %1 = deb or prod and %2 = D or C) which executes perl script
#                       BAT_compile_file.perl to generate a batch file called Compile_USE.BAT. (Note: BAT_compile_file.perl
#                       is the perl script that is also used to generate batch files to compile MYSTRAN subroutines)

#                   (4) Make sure you are in the USE directory (e.g. \MYSTRAN\USE_IFs)
#                       and run Compile_USE.BAT %1 (where %1 = D or C) to compile all of the modules that contain the
#                       USE xxxxxx_Interface statements for MYSTRAN subroutines

# All 4 steps have to be run initially. Thereafter, steps 1 and 4 should be run to update the module code whenever MYSTRAN subrs
# are modified (e.g. when  calls to new subrs are added or one some are dropped)

# Copyright (c) 2003 Bill Case.

# Change log:

# **********************************************************************************************************************************
print("ECHO OFF","\n"x2);

$program_name     = $0;
@dir_and_file     = split (/\\/,$program_name);
$num_parts        = @dir_and_file;
$perl_script_name = $dir_and_file[$num_parts-1];

$num_args         = 1;                                               # This is the number of input arguments ahead of the list of files

$num_files        = @ARGV - $num_args;    
print("rem The number of files input to this perl script (", $perl_script_name, ")", " was: ", $num_files, "\n"x2);

$input_switches = $ARGV[0];

$file_count = 1;

print("CD \\MYSTRAN\\USE_IFs","\n"x2);

do
{
   print("\\perl\\bin\\perl \\MYSTRAN\\Perl_scripts\\USE_Interface_statements\\USE_BAT_compile_file.perl   USE_IFs ",
       "  ", '"', $input_switches, '"', "   ", '"%1"', "   ");       # Do not advance a line (more to write)

   $filename            = $ARGV[$file_count+$num_args-1];

   @dir_and_file        = split (/\\/,$filename);
   $num_parts           = @dir_and_file;

   $input_file          = $dir_and_file[$num_parts-1];
   @input_file_parts    = split(/\./,$input_file);
   $subr_name           = $input_file_parts[0];
   $ext                 = $input_file_parts[1];
   $output_USE_IFs_file = $subr_name . "_USE_IFs" . "." . $ext;
#  printf ("%-s %-50s", "filename = ", $filename);   
#  printf ("%-s %-35s", ", input_file = ", $input_file);
#  printf ("%-s %-35s", ", output_USE_IFs_file = ", $output_USE_IFs_file);  

   printf("%-35s",$output_USE_IFs_file);                            # Do not advance a line (more to write)
   printf ("%6d %s",$file_count,"     ");                           # Do not advance a line (more to write)

   if ($file_count eq 1)
   {
      print ("\>  \\MYSTRAN\\BAT\\Comp-and-Link\\Compile_USE.BAT"); # Do not advance a line (more to write)
   }
   else
   {
      print ("\>\> \\MYSTRAN\\BAT\\Comp-and-Link\\Compile_USE.BAT"); # Do not advance a line (more to write)
   }

   print ("\n");                                                     # Line is complete so advance a line to handle next input line

   $file_count++;

}  until ($file_count > $num_files);

print("\n,", "CD \\MYSTRAN","\n"x2);
print("ECHO ON","\n");

exit 0;
