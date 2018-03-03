class QuadrantsController < ApplicationController
  private quadrant_params
  params.require(:quadrant).permit(:title)
  end
end
