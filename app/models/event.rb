class Event
  EVENTS = [
    {
      title: 'Orientations 2017',
      image: 'logo.png',
      content: 'In order to apply to La Cocina’s incubator program, you must attend an orientation workshop on starting a food business in the Bay Area. This workshop is free and open to the public but we suggest that you sign up ahead of time to make checking in easier. We will send a confirmation email 1 week before the orientation to confirm your sign up. All orientations take place on Wednesdays from 6-8pm at La Cocina.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://www.eventbrite.com/e/la-cocina-orientation-orientacion-de-la-cocina-tickets-19178270724',
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
      title: 'La Cocina Holiday Event',
      image: 'holiday_market.png',
      content: 'For one day in December, La Cocina will transform The Women’s Building into a pop-up holiday bazaar, creating a vibrant marketplace, with over 20 food vendors and DIY artisans, for natives and tourists alike to celebrate local entrepreneurship and find the perfect gift and treats for the holidays. Look forward to a weekend of food, crafts, music and more!',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://www.eventbrite.com/e/la-cocina-presents-el-mercado-a-holiday-market-tickets-27164304165',
          type: 'hollow'
        }
      ]
    }
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
