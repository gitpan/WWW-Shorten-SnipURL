use Module::Build;

my $build = Module::Build->new(
  module_name => 'WWW::Shorten::SnipURL',
  license     => 'perl',
  requires    => {
    'perl'                => '5.006',
    'WWW::Shorten'        => 0,
  },
  build_requires => {
    'Test::More'          => '0.47',
  },
  build_recommends => {
    'Test::Pod'           => 0,
    'Test::Pod::Coverage' => 0,
  },               
  create_makefile_pl => 'traditional',
  meta_merge => {
    resources => {
      repository => 'git://github.com/davorg/www-shorten-snipurl.git',
      homepage   => 'http://code.mag-sol.com/WWW-Shorten-SnipURL/',
    },
  },
);

$build->create_build_script;
