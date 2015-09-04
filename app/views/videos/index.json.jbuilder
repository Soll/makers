json.array!(@videos) do |video|
  json.extract! video, :id, :title, :content, :description
  json.url video_url(video, format: :json)
end
