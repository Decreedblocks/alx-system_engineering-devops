# A puppet script to replay rewrite a line

$file_path = '/var/www/html/wp-settings.php'

#replace "phpp" with "php"

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_path}",
  path    => ['/bin','/usr/bin']
}
