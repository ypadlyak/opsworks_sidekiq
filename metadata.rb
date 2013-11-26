maintainer       "Draker"
maintainer_email "devops@drakerenergy.com"
license          "MIT"
description      "Configure and deploy sidekiq on opsworks."

name   'opsworks_sidekiq'
recipe 'opsworks_sidekiq::setup',     'Set up delayed_job worker.'
recipe 'opsworks_sidekiq::configure', 'Configure delayed_job worker.'
recipe 'opsworks_sidekiq::deploy',    'Deploy delayed_job worker.'
recipe 'opsworks_sidekiq::undeploy',  'Undeploy delayed_job worker.'
recipe 'opsworks_sidekiq::stop',      'Stop delayed_job worker.'

depends 'deploy'
