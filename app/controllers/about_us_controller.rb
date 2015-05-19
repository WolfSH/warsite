class AboutUsController < ApplicationController
    def index
        # respond_to do |format|
        #     format.js { render action: index }
        # end
    end

    def advertisement
    end

    def news
    end

    def contacts

    end

    def history_of_faculty

    end

    def management_team

    end

    def download
        @file = params[:file]
        send_file 'public/files/' + @file + '.' + params[:format]
    end
end
