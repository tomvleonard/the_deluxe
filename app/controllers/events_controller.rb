class EventsController < ApplicationController
  before_action :authenticate_admin!
end
