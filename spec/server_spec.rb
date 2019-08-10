require_relative '../server'

RSpec.describe 'App' do
  include Rack::Test::Methods

  def app
    App.new
  end

  it 'returns Hello World text with an ok status code' do
    get '/'

    expect(last_response.body).to include("Hello from Travis CI")
    expect(last_response).to be_ok
  end
end
