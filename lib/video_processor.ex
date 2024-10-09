defmodule ThePlazaElixirChallenge.VideoProcessor do
  use GenServer

  # Client API

  def start_link(video_url) do
    GenServer.start_link(__MODULE__, video_url)
  end

  def process_video(pid) do
    GenServer.cast(pid, :process_video)
  end

  # Server Callbacks

  @impl true
  def init(video_url) do
    {:ok, %{video_url: video_url, images: []}}
  end

  @impl true
  def handle_cast(:process_video, state) do
    images = extract_images(state.video_url)
    IO.puts("images #{images}")
    {:noreply, %{state | images: images}}
  end

  # Private Functions

  defp extract_images(_video_url) do
    # TODO: Implement ffmpeg command to extract images
    # For now, we'll just return a placeholder
    IO.puts("Extracting images from video")
    ["image1.jpg", "image2.jpg", "image3.jpg"]
  end
end
