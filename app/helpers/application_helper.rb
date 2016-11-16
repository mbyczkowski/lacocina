module ApplicationHelper
  def responsive_image_tag(default_name, options={})
    large_name = default_name.gsub(%r{\.\w+$}, '_large\0')
    medium_name = default_name.gsub(%r{\.\w+$}, '_medium\0')
    small_name = default_name.gsub(%r{\.\w+$}, '_small\0')
    image_tag "","data-interchange" => "[#{asset_path(large_name)}, large],[#{asset_path(medium_name)}, only screen and (min-width: 40.063em) and (max-width: 64em)],[#{asset_path(small_name)}, only screen and (max-width: 40em)]"
  end

  def social_media_links
    [
      {
        name: 'instagram',
        icon: 'instagram.svg',
        link: 'https://www.instagram.com/lacocinasf/'
      },
      {
        name: 'twitter',
        icon: 'twitter.svg',
        link: 'https://twitter.com/lacocinasf'
      },
      {
        name: 'facebook',
        icon: 'facebook.svg',
        link: 'https://www.facebook.com/lacocinasforg/'
      },
      {
        name: 'youtube',
        icon: 'youtube.svg',
        link: 'https://youtube.com/user/LaCocinaSForg'
      }
    ]
  end

  def people_page
    [
      {
        name: 'Caleb Zigas',
        title: 'Executive Director',
        phone: '(415) 824-2729, ext. 304',
        email: 'caleb@lacocinasf.org',
        tagLine: 'Contact me for marketing opportunities, donor inquires',
        photo: 'caleb.jpg',
        content: [
          'Caleb was accidentally hired as an assistant pastry chef at Ruppert’s Restaurant, in his hometown of Washington DC, when he was 16 years old, and hasn’t left the kitchen since. He has worked dish lines at national chains, service counters for independent butcher shops and front of the house for some of the best restaurants in the country (and some of the worst too). After graduating from the University of Michigan with degrees in English and Globalization and Culture, Caleb interned with ProMujer in El Alto Bolivia, learning about microfinance in its infancy and bringing those programming lessons to bear at La Cocina when it opened its doors in 2005.',
          'Since joining La Cocina, Caleb has had a hand in shaping the incubator program as it has achieved national recognition. Caleb’s work on the program curriculum and social entrepreneurship innovation has been celebrated by the Hitachi Foundation when they named him a Yoshiyama Young Entrepreneur and by Inc. Magazine’s recognition as one of 5 Community Organizers making a difference. More recently, Caleb was behind La Cocina’s San Francisco Street Food Festival and Conference which ultimately led to involvement in the legislation changes that brought increased mobile vending opportunities to San Francisco. He has been named one of San Francisco’s Tastemakers by 7×7 Magazine, though he might be as proud that before that he was named Best Waiter in San Francisco. Bilingual, a trained diversity leader, HACCP Certified and a California Food Safety Manager, Caleb’s combination of food industry experience and commitment to social justice is what helps defines La Cocina, recently named 2011 Best Small Businesses by the San Francisco Bay Gardian.',
          'Caleb brings a love of food and a passion for social justice to La Cocina and a belief that everyone deserves an opportunity to make a living doing what they love to do.',
          'favorite foods: chicken soup, steamed pork buns, molletes and nearly anything with miso.'
        ]
      },
      {
        name: 'Leticia Landa',
        title: 'Programs and Development Manager',
        phone: '(415) 824-2729, ext. 306',
        email: 'leticia@lacocinasf.org',
        tagLine: 'Contact me for marketing opportunities, donor inquires',
        photo: 'leticia.jpg',
        content: [
          'Leticia learned about La Cocina in her last week of college when she read an article about El Huarache Loco in The New York Times. After moving to San Francisco to work at a foundation she visited La Cocina’s Ferry Plaza Farmers Market booth a couple of times and decided it was an organization she wanted to volunteer for. Coincidentally, she met Valeria (the Executive Director at the time) at a Holiday Party and instead of becoming a volunteer she began as a staff member in February 2008.',
          'Leticia studied Anthropology at Harvard and has a background international nonprofit work–she has lived in rural Northern India and rural Southwestern China working and studying agricultural poverty and its effects on women. She also completed the first year of culinary training at Le Cordon Bleu in Paris and worked on the line at Jeffrey’s Restaurant in Austin, Texas where she grew up. She is fluent in Spanish and French and (increasingly less) conversant in Mandarin Chinese.',
          'Since joining La Cocina, Leticia has been named one of San Francisco’s Tastemakers by 7×7 Magazine and was named a Yoshiyama Young Entrepreneur by the Hitachi Foundation for her work on the program curriculum and social entrepreneurship. As Programs and Development Manager, Leticia oversees the Mobile Foods project and the Business Incubator and works with staff to set goals with all entrepreneurs around business growth and access to capital and market opportunities.',
          'Leticia brings a passion for the kitchen to La Cocina and a true belief in the power of small food-base businesses in transforming people’s lives.',
          'favorite foods: chilaquiles, quiche and the perfect brownie'
        ]
      },
      {
        name: 'Geetika Agrawal',
        title: 'Business Development Manager',
        phone: '(415) 824-2729 ext.305',
        email: 'email: geetika@lacocinasf.org',
        photo: 'Geetika.jpg',
        content: [
          'Geetika first started hosting dinner parties when she was four years old. The main ingredient was play dough. As she graduated to using more edible ingredients, Geetika developed a passion for turning creative ideas into great businesses. With a Computer Science degree from Stanford, Geetika started and ran a software incubator at IBM. Launching new products got her hooked on entrepreneurship. At NYU Stern, Geetika focused her MBA on Social Impact & Innovation, while working with investors and entrepreneurs around the globe. At Acumen Fund, she managed the agriculture portfolio, defining investment strategies to help small holding farmers in India. In London, Geetika worked with community development organization Bootstrap to bring in new revenue and expand community impact, including co-launching the New York Times notable Dalston Roof Park. She helped start Kitchenette, a London incubator inspired by La Cocina. Back home in San Francisco, Geetika co-organizes Soup SF, a real life kick-starter for creative community projects. As the Business Development Manager, Geetika is excited to be supporting amazing entrepreneurs, leading growth initiatives, and sharing delicious food.',
          'Favorite Foods: Raspberries, Cookies, Her mom’s Palak Paneer, and anything smothered in peanut butter.'
        ]
      },
      {
        name: 'Aniela Valtierra',
        title: 'Operations and Events Manager',
        phone: '(415) 824-2729 ext.309',
        email: 'aniela@lacocinasf.org',
        photo: 'aniela.jpg',
        content: [
          'At the age of fifteen and with much reluctance, Aniela had her first taste of the food and beverage industry while working after school and in the summers at her parents’ newly opened restaurant in Mexico. Over the years, she grew to enjoy the f&b operation, and it has, since, become a part of her life and career. Aniela values food for being the center of her fondest family memories, and she looks up to her family’s entrepreneurial spirit to share their love of food.',
          'Aniela studied Hospitality Industry Management with an emphasis in Entrepreneurship at the University of San Francisco, gaining professional event planning and f&b management experience in hotels, private clubs, and restaurants, with continued wine education from the Culinary Institute of America at Greystone. When Aniela learned about La Cocina and its mission, it felt much like home; she was inspired by the passion that the women-run businesses of La Cocina have for their native foods and their entrepreneurial drive to launch their food business, do what they love and share it with their communities.',
          'Aniela joined La Cocina’s team in 2013 and brings her passion of food entrepreneurship and support of small business communities in her operations and events role. Committed to the success of La Cocina’s women entrepreneurs, Aniela facilitates the use of the facility’s program offerings and launches events that promote growth and community recognition for their businesses.',
          'Favorite foods: tacos de papa, arrachera, french toast, and chocolate mousse pie'
        ]
      },
      {
        name: 'Lisa Murray',
        title: 'Retail & Catering Manager',
        phone: '(415) 824-2729 ext.301',
        email: 'lisa@lacocinasf.org',
        photo: 'lisa.jpg',
        content: [
          'A native Philadelphian, Lisa lived in Bermuda and Washington DC (where she knew Caleb) and was most recently in South Orange NJ before moving to the Bay Area in August 2013. Lisa has spent almost 30 years in the food industry in almost every capacity. She’s taken a few “breaks” to sell wine & spirits and do consulting on beverage service and cost/production. While working at Chef Tell’s, she even had the pleasure of meeting and forming a friendship with Dr. Claus and Ute Riedel (of Riedel crystal glass fame) whose son attended school close by. Having Dr. Riedel personally explain his philosophy on wine tasting and service over dinner is something Lisa will hold onto forever. After so many years working in the food and beverage world, Lisa wanted to find something that helped make a difference, something she could be proud of and where her years of hospitality and retail experience could benefit someone else.. She’s thrilled to be at La Cocina where the entrepreneurs are so talented and determined, they inspire her everyday and it’s exciting to be around them. La Cocina is giving Lisa a chance to view the hospitality industry from a different perspective.',
          'Lisa’s favorite food changes daily. She craves pizza and oysters and will order almost anything that is prepared with fennel, leeks or ginger.'
        ]
      },
      {
        name: 'Blake Kutner',
        title: 'Culinary Manager',
        phone: '(415) 824-2729 ext.302',
        email: 'blake@lacocinasf.org',
        photo: 'blake.jpg',
        content: [
          'Blake Kutner has been cooking and working in professional kitchens since the Bill Clinton days (one of his heroes, Blake’s not Bill’s. Although they do share a birthday). He’s done pretty much everything in the back of the house world from dishwashing to fry station, kitchen managing to grade manger, Mexico to Spain, New Orleans to San Francisco.',
          'After graduating from Dartmouth in 1994, Blake thought he would go to medical school like most of his family had.  While applying, he started working at the Copeland’s restaurant (a New Orleans based mid level chain) below his apartment, first as a waiter (think cheap fake tuxedo shirts and polyester bow ties) and then eventually as a fry cook in the all Nigerian kitchen. The swashbuckling life of the rowdy kitchen crew combined with the hand’s on gratification of taking a slimy raw product (like chicken or oysters) to glistening deep fried glory started his journey. The intellectual stimulation that cooking provided utilizing biology, physics, chemistry, history and culture has kept him doing it.',
          'Blake is excited to be starting as our new kitchen manager at La Cocina. He believes that street food is secretly every chef’s favorite and makes up the fabric of any great city. He thinks he may have the greatest job in the world getting to learn from the true masters of cuisine and work with a bunch of bad-ass women.',
          'If he had to pick some food favorites they’d be: boiled crawfish, oysters, barbecue and fermented things, but it feels wrong to not include South East Asian curries, fried chicken, tacos and pizza.'
        ]
      },
      {
        name: 'Candie Rose',
        title: 'Administrative Office Manager',
        phone: '(415) 824-2729 ext.310',
        email: 'candie@lacocinasf.org',
        photo: 'candie.jpg',
        content: [
          'Candie grew up eating Kraft macaroni and cheese, kielbasa, over-cooked broccoli and her Great-Grandmother’s carrot salad (all of Candie Rosewhich she still loves). As an adult she has actively broadened her culinary exposure to many different types of food.',
          'Her husband, a Chef, has been the primary source of those introductions, who coincidentally was Culinary Director here at La Cocina several years back. Since then, La Cocina has since been a part of her family and an organization she loves to support. The organization’s businesses have been seamlessly interwoven into her family over the years from creating her wedding cake and then years later her baby shower cake to her wedding day catering to providing volunteer opportunities on early Saturday mornings alongside the business owners at the Farmer’s Market to volunteering for the Street Food Festival. Supporting these businesses has created long lasting relationships that continue to grow and flourish.',
          'Candie’s background is primarily made up of experience in health care administration and medical administrative office management. After years of thinking she wanted to be a nurse and then getting accepted into nursing school she realized her passion was on the administrative side of things. Since then she has worked in facilities large and small as well as a start up or two. She has always loved providing support for the team and getting involved in projects when she can. Joining the team at La Cocina helps her combine her love of food, taking care of others and her desire to work in an environment that values social justice, nurturing and kindness.',
          'When cooking for her family she often makes roast chicken dinner, couscous salads and pancakes.',
          'Favorite foods: pizza, eggs, tacos, citrus fruits and any vegetable smothered in peanut sauce.'
        ]
      },
      {
        name: 'Emiliana Puyana',
        title: 'Program Coordinator',
        phone: '415-824-2729 ext 303',
        email: 'emiliana@lacocinasf.org',
        photo: 'emiliana.jpg',
        content: [
          'Emiliana has always been in love with food and cooking. Early experiences in her family’s kitchen in Venezuela taught her that food has the extraordinary ability to bring and keep people together. She landed her first restaurant job at the age of fifteen in Caracas and has continued cooking ever since.',
          'After graduating from the Culinary Institute of America in 2002 she decided to make the move from New York to San Francisco. Her time in the Bay Area has seen her hold most positions in food industry from prep cook to chef de cuisine. She’s gained her battle scars behind the stoves of places like La Folie, Salt House and Marla Bakery. In 2011 she joined La Cocina’s incubator program and started her own pickling business, Jarred SF Brine. After three years of running her own food business she made the tough decision to pack it in and move on to the next food adventure.',
          'She now finds herself back at La Cocina but at the other side of the table. She couldn’t be more excited about the opportunity to give back to an organization and community that has given so much to her. She loves that a walk through La Cocina is like a mini UN general assembly where the only language spoken is food.',
          'Favorite foods: pickled anything, capers, capers and more capers, naengmyeon, arepas, rice and fried plantains.'
        ]
      },
      {
        name: 'Jessica Mataka',
        title: 'Development & Communications Associate',
        phone: '415-824-2729 ext 307',
        email: 'jessica@lacocinasf.org',
        photo: 'jessica.jpg',
        content: [
          'Unlike her seasoned coworkers, Jessica’s only professional experience in the food industry was as a hostess at an unexceptional restaurant in the middle of California. Craving something stranger, she fled the Central Valley without looking back and moved to San Francisco. In 2014 she graduated from San Francisco State University. Since then, she’s organized on behalf of Mission-based, non-profit Global Exchange, designed and implemented a curriculum focusing on anti-human trafficking efforts throughout high schools in the Bay Area and recently returned from Huaycán, Peru, where she taught an original program focusing on the intersection of art and activism. She’s thrilled to be La Cocina’s Communications and Development Associate mostly because it means she gets to hang around a kitchen with the most inspiring women she’s ever encountered (who coincidentally love to feed her) and spend all day telling other people about how amazing they are.',
          'Favorite foods: fried eggs, oysters, eggplants, limes and agave (because they make her favorite drink) and her roommate’s cookies.'
        ]
      },
      {
        name: 'Maribel Ramirez',
        title: 'tbd',
        phone: '415-824-2729 ext 310',
        email: 'maribel@lacocinasf.org',
        photo: 'maribel.png',
        content: [
          'A Los Angeles native, Maribel, grew up in a very large, close and, boisterous family. Always having something to celebrate, her family parties consisted of tamales, arroz, frijoles, tortillas and arranchera. She longed to be like her friends and eat “American” food.',
          'After making the difficult decision to leave her family in Southern California she moved to the Bay Area  for school. As the first person in her family to graduate from college she was ready for new adventures,  just not in food. Ambitious and driven, a few years later she found herself working as a Marketing Director for a design company.',
          'Needing a break and wanting to improve her French (her minor in college) she asked her employer to let her take a few months off to travel in France. While she was working on the ramparts of a bastille in the South of France with an international group of volunteers, she discovered her love of food – bread, butter, mirabelles (not personally named after her) and the art of eating. The “gourmandize” of the French provided a compass to appreciate and celebrate the food of her own family.',
          'When she returned to the States she never looked back. At first volunteering as a garden and cooking educator and at various food banks throughout the Bay Area, she started working in the crazy, hectic and creative restaurant world. Most recently she developed her skills as a corporative event coordinator for prominent pharmaceutical, tech and law companies and she is excited to bring that experience to La Cocina. Maribel believes that food is disarming; open happy mouths equal open happy hearts. Cooking and eating transcend the barriers of language and culture. She can’t believe how lucky she is to have found a home in La Cocina that combines her skills with her passion for food, social and economic justice.',
          'Favorite food: anything with mole, paris-brest, and chilaquiles'
        ]
      }
    ]
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
            url: '/incubator'
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
        name: 'Store',
        url: 'https://la-cocina-sf-store.myshopify.com'
      }
    ]
  end

  def featured_businesses
    @features_businesses ||= Business.with_logo
  end

  def businesses_with_catering
    @businesses_with_catering ||= Business.with_logo.with_catering
  end

  def business_link(business)
    if business.website_url
      link_to business.name, business.website_url
    else
      business.name
    end
  end
end
