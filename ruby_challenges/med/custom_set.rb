class CustomSet
  attr_accessor :set

  def initialize(set = [])
    @set = set
  end

  def ==(other_set)
    set == other_set.set
  end

  def empty?
    set.empty?
  end

  def contains?(item)
    set.include?(item)
  end

  def subset?(other_set)
    set.all? { |s| other_set.contains?(s) }
  end

  def disjoint?(other_set)
    !set.one? { |s| other_set.contains?(s) }
  end

  def eql?(other_set)
    set.uniq.sort == other_set.set.uniq.sort
  end

  def add(item)
    unless set.include?(item)
      new_set = set << item
    else
      new_set = set
    end
    CustomSet.new(new_set)
  end

  def intersection(other_set)
    new_set = set.select { |s| other_set.contains?(s) }
    CustomSet.new(new_set)
  end

  def difference(other_set)
    new_set = set.select { |s| !other_set.contains?(s) }
    CustomSet.new(new_set)
  end

  def union(other_set)
    new_set = set + other_set.set

    CustomSet.new(new_set.uniq.sort)
  end
end