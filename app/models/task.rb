class Task < ActiveRecord::Base
  
  state_machine :initial => :active do
    event :activation do
      transition :active => :inactive
    end
    event :deactivation do
      transition :inactive => :active
    end
  end
end