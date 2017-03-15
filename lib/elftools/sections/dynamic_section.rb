require 'elftools/dynamic'
require 'elftools/sections/section'

module ELFTools
  module Sections
    # Class for dynamic table section.
    #
    # This section should always be named .dynamic.
    # This class knows how to get the list of dynamic tags.
    class DynamicSection < Section
      include ELFTools::Dynamic

      def tag_start
        header.sh_offset
      end
    end
  end
end
