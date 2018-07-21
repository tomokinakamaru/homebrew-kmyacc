require "formula"

class Kmyacc < Formula
  homepage "https://github.com/moriyoshi/kmyacc-forked"
  url "https://github.com/moriyoshi/kmyacc-forked/archive/master.zip"
  sha256 "31c9635f7922c23957f4e08830f73341436490c4b06139d845f11bde987a2c4e"
  version "4.1.4"

  def install
    system "sed -i -e \"s,/kmyacc,,\" src/Makefile"
    system "sed -i -e \"s,\\\"\\$(PARLIB)\\\",\\\"\\$(PARLIB)/kmyacc\\\",\" src/Makefile"
    system "sed -i -e \"s,PREFIX = /usr/local,PREFIX = #{prefix},\" src/Makefile"
    system "make", "install"
  end
end
