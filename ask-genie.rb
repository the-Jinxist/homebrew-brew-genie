# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AskGenie < Formula
  desc "CLI app to suggest prompted commands"
  homepage "https://github.com/the-Jinxist/cmd_genie"
  version "0.4.10"

  on_macos do
    on_intel do
      url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.10/cmd_genie_Darwin_x86_64.tar.gz"
      sha256 "99197105cda27004c6353297b63911eba9504affdcdfd0407ffef855196811f5"

      def install
        bin.install "cmd_genie"
      end
    end
    on_arm do
      url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.10/cmd_genie_Darwin_arm64.tar.gz"
      sha256 "728cd467f477def6db4f0e33ef08122b9508097d18ec1e0d9100d31a44d5c114"

      def install
        bin.install "cmd_genie"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.10/cmd_genie_Linux_x86_64.tar.gz"
        sha256 "70b188bf0a5578afc6dc45e9f9b8407724b14aa5f49d0ca9fbb812128fa0d9d2"

        def install
          bin.install "cmd_genie"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/the-Jinxist/cmd_genie/releases/download/v0.4.10/cmd_genie_Linux_arm64.tar.gz"
        sha256 "df548073ffd570d24b9a78b008f6050e074cdf573f609556130295271d6c7d6c"

        def install
          bin.install "cmd_genie"
        end
      end
    end
  end

  def post_install
    cmd_genie --help
  end
end
