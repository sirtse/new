use core::fmt;

#[derive(Debug, PartialEq)]
pub struct Clock
    {
        mins: i32,
    }

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let clock = Clock {
            mins: (((hours * 60 + minutes) % 1440) + 1440) % 1440,
        };
        clock
    }


    pub fn add_minutes(&mut self, minutes: i32) -> Self {
        Clock::new(0, self.mins + minutes % 1440)
    }
}
    


impl core::fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.mins / 60, self.mins % 60)
    }
}