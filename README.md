vagrant-destory
===============

Like vagrant destroy, but spelled creatively.
Since vagrant doesn't have an "alias" command, this is the simplest way I found to auto-correct my infuriatingly common mistype.

Installation
------------

Since this plugin is too silly to actually register it, you'll have to install from source.

1. Clone project
2. Create a gem file: `rake build`
3. Install local gem: `vagrant plugin install pkg/vagrant-destory-0.0.1.gem`

Usage
-----

Should be an exact match for `vagrant destroy`

```bash
$ vagrant destory -f machine2
```

License
-------

MIT licensed. See LICENSE.md for details.
