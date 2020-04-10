module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Ryan Miller | My Portfolio Website"
    @seo_keywords = "Ryan Miller Portfolio"
  end
end
