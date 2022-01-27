class ImgUploader < CarrierWave::Uploader::Base
    include Cloudinary::CarrierWave 
    include CarrierWave::RMagick
    
    version :normal do 
        process :auto_orient 
    end
    
    def auto_orient 
        manipulate! do |img|
            img.auto_orient! 
        end 
    end 

    # Restrict uploads to images only
    def extension_white_list
        %w(jpg jpeg gif png)
    end
end