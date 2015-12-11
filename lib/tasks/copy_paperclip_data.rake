desc "Copy paperclip data"
task :copy_paperclip_data => :environment do

  def move_images klass, attachment_name
    print "Moving #{attachment_name.pluralize} for #{klass}: "
    instances = klass.find :all
    instances.each do |instance|
      file_name_method = attachment_name + "_file_name"
      unless instance.send(file_name_method).blank?
        filename = Rails.root.join('public', 'system', attachment_name.pluralize, instance.id.to_s, 'original', instance.send(file_name_method))
        if File.exists? filename
          old_attachment_file = File.new filename
          instance.send(attachment_name + "=", old_attachment_file)
          instance.save
          old_attachment_file.close
          print "."
        end
      end
    end
    print " [DONE]"
    puts
  end

  move_images Pin, 'image'

end
