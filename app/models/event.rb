class Event
  EVENTS = [
    {
      title: 'La Cocina’s 6th Annual Gala',
      subTitle: 'May 21st, City View at Metreon',
      image: 'logo.png',
      content: 'La Cocina\'s 6th Annual Gala is a celebration of La Cocina entrepreneurs, whose success has grown an idea into an institution, and, in doing so, has inspired organizations from Salt Lake City to Riyadh to London to adopt our model. On May 21st at City View Metreon, four immigrant chefs from kitchen incubators from around the country will prepare a multi-course meal showcasing a new American cuisine.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://lacocinasfauction.org',
          type: 'hollow'
        },
      ]
    },
    {
      title: 'F&B: Voices from the Kitchen',
      subTitle: 'June 1st, The Gray Theater, 2665 Mission Street, SF',
      image: 'logo.png',
      content: 'F&B is a twice-yearly immersive storytelling experience sharing the voices and stories for the food industry that are less-often heard.',
      actions: [
        {
          label: 'VISIT EVENT WEBSITE',
          url: 'https://voicesfromthekitchen.org',
          type: 'hollow'
        },
      ]
    },
    {
      title: 'Drop-In Market',
      subTitle: 'Our Market will be on: May 9th and August 8th.',
      image: 'logo.png',
      content: 'The Drop in Market is an easy-going, casual and fun event where you and your business idea is the center of attention. The La Cocina staff and volunteering food professionals are here to listen to you and give you feedback on what works and what might need some extra attention still. We know first hand how difficult it can be to start taking steps to formalize a business and we congratulate on beginning down that road. Our Drop in Market is a wonderful opportunity for you to make what we hope will be the firs of many sales, more importantly however, it will provide you with a place in which you can get real time feed back from a number of different industry experts.
Bring: Your signature dish!',
      actions: [
        {
          label: 'REGISTER FOR FREE',
          url: 'https://www.eventbrite.com/e/la-cocina-drop-in-market-el-mini-mercado-tickets-21686816853',
          type: 'hollow'
        },
      ]
    },
    {
      title: 'La Cocina Application Review Workshop',
      subTitle: 'Our application review workshops will be held on: May 16th and August 22nd.',
      image: 'logo.png',
      content: 'Come join us for a workshop on how to best go about filling out our application. In this limited attendee workshop, we will cover key areas of focus and in general recommended approach when filling out our application. Our workshop will not only serve to make you a better applicant but it will also highlight areas of your business plan and concept that might need further revision. We highly recommend this workshop for people who are serious about applying to La Cocina.',
      actions: [
        {
          label: 'REGISTER FOR FREE',
          url: 'https://www.eventbrite.com/e/la-cocina-application-review-workshop-taller-de-aplicacion-a-la-cocina-tickets-39629999395',
          type: 'hollow'
        },
      ]
    },
    {
      title: 'Orientations 2018',
      subTitle: 'Our 2018 orientations will be on: May 30th, July 25th, September 26th and November 28th.',
      image: 'logo.png',
      content: 'In order to apply to La Cocina’s incubator program, you must attend an orientation workshop on starting a food business in the Bay Area. This workshop is free and open to the public but we suggest that you sign up ahead of time to make checking in easier. We will send a confirmation email 1 week before the orientation to confirm your sign up. All orientations take place on Wednesdays from 6-8pm at La Cocina.',
      actions: [
        {
          label: 'REGISTER FOR FREE',
          url: 'https://www.eventbrite.com/e/la-cocina-orientation-orientacion-de-la-cocina-tickets-19178264706',
          type: 'hollow'
        }
      ]
    },
    {
      title: 'Office Hours',
      subTitle: 'Our Office Hours will be: June 21st, August 16th, October 18th and November 15th.',
      image: 'logo.png',
      content: 'Please see the event website for more details.',
      actions: [
        {
          label: 'REGISTER FOR FREE',
          url: 'https://www.eventbrite.com/e/office-hours-horas-de-consulta-tickets-19178682957',
          type: 'hollow'
        },
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
