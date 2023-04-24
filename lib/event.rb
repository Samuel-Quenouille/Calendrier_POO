class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def postpone_24h (start_date)
        @start_date += (1440*60)
        puts "Le match a été reporté de 24h"
    end
    
    def initialize(event_to_save, minutes_to_save, event_name_to_save, email_to_save)
        @start_date = Time.parse(event_to_save)
        @duration = minutes_to_save
        @title = event_name_to_save
        @attendees = email_to_save
    end
end

# Event.new("2010-10-31 12:00")
# Event.new("2010-10-31 12:00", 30)
# Event.new("2010-10-31 12:00", 30, "Match")
