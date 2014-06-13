class NinjahippoGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)

  def copy_files
    copy_file 'ninjahippo_creds.rb', 'config/initializers/ninjahippo_creds.rb'

    copy_file 'ninjahippo_controller.rb', 'app/controllers/ninjahippo_controller.rb'

    copy_file 'show.html.erb', 'app/views/ninjahippo/show.html.erb'
  end
end