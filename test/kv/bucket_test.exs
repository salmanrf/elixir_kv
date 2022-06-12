defmodule ElixirKv.BucketTest do
  use ExUnit.Case, async: true

  test "stores value by key" do
    {:ok, bucket} = ElixirKv.Bucket.start_link()
    assert ElixirKv.Bucket.get(bucket, "milk") == nil

    ElixirKv.Bucket.put(bucket, "milk", 3)
    assert ElixirKv.Bucket.get(bucket, "milk") == 3
  end
end
