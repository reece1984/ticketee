class Notifier < ActionMailer::Base
  default from: "ticketee@gmail.com"

  def comment_updated(comment, user)
  	@comment = comment
  	@user = user
  	mail(:to => user.email, 
  			 :from => "Ticketee <jamesreece84+#{comment.project.id}+#{comment.ticket.id}@gmail.com>",
  			 :subject => "[ticketee] #{comment.ticket.project.name} - #{comment.ticket.title}")
  end

end
