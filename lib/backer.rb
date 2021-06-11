class Backer
    attr_accessor :name
    def initialize(name)
        @name =name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end
    
    def projects
         ProjectBacker.all.select {|projects_instance|
         projects_instance.backer ==self}
    end

    def backed_projects
    self.projects.map do |instance|
        instance.project
    end
end
end

