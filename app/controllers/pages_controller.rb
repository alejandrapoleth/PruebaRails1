class PagesController < ApplicationController
 		
skip_before_filter :verify_authenticity_token

def batmanvssuperman
	@voto=Voto.new
end

end
