class ProjectAttributeProvider

  def initialize(model)
    @model = model
  end

  def call
    ProjectAttribute.all.map do |field|
      ActiveDynamic::AttributeDefinition.new(field.title,
                                             datatype: field.datatype,
                                             required: field.required?)
    end
  end

private

  attr_reader :model

end