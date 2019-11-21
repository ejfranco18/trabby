class ActivityGenerator
  def initialize(plan)
    @plan = plan
  end

  def create_activities
    # ......
    # get number of activities for corresponding number of dates
    # search for activities with each search item
    # prioritize them
    # select them
    # attach them to each day

    # depending on
    # number of days
    # preferences
    # weather
    days = (plan.end_date - plan.start_date).to_i

    activities_timeslot_1 = [['Bakery', '4bf58dd8d48988d16a941735'], ['Bistro', '52e81612bcbc57f1066b79f1']]
    activities_timeslot_2 = [['Exhibit', '56aa371be4b08b9a8d573532'], ['Museum', '4bf58dd8d48988d181941735'], ['Zoo', '4bf58dd8d48988d17b941735']]
    activities_timeslot_3 = [['Restaurant', '4bf58dd8d48988d1c4941735'], ['Spanish Restaurant', '4bf58dd8d48988d150941735']]
    activities_timeslot_4 = [['Exhibit', '56aa371be4b08b9a8d573532'], ['Museum', '4bf58dd8d48988d181941735'], ['Palace', '52e81612bcbc57f1066b7a14']]
    activities_timeslot_5 = [['Park', '4bf58dd8d48988d163941735']]
    activities_timeslot_6 = [['Restaurant', '4bf58dd8d48988d1c4941735'], ['Spanish Restaurant', '4bf58dd8d48988d150941735']]
    activities_timeslot_7 = [['Performing Arts', '4bf58dd8d48988d1f2931735'], ['Bar', '4bf58dd8d48988d116941735']]
    activities_timeslot_8 = [['Night Club', '4bf58dd8d48988d11f941735']]


  end
end
