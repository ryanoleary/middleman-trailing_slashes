module Middleman
  class TrailingSlashes < ::Middleman::Extension

    def initialize(app, options_hash={}, &block)
      super
      app.before do
        request_path = URI.decode(req.env['PATH_INFO'].dup)

        fname = root_path.to_s + "/source" + request_path

        if Dir.exist?(fname) && request_path[-1] != "/"
          res = ::Rack::Response.new
          res.status = 301
          res.header["Location"] = request_path + "/"
          halt res.finish
        end
      end
    end
  end
end