require "audioinfo"
require "json"

tracks = []

Dir::glob("tracks/*.mp3").each do |path, idx|
  filename = path.sub /tracks\//, ''
  AudioInfo.open(path) do |info|
    time = "#{info.length / 60}:#{info.length % 60}"
    tracks.push({artist: info.artist, title: info.title, time: info.length, filename: filename})
  end
end

open("tracks.json", "w"){|f| f.write(JSON.pretty_generate(tracks))}
