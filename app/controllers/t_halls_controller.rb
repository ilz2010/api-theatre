class THallsController < ResourceController
    MODEL_CLASS = ::THall

    def index
        super

        if params[:preview] == 'true'
            @previews = {}
            @models.ids.each { |id|
                @previews[id] = get_preview_for_hall(id)
            }
        end
    end

    private
    def get_preview_for_hall (id)
        Base64.encode64 File.binread(Rails.public_path + 'none.png')
    end
end