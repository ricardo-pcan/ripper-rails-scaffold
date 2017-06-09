namespace :db do
  namespace :seed do
    desc 'Loads the seed:jefe data from db/seeds'
    task :power_boss, [:data] => [:environment] do |_t, args|
      begin
        list = args[:data].split(':') unless args[:data].nil?
        if list.nil?
          path = "#{Rails.root}/db/seeds/#{Rails.env}.rb"
          load(path)
        else
          results = list.reject!(&:empty?)
          if results.size == 1
            path = "#{Rails.root}/db/seeds/#{results[0]}.rb"
            validate(path)
          elsif results.size >= 2
            path = "#{Rails.root}/db/seeds/#{results[0]}/#{results[1]}.rb"
            validate(path)
          end
        end
      rescue
        p 'Error: bad query'
      end
    end
  end
end

def validate(path)
  p File.exist? path
  if File.exist? path
    load(path)
  else
    p 'Error: path inexistent or unknow'
  end
end
