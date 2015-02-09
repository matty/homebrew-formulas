class Resin < Formula
  homepage "http://caucho.com"
  url "http://caucho.com/download/resin-4.0.42.zip"
  version "4.0.42"
  sha1 "207a5075b3d099f04706a710d41b78451f88cb4d"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-resin-root=#{var}/resin",
                          "--with-resin-log=#{var}/log/resin",
                          "--with-resin-conf=#{etc}/resin"

    system "make", "install"
  end
end
