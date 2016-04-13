class Resin < Formula
  homepage "http://caucho.com"
  url "http://caucho.com/download/resin-4.0.48.zip"
  version "4.0.48"
  sha1 "7c46f12cadc0dc8b20b4532971a9e431c2dfd2ca"

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
