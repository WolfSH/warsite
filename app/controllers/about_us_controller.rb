class AboutUsController < ApplicationController
    def index
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
