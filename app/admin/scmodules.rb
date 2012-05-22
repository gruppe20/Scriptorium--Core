ActiveAdmin.register Scmodule do
  sidebar :actions do
    button_to "Update modules", "/admin/scmodules/update_modules", :method => :post, :confirm => "Are you sure?"
  end

  collection_action :update_modules, :method => :post do
    
    @dirs = Dir.glob("lib/scmodules/*")

    for dir in @dirs
      if File.directory? dir 
        # if has a name.gemspec file(it means it's an engine/gem)
          # Insert to Gemfile and mount in routes
      end
    end
    raise @dirs.to_json
  end
end
