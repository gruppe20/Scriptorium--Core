ActiveAdmin.register Group do
  


  show do
    div :class => 'panel' do
      h3 'User Details'
      div :class => 'panel_contents' do
        div :class => 'attributes_table group' do
          table do
            tr do
              th { 'Name' }
              td { group.name }
            end
            tr do
              th { 'Members' }
              td { (group.users.map { |u| u.username }).join(' ') }
            end
          end 
        end 
      end 
    end 
  end #End of show
end
