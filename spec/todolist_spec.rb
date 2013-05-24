require_relative '../lib/todolist'

describe TodoList do
  before :all do
    @file_list = ['Test List', 'Item1', 'Item2', 'Item3']
    File.open 'test.txt', 'w' do |f|
      @file_list.each { |e| f.puts e }
    end
  end

  before :each do
    @testlist = TodoList.new 'test.txt'
  end

  describe "#new" do
    context "with a filename argument" do
      it "should return a TodoList object" do
        expect(@testlist).to be_an_instance_of TodoList
      end

      it "should store the file name" do
        expect(@testlist.file).to eq 'test.txt'
      end

      it "should open the file and store its contents" do
        expect(@testlist.list).to eql @file_list
      end

      it "should only read in a file if it exists" do
        new_list = TodoList.new 'xxxx.txt'
        expect(new_list.list).to be_empty
      end
    end

    context "without a filename argument" do
      it "should return a TodoList object" do
        expect(TodoList.new).to be_an_instance_of TodoList
      end

      it "should initialize the file and list to empty" do
        new_list = TodoList.new
        expect(new_list.list).to be_empty
        expect(new_list.file).to be_empty
      end
    end
  end

  describe "#add" do
    context "without a position number"  do
      it "should add an item to the end of the list" do
        @testlist.add('New Item')
        expect(@testlist.list[4]).to eq 'New Item'
      end
    end

    context "with a position number" do
      it "should add an item at that position" do
        @testlist.add('New Item', 2)
        expect(@testlist.list[2]).to eq 'New Item'
      end

      it "should change the title when position is 'title' or 0" do
        @testlist.add('New Title', 'title')
        expect(@testlist.list[0]).to eq 'New Title'
      end
    end
  end

  describe "#delete" do
    context "without a position number" do
      it "should delete the item at the end of the list" do
        @testlist.delete
        expect(@testlist.list.last).to eq 'Item2'
      end
    end

    context "with a position number" do
      it "should delete the item at that position" do
        @testlist.delete(1)
        expect(@testlist.list[1]).to eq 'Item2'
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
    context "with a specified filename from command line" do
      it "should save the list to that file" do
        FileUtils.rm @testlist.file
        @testlist.save
        expect(File.exist?(@testlist.file)).to be_true
      end
    end

    context "with no filename given" do
      it "should ask for a filename to save to" do
        new_list = TodoList.new
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