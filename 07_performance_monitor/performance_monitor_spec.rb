require "performance_monitor"
require "time"

describe "Performance Monitor" do
  before do
    @eleven_am = Time.parse("2011-1-2 11:00:00")
  end

  it "takes about 0 seconds to run an empty block" do
    measure do
    end.should be_within(0.1).of(0)
  end

  it "takes exactly 0 seconds to run an empty block (with stubs)" do
    Time.stub!(:now).and_return(@eleven_am)
    measure do
    end.should == 0
  end

  it "takes about 1 second to run a block that sleeps for 1 second" do
    measure do
      sleep 1
    end.should be_within(0.1).of(1)
  end

  it "takes exactly 1 second to run a block that sleeps for 1 second (with stubs)" do
    fake_time = @eleven_am
    Time.stub!(:now).and_return { fake_time }
    measure do
      fake_time += 60  # adds one minute to fake_time
    end.should == 60
  end

  it "runs a block N times" do
    n = 0
    measure(4) do
      n += 1
    end
    n.should == 4
  end

  it "returns the average time, not the total time, when running multiple times" do
    run_times = [8,6,5,7]
    fake_time = @eleven_am
    Time.stub(:now).and_return { fake_time }
    measure(4) do
      fake_time += run_times.pop
      puts "fake time is #{fake_time}"
    end.should == 6.5
  end

  it "returns the average time when running a random number of times for random lengths of time" do
    fake_time = @eleven_am
    Time.stub(:now).and_return { fake_time }
    number_of_times = rand(10) + 2
    average_time = measure(number_of_times) do
      delay = rand(10)
      fake_time += delay
    end
    average_time.should == (fake_time - @eleven_am).to_f/number_of_times
  end

end
