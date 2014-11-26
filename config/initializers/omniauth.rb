OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :google_oauth2, '459743608929-od408ggrdp0m90lt2f07nci5sl4eo235.apps.googleusercontent.com', '4NofMlCEevKAEQh1ElwQcF3g', {client_options:
		{ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
	provider :facebook, '305469676303257', '04095589725c319641a3ccd1b26ab75f',  {client_options:
		{ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
	provider :twitter, '5HqUZLCvKqYowhSOgirJJPcjm', 'JDvcbu9sVkRJWL4YD07yk7nXuhF0O2g9kwvnGwj406M06VElEY', {client_options:
		{ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end