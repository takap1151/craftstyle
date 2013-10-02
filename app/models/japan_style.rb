class JapanStyle < ActiveRecord::Base
  attr_accessible :article_image, :article_text, :article_title, :article_text_jp, :reference_name, :reference_url
end
