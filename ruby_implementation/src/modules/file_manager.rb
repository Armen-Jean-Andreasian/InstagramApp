module FileManager

  module BinaryFileSaver

    # Writes the content to a file, returns the total number bytes written
    # @param output_path [String]
    # @param content [String] the binary data to write
    def self.save(output_path, content)
      File.binwrite(output_path, content)
    end

  end

end