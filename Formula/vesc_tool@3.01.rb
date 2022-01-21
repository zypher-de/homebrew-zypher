class VescToolAT301beta < Formula
  desc "This is a GUI written using the Qt toolkit to configure the VESC motor controller"
  homepage "http://vesc-project.com/"
  url "https://github.com/vedderb/vesc_tool.git",
		:branch => "release_3_01"
  head "https://github.com/vedderb/vesc_tool.git"
  version "3.01"
  license "GPL-3.0"

  depends_on "qt@5"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
	system "qmake -config release 'CONFIG += release_macos build_free'"
	system "make", "clean"
	system "make", "-j8"
    prefix.install "build/macos/vesc_tool_3.01.app"
	bin.install_symlink prefix/"vesc_tool_3.01.app/Contents/MacOS/vesc_tool_3.01"
  end

  test do
	system "#{bin}/vesc_tool_3.01", "-h"
  end
end
