class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        
    end

    def total_backers
        ProjectBacker.all.select {|back| back.project == self}
    end

    def backers
        self.total_backers.map {|back| back.backer}
    end

end