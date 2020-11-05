class VescTool < Formula
  desc "This is a GUI written using the Qt toolkit to configure the VESC motor controller"
  homepage "http://vesc-project.com/"
  url "https://github.com/vedderb/vesc_tool.git",
	:revision => "f992d396df0e8960cbb8a1e72c42eca18b88ef88"
  head "https://github.com/vedderb/vesc_tool.git"
  version "2.06"
  sha256 ""
  license "GPL-3.0"

  depends_on "qt"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
	system "qmake -config release 'CONFIG += release_macos build_free'"
	system "make", "clean"
	system "make", "-j8"
    prefix.install "build/macos/vesc_tool_2.06.app"
	bin.install_symlink "prefix/vesc_tool_2.06.app/Contents/MacOS/vesc_tool_2.06"
  end

  test do
	system "#{bin}/vesc_tool_2.06", "-h"
  end
end
