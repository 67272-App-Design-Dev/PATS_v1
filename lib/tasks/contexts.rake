namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'contexts'
  # executing 'rake db:contexts' will cause this script to run
  task contexts: :environment do
    # Drop the old db and recreate from scratch
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    # Invoke rake db:migrate to set up db structure based on latest migrations
    Rake::Task["db:migrate"].invoke
    # Set up test database with that same structure
    Rake::Task["db:test:prepare"].invoke

    puts "---"

    # Now go get the contexts and run the create_all method, if present
    require "./test/contexts"
    include Contexts
    puts "Contexts enabled"

    if Contexts.respond_to?(:create_all)
      # Rails 8 way to reset connections
      ActiveRecord::Base.connection_pool.disconnect!
      # Re-establish connection
      ActiveRecord::Base.establish_connection(Rails.env.to_sym)
      # Verify the connection
      # puts "Current environment: #{Rails.env}"
      # config = ActiveRecord::Base.configurations.configs_for(env_name: Rails.env).first
      # puts "Database file: #{config.database}"

      puts "Building context..."
      create_all
      puts "Contexts built"
    end
  end
end
