## Middleman extension - trailing slashes

This extension for middleman ensures that the built in "middleman server" command ensures that folders are appended with a "/" if they are accessed directly.

For example, say you have some content in "/foo/bar/index.html" and you type in your browser "/foo/bar". This extension will cause middleman to issue a 301 redirect to "/foo/bar/".

## Usage

Add the following to your gemfile:
`gem 'middleman-trailing_slashes'`

Then just activate the extension in your `config.rb` file. The below example only enables this extension in development mode:

```
# development configuration
configure :development do
  activate :trailing_slashes
end
```

## Contributors
ryanoleary

## License
See [the license file](LICENSE)