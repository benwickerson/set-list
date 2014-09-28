module VideosHelper

  def embed_yt(video)
    YouTubeAddy.youtube_embed_url(video, 420, 315).html_safe
  end

end
