module VagrantPlugins
  module Destory
    class Plugin < Vagrant.plugin(2)
      name 'vagrant-destory'
      description 'Another spelling (ahem) to vagrant destory.'

      command :destory do
        require_relative 'command'
        Command
      end
    end
  end
end
