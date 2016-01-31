RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)
  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard # mandatory
    index # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Result do
    edit do
      field :name
      field :description
      field :attachment
      field :slug
      field :is_new
      field :course_id, :enum do
        enum do
          Course.all.collect { |c| [c.course_name, c.id] }
        end
      end
    end
  end

  config.model 'Announcement' do
    edit do
      field :heading
      field :description
      field :attachment
      field :course_id, :enum do
          enum do
            Course.all.collect { |c| [c.course_name, c.id] }
          end
      end
    end
  end

  config.model Faculty do
    edit do
      field :name
      field :image_path
      field :qualification
      field :is_teaching
      field :joined_year
      field :total_experience
      field :is_chairman
    end
  end

  config.model NonTeachingStaff do
    edit do
      field :name
      field :image_path
      field :qualification
      field :designation
      field :is_technical
      field :joined_in
    end
  end

end
