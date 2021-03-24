class Device
  def initialize
    @recordings = []
    @play = ""
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    if block_given?
      yield
      @play = yield
    end
  end

  def play
    @play
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
p listener.play # Outputs "Hello World!"