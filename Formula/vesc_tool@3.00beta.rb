class VescToolAT300beta < Formula
  desc "This is a GUI written using the Qt toolkit to configure the VESC motor controller"
  homepage "http://vesc-project.com/"
  url "https://github.com/vedderb/vesc_tool.git",
  head "https://github.com/vedderb/vesc_tool.git"
  version "3.00beta"
  sha256 ""
  license "GPL-3.0"

  depends_on "qt"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
	system "qmake -config release 'CONFIG += release_macos build_free'"
	system "make", "clean"
	system "make", "-j8"
    prefix.install "build/macos/vesc_tool_3.00.app"
	bin.install_symlink "prefix/vesc_tool_3.00.app/Contents/MacOS/vesc_tool_3.00"
  end

  test do
	system "#{bin}/vesc_tool_3.00", "-h"
  end
end
