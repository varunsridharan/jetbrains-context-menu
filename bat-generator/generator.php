<?php
define( 'BASEPATH', __DIR__ . '/../' );
define( 'INSTALL_PATH', 'E:\development-tools\apps' );
define( 'PROGRAM_PATH', '{folderName}\ch-0\\\%version%\\\{app}' );

$programs = array(
	'CLion'       => array(
		'title'   => 'CLion',
		'app'     => 'bin\clion64.exe',
		'version' => '202.7660.37',
	),
	'datagrip'    => array(
		'title'   => 'DateGrip',
		'app'     => 'bin\datagrip64.exe',
		'version' => '202.7319.56',
	),
	'dotMemory'   => array(
		'title'   => 'dotMemory',
		'app'     => 'dotMemory-%version%.exe',
		'version' => '202.0.20200930.91416',
	),
	'dotPeek'     => array(
		'title'   => 'dotPeek',
		'app'     => 'dotPeek-%version%.exe',
		'version' => '202.0.20200930.91416',
	),
	'dotTrace'    => array(
		'title'   => 'dotTrace',
		'app'     => 'dotTrace-%version%.exe',
		'version' => '202.0.20200930.91416',
	),
	'Goland'      => array(
		'title'   => 'Goland',
		'app'     => 'bin\goland64.exe',
		'version' => '202.7319.61',
	),
	'IDEA_C'      => array(
		'title'   => 'IDEA-C',
		'app'     => 'bin\idea64.exe',
		'version' => '202.7660.26',
	),
	'IDEA_E'      => array(
		'title'   => 'IDEA-E',
		'app'     => 'bin\idea64.exe',
		'version' => '202.7660.52',
	),
	'IDEA_U'      => array(
		'title'   => 'IDEA-U',
		'app'     => 'bin\idea64.exe',
		'version' => '202.7660.26',
	),
	'PhpStorm'    => array(
		'title'   => 'PhpStorm',
		'app'     => 'bin\phpstorm64.exe',
		'version' => '201.6668.153',
	),
	'PyCharm_C'   => array(
		'title'   => 'PyCharm-C',
		'app'     => 'bin\pycharm64.exe',
		'version' => '202.7660.27',
	),
	'PyCharm_E'   => array(
		'title'   => 'PyCharm-E',
		'app'     => 'bin\pycharm64.exe',
		'version' => '202.7660.53',
	),
	'PyCharm_P'   => array(
		'title'   => 'PyCharm-P',
		'app'     => 'bin\pycharm64.exe',
		'version' => '202.7660.27',
	),
	'ReSharper_U' => array(
		'title'   => 'ReSharper-U',
		'app'     => 'ReSharper-U-%version%.exe',
		'version' => '202.0.20200930.91416',
	),
	'Rider'       => array(
		'title'   => 'Rider',
		'app'     => 'bin\rider64.exe',
		'version' => '202.7660.16',
	),
	'RubyMine'    => array(
		'title'   => 'RubyMine',
		'app'     => 'bin\rubymine64.exe',
		'version' => '202.7660.39',
	),
	'WebStorm'    => array(
		'title'   => 'WebStorm',
		'app'     => 'bin\webstorm64.exe',
		'version' => '202.7660.23',
	),
);
foreach ( $programs as $program => $data ) {
	$path = BASEPATH . 'windows/' . $program;
	@mkdir( $path, 777, true );

	$enable       = file_get_contents( __DIR__ . '/enable.bat' );
	$search       = array( '{version}', '{path}', '{title}', '{regkey}', '{folderName}', '{installPath}' );
	$program_path = str_replace( '{app}', $data['app'], PROGRAM_PATH );
	$replace      = array( $data['version'], $program_path, $data['title'], $program, $data['title'], INSTALL_PATH );
	$enable       = str_replace( $search, $replace, $enable );

	$disable = file_get_contents( __DIR__ . '/disable.bat' );
	$disable = str_replace( '{regkey}', $program, $disable );

	file_put_contents( $path . '/enable.cmd', $enable );
	file_put_contents( $path . '/disable.cmd', $disable );
}
