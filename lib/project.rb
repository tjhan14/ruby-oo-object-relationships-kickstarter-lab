class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backed
        ProjectBacker.all.select {|backers_instance|
        backers_instance.project ==self}
   end

   def backers
   self.backed.map do |instance|
       instance.backer
   end
   end
end


