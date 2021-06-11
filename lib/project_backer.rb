class ProjectBacker 

    @@all=[] 
    attr_reader :project,:backer

    def self.all
        @@all
    end
    def initialize(project, backer)
        @project=project
        @backer=backer
        @@all <<self
    end

end







# describe 'ProjectBacker' do
#     describe '@@all' do
#       it 'is a class variable set to an empty array' do
#         expect(ProjectBacker.class_variable_get(:@@all)).to eq([])
#       end
#     end