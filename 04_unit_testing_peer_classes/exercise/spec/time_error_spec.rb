require 'time_error'

RSpec.describe TimeError do
  it "compares server time and current time" do
    requester = double :requester
    expect(requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return(
      '{"abbreviation": "BST",
  "client_ip": "100.100.253.100",
  "datetime": "2022-08-04T19:53:31.026866+01:00",
  "day_of_week": 4,
  "day_of_year": 216,
  "dst": true,
  "dst_from": "2022-03-27T01:00:00+00:00",
  "dst_offset": 3600,
  "dst_until": "2022-10-30T01:00:00+00:00",
  "raw_offset": 0,
  "timezone": "Europe/London",
  "unixtime": 1659639211,
  "utc_datetime": "2022-08-04T18:53:31.026866+00:00",
  "utc_offset": "+01:00",
  "week_number": 31
}')
    time_error = TimeError.new(requester)
    time = Time.new(2022, 8, 04, 19, 53, 31, "+01:00")
    expect( time_error.error(time) ).to eq 0.026866
  end
end
