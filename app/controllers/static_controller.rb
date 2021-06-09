class StaticController < ApplicationController
    before_action :require_token, only: [:feed]
    def index

    end

    def feed

    end
end
