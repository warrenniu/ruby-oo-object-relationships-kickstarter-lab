class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end



    def total_projects
        ProjectBacker.all.select {|proj| proj.backer == self}
    end

    def backed_projects
        self.total_projects.map {|project_instances| project_instances.project}
    end



    
end