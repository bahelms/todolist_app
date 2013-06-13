class TodoList
  attr_reader :list, :file, :title

  def initialize(file="")
    @file = file
    @list = []

    if File.exist? @file
      File.open @file do |f| 
        @title = f.gets
        f.each { |line| @list << line.chomp }
      end
    end
  end

  def add(item, pos=nil)
    if pos.nil?
      @list << item
    elsif pos == 0 or pos == 'title'
      @title = item
    else
      @list.insert(pos.to_i, item)
    end
  end

  def delete(pos=nil)
    return @list.pop if pos.nil?
    @list.delete_at(pos)
  end

  def save
    File.open(@file, 'w') do |f|
      @list.each { |item| f.puts item }
    end
  end

  def output
    output_list = []
    output_list << "Title: #{@title}"
    @list.each_with_index { |item, i| output_list << "#{i+1}. #{item}"}
    output_list
  end
end