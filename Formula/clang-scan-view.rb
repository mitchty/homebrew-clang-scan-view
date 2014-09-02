#!/usr/bin/env ruby
#-*-mode: Ruby; coding: utf-8;-*-
require 'formula'

class ClangScanView < Formula
  homepage 'http://llvm.org'
  url "http://llvm.org/svn/llvm-project/cfe/trunk/tools/scan-view", :using => :svn
  depends_on 'llvm' => 'with-clang'

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/'scan-view'
  end
end
