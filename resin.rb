class Resin < Formula
  homepage "http://caucho.com"
  url "http://caucho.com/download/resin-4.0.46.zip"
  version "4.0.46"
  sha1 "44b511f99ef07b6c98b68dcd8c5794de83ab6a58"

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
