require_relative 'article'



describe Article do 

    let(:titled_article){Article.new(title:"has a title")}
    let(:bodied_article){Article.new(body:"has a body")}
    let(:not_q_authored_article){Article.new(author:"Jon")}

    it "#title? for an article with a title" do 
        expect(titled_article.title?).to be(true)
    end

    it "#title? for an article without a title" do 
        expect(bodied_article.title?).to be(false)
    end

    it "#string_empty? for an article without a title" do 
        expect(bodied_article.string_empty?(nil)).to be(true)
    end

    it "#authors_name_starts_with_q? for an article without a title" do 
        expect(not_q_authored_article.authors_name_starts_with_q?).to be(false)
    end
end





# describe Array do
#     # before(:all) do
#     #     @array = Array.new
#     # end
#     let(:empty_array){ Array.new}
#     let(:filled_array){[3,5,4,2,8,7]}
#     let(:mixed_array){ [6,4,"hello", 8.0, :there]}

#     it "#new should return a blank instance" do
#         expect(my_array).to eq([])
#     end
#     it "should allow you to #count the items in it" do
#         expect(my_array.count).to eq(0)
#     end
#     after(:all) do
#         puts "\nTest complete."
#     end 
# end

# describe "True or False" do
#     # it "show that a number is less than another number" do
#     #     expect(0 == '0').to be(true)
#     # end

#         it "one number is in the range of another" do
#         expect(5).to be_within(2).of 7
#     end
# end

# describe "A basic test" do
#     it "testing that 3 is 3" do 
#         expect(3).to eql(3)
#     end
# end

# describe Array do
#   it "#new should return a blank instance" do
#     expect(Array.new).to eq([])
# end

# end

# describe String do
#     it "#split should create an array of split up text" do
#         s = "Hello Seth Dot Com"
#         expect(s.split).to eq(["Hello", "Seth", "Dot", "Com"])
#     end
# end

# describe User do
#   it "#create should save a user to the DB" do
#     User.create
#     expect(User.all.count).to eq(1)
#   end
# end