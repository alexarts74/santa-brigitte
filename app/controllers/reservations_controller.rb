class ReservationsController < ApplicationController

end






#   def new
#     @reservation = Reservation.new
#   end

#   def create
#     @reservation = Reservation.new(reservation_params)
#     #mettre en place le systeme de date

#     @reservation.user = current_user
#     #probleme avec l'envoie d'un mail et le systeme de paiement vont'il ensemble
#     if @reservation.save
#       # ReservationMailer.with(reservation: @reservation).reservation_email.deliver_now

#       redirect_to root_path
#       # flash[:success] = "Your message has been sent successfully."
#     else
#       render :new
#     end

#     # Perform any necessary actions with the form data

#   end
# end

# private

# def reservation_params
#   params.require(:reservation).permit(:name, :lastname, :email, :message)
# end

 # def create
  #   @tree = Tree.find(params[:tree_id])
  #   @adoption = Adoption.new(adoption_params)
  #   @adoption.starts_at = Date.current
  #   @adoption.ends_at = Date.current + 1.year
  #   @adoption.tree = @tree
  #   @adoption.user = current_user
  #   if @adoption.save
  #     redirect_to tree_path(@tree)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end
