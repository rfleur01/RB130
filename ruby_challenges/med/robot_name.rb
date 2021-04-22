class Robot
  @@names = []

  def name
    return @name if @name
    @name =  generate_name while @@names.include?(@name) || @name.nil?
    @@names << @name
    @name
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

  def generate_name
    name = ''
    2.times { name << ('A'..'Z').to_a.sample }
    3.times { name << ('0'..'9').to_a.sample }
    name
  end
end