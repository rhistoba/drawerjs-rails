class HomeController < ApplicationController
  def index
  end

  def save
    encode_image_data = params[:image_data]
    if encode_image_data.present?
      decode_image_data = Base64.decode64(encode_image_data.split(',')[1])
      File.binwrite('tmp/test.png', decode_image_data)
    end
    head :ok
  end
end
