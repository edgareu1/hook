module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["meta_title"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["meta_description"]
  end

  def meta_image
    meta_image = (content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META["meta_image"])

    # A little twist so that it work equally with an asset or a url
    meta_image.starts_with?("http") ? meta_image : image_url(meta_image)
  end

  def meta_icon
    meta_icon = (content_for?(:meta_icon) ? content_for(:meta_icon) : DEFAULT_META["meta_icon"])

    # A little twist so that it work equally with an asset or a url
    meta_icon.starts_with?("http") ? meta_icon : image_url(meta_icon)
  end
end
