require "google/apis/youtube_v3"
# 動画データを取得できるオブジェクトを生成
youtube = Google::Apis::YoutubeV3::YouTubeService.new
# 先ほど作成したAPIキーをオブジェクトのプロパティーに代入
youtube.key = "AIzaSyBZKrnLGv0PBKxzRXF18FO8ik9C6IFfZaY"

# q: 検索キーワード
# max_results：検索数
youtube_search_list = youtube.list_searches("id,snippet", type: "video", q: "プログラミング", max_results:10)

puts youtube_search_list

# ヒアドキュメントを格納する変数
text = ""

youtube_search_list.items.each do |item|

  # チャンネル名を取得
  channel_title = item.snippet.channel_title
  # 動画タイトルを取得
  video_title = item.snippet.title
  # 動画IDを取得（URLの生成に使う）
  video_id = item.id.video_id

  text +=<<~EOS

  チャンネルタイトル：#{channel_title}
  タイトル：#{video_title}
  URL：https://www.youtube.com/watch?v=#{video_id}
  iframe：<iframe width="560" height="315" src="https://www.youtube.com/embed/#{video_id}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

  EOS
end

puts text