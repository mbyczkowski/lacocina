class Event
  EVENTS = [
    {
      title: 'Orientations 2017',
      subTitle: 'Our 2017 orientations will be on: Jan 25th, March 29th, May 31st, July 26th, September 27th, November 29th.',
      image: 'logo.png',
      content: 'In order to apply to La Cocina’s incubator program, you must attend an orientation workshop on starting a food business in the Bay Area. This workshop is free and open to the public but we suggest that you sign up ahead of time to make checking in easier. We will send a confirmation email 1 week before the orientation to confirm your sign up. All orientations take place on Wednesdays from 6-8pm at La Cocina.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://www.eventbrite.com/e/la-cocina-orientation-orientacion-de-la-cocina-tickets-28949360316',
          type: 'hollow'
        }
      ]
    },
    {
      title: 'Food & Entrepreneurship Conference',
      image: 'f&e_conf.png',
      content: 'For the past 5 years, the Food + Entrepreneurship Conference has been a gathering place for civic leaders, nonprofit innovators, and forward thinking food business owners to come together, rethink economic structures, share innovations and work together to build more equitable, vibrant and delicious cities. Leaders and innovators from as close as Oakland to as far as Helsinki have looked to La Cocina throughout the years to engage in dialogue and revolutionize the way we produce, eat and think about food.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'http://www.lacocinaconference.org',
          type: 'hollow'
        }
      ]
    },
    {
      title: 'La Cocina’s 5th Annual Fundraising Gala',
      subTitle: 'May 22nd, The Pearl SF',
      image: 'logo.png',
      content: 'A fundraising event to sustain La Cocina’s work and in celebration of the entrepreneurs of La Cocina. This year’s theme will honor long-time board member and chef traci des jardins for her influence in the industry and years of service to La Cocina.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://lacocinasf5thgala.eventbrite.com',
          type: 'hollow'
        },
        {
          label: 'SIGN UP AS VOLUNTEER',
          url: 'http://signup.com/go/V1QCNU',
          type: 'hollow'
        }
      ]
    },
    {
      title: 'F&B: Voices from the Kitchen: Refuge',
      subTitle: 'October 19th, Swedish American Music Hall, SF',
      image: 'logo.png',
      content: 'One night event of performance-based storytelling by oral historians & La Cocina Chefs, To share the voices, chefs and stories from the food industry that are off less heard. To highlight La Cocina Clients as important voices in the community. Elevate Perception of entrepreneurs and therefore increase opportunities offered to LC and LC clients.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'http://www.voicesfromthekitchen.org',
          type: 'hollow'
        },
        {
          label: 'SIGN UP AS VOLUNTEER',
          url: 'http://signup.com/go/NDFbFU',
          type: 'hollow'
        }
      ]
    },
    {
      title: 'La Cocina Tamalada',
      subTitle: 'December 13th, 2048 Folsom St, SF',
      image: 'logo.png',
      content: 'Join the city’s best tamale makers from La Cocina, as they work their masa magic, and then take your tamales home for your holiday parties. La Tamalada is an annual holiday celebration of food and family run by the family matriarchs. Sit down with our tamale masters for a hands on course on crafting your own tamales! Enjoy dinner and also take your tamales home!',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://lacocinasfelmercado.eventbrite.com',
          type: 'hollow'
        }
      ]
    },
  ]

  def self.all
    EVENTS.map{|e| Event.new(e) }
  end

  def self.find_by_id(id)
    all.select { |e| e.id == id }.first
  end

  def initialize(opts)
    @opts = opts
  end

  def id
    title.parameterize
  end

  def title
    @opts[:title]
  end

  def subTitle
    @opts[:subTitle]
  end

  def image
    @opts[:image]
  end

  def content
    @opts[:content]
  end

  def actions
    @opts[:actions]
  end
end
