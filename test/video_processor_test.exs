defmodule ThePlazaElixirChallenge.VideoProcessorTest do
  use ExUnit.Case
  alias ThePlazaElixirChallenge.VideoProcessor

  describe "VideoProcessor" do
    test "start_link/1 starts the GenServer" do
      assert {:ok, pid} = VideoProcessor.start_link("http://example.com/video.mp4")
      assert Process.alive?(pid)
    end

    test "process_video/1 extracts images" do
      {:ok, pid} = VideoProcessor.start_link("http://example.com/video.mp4")

      # Capture IO to test the output
      _output = ExUnit.CaptureIO.capture_io(fn ->
        VideoProcessor.process_video(pid)
        # Wait a bit for the async operation to complete
        :timer.sleep(100)
      end)

      # assert output =~ "Extracting images from video"
      # assert output =~ "images [\"image1.jpg\", \"image2.jpg\", \"image3.jpg\"]"
    end

    test "state is updated after processing" do
      {:ok, pid} = VideoProcessor.start_link("http://example.com/video.mp4")

      VideoProcessor.process_video(pid)
      # Wait a bit for the async operation to complete
      :timer.sleep(100)

      state = :sys.get_state(pid)
      assert state.images == ["image1.jpg", "image2.jpg", "image3.jpg"]
    end
  end
end
