require_relative '../lib/todolist'

describe TodoList do
  before :all do
    @file_list = ['Test List', 'Item1', 'Item2', 'Item3']
    File.open 'test.txt', 'w' do |f|
      @file_list.each { |e| f.puts e }
    end
  end

  after :all do
    FileUtils.rm 'test.txt'
  end

  before :each do
    @testlist = TodoList.new 'test.txt'
  end

  describe "instance variables" do
    let(:variables) { @testlist.instance_variables }

    it "should include @file variable" do
      expect(variables).to include :@file
    end

    it "should include @list variable" do
      expect(variables).to include :@list
    end

    it "should include @title variable" do
      expect(variables).to include :@title
    end
  end

  describe "#new" do
    it "should return a TodoList object" do
      expect(@testlist).to be_an_instance_of TodoList
    end

    it "should have an empty string default file name value" do
      @testlist = TodoList.new
      expect(@testlist.file).to eq ""
    end

    it "should store the file name" do
      expect(@testlist.file).to eq 'test.txt'
    end

    it "should open the file and store its contents" do
      expect(@testlist.list).to eql ['Item1', 'Item2', 'Item3']
    end

    it "should only read in a file if it exists" do
      new_list = TodoList.new 'xxxx.txt'
      expect(new_list.list).to be_empty
    end
  end

  describe "#add" do
    context "without a position number"  do
      it "should add an item to the end of the list" do
        @testlist.add('New Item')
        expect(@testlist.list.last).to eq 'New Item'
      end
    end

    context "with a position number" do
      it "should add an item at that position" do
        @testlist.add('New Item', 2)
        expect(@testlist.list[1]).to eq 'New Item'
      end

      it "should change the title when position is 'title' or 0" do
        @testlist.add('New Title', 'title')
        expect(@testlist.title).to eq 'New Title'
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
        expect(@testlist.list[1]).to eq 'Item3'
      end
    end
  end
 
  describe "#output" do
    let(:array)  { @testlist.list }
    let(:output) { @testlist.output }

    it "should return an array" do
      expect(output).to be_an_instance_of Array
    end

    it "should return the entire list" do
      expect(output.size).to eq (@testlist.list.size + 1)
    end

    it "should not alter the @list variable" do
      @testlist.output
      expect(array).to eq @testlist.list
    end

    it "should add 'Title: ' to the first item of output" do
      expect(output.first).to match /Title: /
    end

    it "should add numbers to the beginning of each item" do
      expect(output[1]).to match /\d\. /
      expect(output[2]).to match /\d\. /
      expect(output[3]).to match /\d\. /
    end
  end

  describe "#save" do
    it "should save the list to that file" do
      FileUtils.rm @testlist.file
      @testlist.save
      expect(File.exist?(@testlist.file)).to be_true
    end
  end

end