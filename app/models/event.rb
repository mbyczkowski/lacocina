class Event
  EVENTS = [
    {
      title: 'Join Us for Farm to Fork This Weekend (8/29)',
      body: "Farm To Fork San Francisco is gathering advocates and lovers of food in an effort to raise awareness around sustainability issues
            and showcase the best farms, artisan food producers, breweries, cideries, distilleries and wineries in the Bay Area.
            In the free-of-charge exhibitor section of the multi-level event, attendees will have the opportunity to purchase products, view
            demonstrations, engage in interactive exhibits, and sample complimentary items from some of the Bay Area’s top food and
            beverage producers.\nThe expo will also host a ticketed conference featuring speaker panels from a diverse lineup of thought leaders in food justice and
            sustainability, as well as a keynote presentation from Ron Finley, “Guerilla Gardening” pioneer and former TED Talk presenter.
            To cap off the event, Farm To Fork SF will host an afterparty featuring drink specials, a DJ set from Erykah Badu, AKA Lo Down
            Loretta Brown, and live entertainment from stic.man of the influential hip hop group, Dead Prez, plus more."
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

  def body
    @opts[:body]
  end
end
