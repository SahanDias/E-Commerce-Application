<%-- 
    Document   : contactForm
    Created on : Apr 25, 2024, 10:21:03 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Contact Form</title>
    </head>
    <body>
        <div>
            <form method="POST" id="contactForm" name="contactForm" class="contactForm">
		<div class="row">
                    <div class="col-md-12">
			<div class="form-group">
                            <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                        </div>
                    </div>
                    <div class="col-md-12"> 
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                        </div>
                    </div>
                    <div class="col-md-12">
			<div class="form-group">
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">
			</div>
                    </div>
                    <div class="col-md-12">
			<div class="form-group">
                            <textarea name="message" class="form-control" id="message" cols="30" rows="6" placeholder="Message"></textarea>
			</div>
                    </div>
                    <div class="col-md-12">
			<div class="form-group">
                            <input type="submit" value="Send Message" class="btn btn-primary">
                            <div class="submitting"></div>
			</div>
                    </div>
		</div>
            </form>
        </div>
    </body>
</html>
