##
# Exemplify rake tasks
#
# Will help to create configurations files from their .example templates 
# See https://github.com/Velid/exemplify for Readme and examples
#
namespace :exemplify do

  FileList['config/**/*.example'].each do |template|
    target = template.chomp('.example')
    
    desc "Create configuration file #{target} from its .example template}"
    task target => template do 

      # Abort if target file already exists
      if File.exists? target
        puts "[WARNING] Specified file #{target} already exists, skipping"
      else
        # Proceed if example file has been found
        puts "[INFO] Template file #{template} found, will exemplify now"
        begin 
          cp template, target
          puts "[OK] Created #{target} from template"
        rescue Exception => error
          puts "[ERROR] Failed to copy template file to #{target}: #{error}"
        end
      end

    end
    # Add generic task to load all targets
    task :all => target

  end

end