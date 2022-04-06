# Datashield for Azure Pipelines testing.
#
# Install mysql and mongodb, include test data but don't install the firewall.
# This is an example please change to meet the needs of your install. Consider changing any passwords in this file!
#

class { ::datashield:
  test_data      => true,         # Install the test data
  firewall       => false,        # Do not install the firewall
  mysql          => true,         # Install mysql server
  mongodb        => true,         # Install mongodb server
  remote_mongodb => false,        # There is not a remote mongodb server
  remote_mysql   => false,        # There is not a remote mysql server

  dsbase_githubusername      => 'datashield',
  dsbase_ref                 => '6.2',
  dsdanger_githubusername    => 'datashield',
  dsdanger_ref               => ''
}
