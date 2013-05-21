require_relative '../lib/todolist'

describe TodoList do
  before :all do
    @file = ['Test List', 'Item1', 'Item2', 'Item3']
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
    context "without a position number argument" do
      it "should add an item to the end of the list" do
        @testlist.add('New Item')
        item = @testlist.instance_eval(@list)
        expect(item[4]).to eq 'New Item'
      end
    end

    context "with a position number" do
      it "should add an item at that position" do
        
      end
    end
  end

  describe "#delete" do
    context "without a position number" do
      it "should delete the item at the end of the list" do
        
      end
    end

    context "with a position number" do
      it "should delete the item at that position" do
        
      end
    end
  end
 
  describe "#display" do
    it "should add 'Title: ' to the first item" do
      
    end

    it "should add numbers to the beginning of each item" do
      
    end

    it "should display the list to the screen" do
      
    end
  end

  describe "#save" do
    context "with a specified filename" do
      it "should save the list to that file" do
        
      end
    end

    context "with no filename given" do
      it "should ask for a filename to save to" do
        
      end

      it "should save to that file" do
        
      end
    end
  end

  describe "#quit" do
    it "should quit the program" do
      
    end
  end

  describe "#help" do
    it "should display the help string" do
      
    end
  end

end