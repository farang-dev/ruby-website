namespace :routes do
    desc 'Print out all defined routes in match order, with names.'
    task :list => :environment do
      Rails.application.reload_routes!
      routes = Rails.application.routes.routes
      puts 'Routes:'
      routes.each do |route|
        puts "  #{route.name.to_s.ljust(30)} #{route.path.spec}"
      end
    end
  end
  