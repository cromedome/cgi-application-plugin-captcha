use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'CGI::Application::Plugin::CAPTCHA',
    license             => 'perl',
    dist_author         => 'Jason A. Crome <cromedome@cpan.org>',
    dist_version_from   => 'lib/CGI/Application/Plugin/CAPTCHA.pm',
    requires => {
        'Test::More'        => 0,
        'CGI::Application'  => '>= 4.00',
        'GD::SecurityImage' => 0,
    },
    create_makefile_pl  => 'traditional',
    create_readme       => 1,
    add_to_cleanup      => [ 'CGI-Application-Plugin-CAPTCHA-*' ],
);

$builder->create_build_script();
