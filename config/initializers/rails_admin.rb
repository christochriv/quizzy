RailsAdmin.config do |config|

  config.main_app_name = Proc.new { |controller| [ "Novastoria", "BackOffice - #{controller.params[:action].try(:titleize)}" ] }

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    config.included_models = [
                              "User", 
                              "Question", 
                              "AnswersSet"
                              ]

    config.navigation_static_links = {
                                      'Google' => 'http://www.google.com'
    }

    config.model 'User' do
      # list do
      #   field :first_name do
      #     label "Prénom"
      #   end
      #   field :last_name
      # end

      # show do
      #  field :first_name do
      #     label "Prénom"
      #   end
      #   field :last_name 
      # end

      # edit do
      #    field :first_name do
      #     label "Prénom"
      #   end
      #   field :last_name
      # end

    end

    config.model 'Question' do
      list do
        field :query do
          label "Question"
          help "test du help"
        end
        field :explication
      end

      # show do
      #  field :first_name do
      #     label "Prénom"
      #   end
      #   field :last_name 
      # end

      # edit do
      #    field :first_name do
      #     label "Prénom"
      #   end
      #   field :last_name
      # end

    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

end
