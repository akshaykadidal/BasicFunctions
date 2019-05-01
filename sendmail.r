install.packages("mailR")
library(mailR)


send.mail(from = "sender@gmail.com",
          to = c("rcvr@gmail.com","akshaykadidal@gmail.com"),#
          #replyTo = c("Reply to someone else <someone.else@gmail.com>")
          subject = "Test mail sent from your App",
          body = 'Hello Sir, <br><br> You are receiving this mail from the xxxx application hosted on the linux server. <br><br>Please find the requested report attached <br><br>We can setup a diffrent from address like abcd@gmail.com<br><br><img src="./sample.png"> <br><br> The above image is a sample of embedded image in the mail',
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name = "smtp.gmail.com", port = 465, user.name = "onemailtotesttheuniverse", passwd = "xxxxx", ssl = TRUE), # this can't be your personal account security settings have to be changed.
          authenticate = TRUE,
          send = TRUE,
          #attach.files = c("./Jackson_1527760159_.pdf")
          )



emaikl<- send.mail(from = "akshaykadidal@gmail.com",
                   to = c("another@gmail.com"),
                   #replyTo = c("Reply to someone else <someone.else@gmail.com>")
                   subject = "Test e-mail",
                   body = 'Hello sir, <br><br> You are receiving this mail from the xxx application hosted on the linux server. <br><br>Please find the requested report attached <br><br>We can setup a diffrent from address like another@gmail.com <br><br> The above image is a sample of embedded image in the mail',
                   html = TRUE,
                   inline = TRUE,
                   smtp = list(host.name = "aspmx.l.google.com", port = 25),
                   authenticate = FALSE,
                   send = FALSE)