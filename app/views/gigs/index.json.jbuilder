json.array!(@gigs) do |gig|
  json.extract! gig, :id, :gig, :gig_date
  json.url gig_url(gig, format: :json)
end
