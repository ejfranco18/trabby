class ActivityGenerator
  def initialize(plan)
    @plan = plan
    @v = "20190425"
    @user_categories = @plan.categories
  end

  def self.create(plan)
    new(plan).create
  end

  def create
    slot1 = Category.where(name: ['Bakery', 'Bistro', 'Breakfast Spot', 'Juice Bar', 'Cafeteria'])
    slot2 = Category.where(name: ['Exhibit', 'Museum', 'Outdoors & Recreation'])
    slot3 = Category.where(name: ['Exhibit', 'Museum', 'Palace'])
    slot4 = Category.where(name: ['Restaurant'])
    slot5 = Category.where(name: ['Park', 'Outdoors & Recreation'])
    slot6 = Category.where(name: ['Restaurant'])
    slot7 = Category.where(name: ['Event', 'Bar'])
    slot8 = Category.where(name: ['Night Club'])

    day_slots = [slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8]

    picked_places = []

    @plan.plan_days.each do |plan_day|
      day_slots.each_with_index do |categories, index|
        place = Place.where(
          category: best_category(categories),
          city: @plan.city
        ).where.not(id: picked_places).sample

        picked_places << place

        plan_day.activities.build(place: place, slot: index)
      end

      plan_day.save!
    end
  end

  def best_category(categories)
    existing = categories.find { |cat| @user_categories.include?(cat) }

    existing || categories.sample
  end
end
