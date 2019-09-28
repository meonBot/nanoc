# frozen_string_literal: true

module Nanoc
  module Base
    module CompilationStages
      class Postprocess < Nanoc::Core::CompilationStage
        include Nanoc::Core::ContractsSupport

        def initialize(action_provider:, site:)
          @action_provider = action_provider
          @site = site
        end

        contract Nanoc::Int::Compiler => C::Any
        def run(compiler)
          @action_provider.postprocess(@site, compiler)
        end
      end
    end
  end
end
