module VagrantPlugins
  module Destory
    class Command < Vagrant.plugin(2, :command)
      def self.synopsis
        'Alias to destroy'
      end

      def execute
        options = {}
        options[:force] = false

        opts = OptionParser.new do |o|
          o.banner = 'Usage: vagrant destory [options] [vm-name]'
          o.separator ''
          o.separator 'Options:'
          o.separator ''

          o.on("-f", "--force", "Destroy without confirmation.") do |f|
            options[:force] = f
          end
        end
        argv = parse_options(opts)
        return unless argv

        @logger.debug("'Destroy' each target VM...")
        declined = 0
        total    = 0
        with_target_vms(argv, reverse: true) do |vm|
          action_env = vm.action(
            :destroy, force_confirm_destroy: options[:force])

          total    += 1
          declined += 1 if action_env.key?(:force_confirm_destroy_result) &&
            action_env[:force_confirm_destroy_result] == false
        end

        # Nothing was declined
        return 0 if declined == 0

        # Everything was declined
        return 1 if declined == total

        # Some was declined
        return 2
      end
    end
  end
end