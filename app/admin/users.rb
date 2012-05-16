ActiveAdmin.register User do
  
  filter :groups_id, :as => :check_boxes, :collection => proc {Group.all}
  filter :username
  filter :realname
  filter :email
  filter :created_at
  filter :updated_at
  #scope :all, :default => true

  index do
    column :id 
    column :username
    column :realname
    column :email
    column "Groups" do |user|
      (user.groups.map{ |g| g.name }).join(', ')
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :username
      f.input :realname
      f.input :email
      f.input :groups, :as => :check_boxes
    end
    f.buttons
  end

  show do
    div :class => 'panel' do
      h3 'User Details'
      div :class => 'panel_contents' do
        div :class => 'attributes_table user' do
          table do
            tr do
              th { 'Username' }
              td { user.username }
            end
            tr do
              th { 'Realname' }
              td { user.realname }
            end
            tr do
              th { 'Email' }
              td { user.email }
            end
            tr do
              th { 'Groups' }
              td { (user.groups.map { |g| g.name }).join(', ') }
            end
          end 
        end 
      end 
    end 
  end #End of show
end
