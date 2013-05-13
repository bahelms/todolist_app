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

      it "only reads in a file if it exists" do
        list = TodoList.new 'xxxx.txt'
        list.instance_eval { @list }.should be_empty
        list.instance_eval { @file }.should eql 'xxxx.txt'
      end
    end

    context "without a filename argument" do
      it "returns a TodoList object" do
        TodoList.new.should be_an_instance_of TodoList
      end

      it "will make the filename an empty string" do
        list = TodoList.new
        list.instance_eval { @file }.should be_empty
        list.instance_eval { @list }.should be_empty
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