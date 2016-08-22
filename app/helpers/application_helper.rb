module ApplicationHelper
  def responsive_image_tag(default_name, options={})
    large_name = default_name.gsub(%r{\.\w+$}, '_large\0')
    medium_name = default_name.gsub(%r{\.\w+$}, '_medium\0')
    small_name = default_name.gsub(%r{\.\w+$}, '_small\0')
    image_tag "","data-interchange" => "[#{asset_path(large_name)}, large],[#{asset_path(medium_name)}, only screen and (min-width: 40.063em) and (max-width: 64em)],[#{asset_path(small_name)}, only screen and (max-width: 40em)]"
  end

  def menu_items
    [
      {
        name: 'About us',
        url: '#',
        submenu: [
          {
            name: 'Mission',
            url: '/mission',
          },
          {
            name: 'People',
            url: '/people',
          },
          {
            name: 'Press',
            url: '/press',
          }
        ]
      },
      {
        name: 'Get Involved',
        url: '#',
        submenu: [
          {
            name: 'Donate',
            url: '/donate'
          },
          {
            name: 'Volunteer',
            url: '/volunteer'
          },
          {
            name: 'Other Ways',
            url: '/other_ways_to_help'
          }
        ]
      },
      {
        name: 'Events',
        url: '/events'
      },
      {
        name: 'Start A Business',
        url: '#',
        submenu: [
          {
            name: 'Learn More & Apply',
            url: '/coming_soon'
          },
          {
            name: 'Resources For Business Owners',
            url: '/coming_soon'
          }
        ]
      },
      {
        name: 'Cater With Us',
        url: '/catering'
      },
      {
        name: 'Shop',
        url: 'http://lacocinastore.mybigcommerce.com'
      }
    ]
  end
end
