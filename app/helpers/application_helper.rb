module ApplicationHelper
    def responsive_image_tag(default_name, options={})
        large_name = default_name.gsub(%r{\.\w+$}, '_large\0')
        medium_name = default_name.gsub(%r{\.\w+$}, '_medium\0')
        small_name = default_name.gsub(%r{\.\w+$}, '_small\0')
        image_tag "","data-interchange" => "[#{asset_path(large_name)}, large],[#{asset_path(medium_name)}, only screen and (min-width: 40.063em) and (max-width: 64em)],[#{asset_path(small_name)}, only screen and (max-width: 40em)]"
    end
end
