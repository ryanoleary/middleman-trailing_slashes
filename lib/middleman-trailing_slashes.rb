require "middleman-core"

::Middleman::Extensions.register(:trailing_slashes) do
  require "middleman-trailing_slashes/extension"
  ::Middleman::TrailingSlashes
end