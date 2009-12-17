use 5.008005;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'FTDId2xx',
    VERSION_FROM      => 'lib/FTDId2xx.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/FTDId2xx.pm', # retrieve abstract from module
       AUTHOR         => 'Matthias Voelker <m.matze@gmx.de>') : ()),
    LIBS              => ['-lftd2xx'], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I. -I/usr/local/include -I..', # e.g., '-I. -I/usr/include/other'
	# Un-comment this if you add C files to link with later:
#    OBJECT            => '$(O_FILES)', # link all the C files too
);
