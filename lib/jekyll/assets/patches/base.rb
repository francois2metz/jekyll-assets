# Frozen-string-literal: true
# Copyright: 2012 - 2020 - ISC License
# Encoding: utf-8

module Jekyll
  module Assets
    module Patches
      module Base
        def find_asset!(*args, **kwargs)
          uri, _ = resolve!(*args, **kwargs)
          if uri
            load(uri)
          end
        end
      end
    end
  end
end

module Sprockets
  class Base
    prepend Jekyll::Assets::Patches::Base
  end
end
