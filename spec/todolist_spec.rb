require_relative '../todolist'

describe TodoList do
  before :all do
    @file = ['Title: Test List', '1. Item1', '2. Item2', '3. Item3']
    File.open 'test.txt', 'w' do |f|
      @file.each { |e| f.puts e }
    end
  end

  before :each do
    @testlist = TodoList.new 'test.txt'
  end

  describe "#new" do
    context "with a filename argument" do
      it "takes a file name and returns a TodoList object" do
        @testlist.should be_an_instance_of TodoList
      end

      it "opens the file and fills an array with it's contents" do
        list = @testlist.instance_eval { @list }
        list.should be_an_instance_of Array
        list.should eql @file
      end

      it "creates a new file if given file doesn't exist" do
        list = TodoList.new 'xxxx.txt'
        File.exist?('xxxx.txt').should be_true
      end
    end
  end

  describe "#add" do
    
  end

  describe "#delete" do
    
  end
 
  describe "#display" do
    
  end

  describe "#save" do
    
  end

  describe "#quit" do
    
  end

  describe "#help" do
    
  end

end