require'pry'
class Backer
  attr_accessor :name, :project, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
#project_a already created in back end as an instance of Project so it has all the properties + methods 
  def back_project(project_a)
    @backed_projects << project_a
    project_a.backers << self #this is the line that makes the association between the project instance and the backer
  end

  def self.all
    @backed_projects
  end

end


=begin
it should be initialized with a `@backed_projects` variable set to an empty array.
Instances of the `Backer` class should have an `attr_accessor` for backed projects
so that projects can be added to a backer's list and so that the
backer can report on the projects they back.
=end
