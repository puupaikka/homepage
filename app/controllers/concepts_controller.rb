class ConceptsController < ApplicationController
    def concepts
    end

    def image_read
        image_name="app/asset/images/fig1.png"
        image=params[:image_file]
        File.binwrite("#{image_name}", image.read)

    end
end
