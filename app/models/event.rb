class Event
  EVENTS = [
    {
      title: 'Orientations 2017/2018',
      subTitle: 'Our 2017 orientations will be on: November 29th. Our 2018 orientations will be on: January 31st, March 28th, May 30th, July 25th, September 26th and November 28th.',
      image: 'logo.png',
      content: 'In order to apply to La Cocina’s incubator program, you must attend an orientation workshop on starting a food business in the Bay Area. This workshop is free and open to the public but we suggest that you sign up ahead of time to make checking in easier. We will send a confirmation email 1 week before the orientation to confirm your sign up. All orientations take place on Wednesdays from 6-8pm at La Cocina.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://www.eventbrite.com/e/la-cocina-orientation-orientacion-de-la-cocina-tickets-19178264706',
          type: 'hollow'
        }
      ]
    },
    {
      title: 'Office Hours',
      subTitle: 'Our Office Hours will be: December 14th, February 15th, April 19th, June 21st, August 16th, October 18th and November 15th.',
      image: 'logo.png',
      content: 'Please see the event website for more details.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://www.eventbrite.com/e/office-hours-horas-de-consulta-tickets-19178682957',
          type: 'hollow'
        },
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
    {
      title: 'Drop-In Market',
      subTitle: 'Our Market will be on: February 21st, May 9th and August 8th.',
      image: 'logo.png',
      content: 'The Drop in Market is an easy-going, casual and fun event where you and your business idea is the center of attention. The La Cocina staff and volunteering food professionals are here to listen to you and give you feedback on what works and what might need some extra attention still. We know first hand how difficult it can be to start taking steps to formalize a business and we congratulate on beginning down that road. Our Drop in Market is a wonderful opportunity for you to make what we hope will be the firs of many sales, more importantly however, it will provide you with a place in which you can get real time feed back from a number of different industry experts.
Bring: Your signature dish!',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://www.eventbrite.com/e/la-cocina-drop-in-market-el-mini-mercado-tickets-21686816853',
          type: 'hollow'
        },
      ]
    },
    {
      title: 'La Cocina Application Review Workshop',
      subTitle: 'Our application review workshops will be held on: February 28th, May 16th and August 22nd.',
      image: 'logo.png',
      content: 'Come join us for a workshop on how to best go about filling out our application. In this limited attendee workshop, we will cover key areas of focus and in general recommended approach when filling out our application. Our workshop will not only serve to make you a better applicant but it will also highlight areas of your business plan and concept that might need further revision. We highly recommend this workshop for people who are serious about applying to La Cocina.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://www.eventbrite.com/e/la-cocina-application-review-workshop-taller-de-aplicacion-a-la-cocina-tickets-39629999395',
          type: 'hollow'
        },
      ]
    },
    {
      title: 'Food & Entrepreneurship Conference',
      subTitle: 'April 17-18th, Golden Gate Club, 135 Fisher Loop, SF',
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
