<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xyz.aspx.cs" Inherits="abc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 691px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<!DOCTYPE html><html><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><title> : Image analysis</title><meta name="description" content=""><meta name="viewport" content="width=device-width"><link rel="stylesheet" href="libs/twitter-bootstrap/bootstrap.min.css"><link rel="stylesheet" href="Fingerprints/resemble.css?v1"></head><body><div class="container">
			<header>
			</header>
           <!-- <asp:Button ID="Button2" runat="server" Text="Image2" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Image3" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Image4" OnClick="Button4_Click" />-->
			<section role="main">
				<div class="row">
					<div class="span12">
						<div class="hero-unit">
							<div class="row">
								<div class="span6">
            <asp:Button ID="Button1" runat="server" Text="Upload Database Image" OnClick="Button1_Click" />
															</div>
								<div class="span4">
																		</p>
									<div id="image-data" style="display:none">

										RGB
									    <div class="progress progress-danger">
										    <div id="red" class="bar" style="width: 0%;"></div>
									    </div>
									    <div class="progress progress-success">
										    <div id="green" class="bar" style="width: 0%;"></div>
									    </div>
									    <div class="progress">
										    <div id="blue" class="bar" style="width: 0%;"></div>
									    </div>

									    Brightness
									    <div class="progress progress-warning">
									    	<div id="brightness" class="bar" style="width: 0%;"></div>
									    </div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="span12">
						<div class="row">
							<div class="span6">
								<div id="dropzone1" class="small-drop-zone">
									Signature to be verified
								</div>
								<div id="dropzone2" class="small-drop-zone">
									Signature from database
								</div>
							</div>
							<div class="span6">
								<h2>Comparision!!</h2>
								<p>

								</p>
								<p>
				<button class="btn" id="example-images">Compare</button>
								</p>
								<div id="image-diff" class="small-drop-zone">
									Diff will appear here.
								</div>
								<br/>

								<div class="btn-group buttons" style="display:none">
									<button class="btn active" id="raw">Ignore nothing</button>
									<button class="btn" id="colors">Ignore colors</button>
									<button class="btn" id="antialising">Ignore antialiasing</button>
								</div>

								<br/>
								<br/>

								<div class="btn-group buttons" style="display:none">
									<button class="btn active" id="pink">Pink</button>
									<button class="btn" id="yellow">Yellow</button>
								</div>
								<br/>
								<br/>

								<div class="btn-group buttons" style="display:none">
<!--									<button class="btn active" id="flat">Flat</button>
									<button class="btn" id="movement">Movement</button>
									<button class="btn" id="flatDifferenceIntensity">Flat with diff intensity</button>
									<button class="btn" id="movementDifferenceIntensity">Movement with diff intensity</button>-->
								</div>
								<br/>
								<br/>

								<div class="btn-group buttons" style="display:none">
									<button class="btn active" id="opaque">Opaque</button>
									<button class="btn" id="transparent">Transparent</button>
								</div>

								<br/>
								<br/>
								<div id="diff-results" style="display:none;">
									<p>
										<strong>The second image is <span id="mismatch"></span>
										<span id="differentdimensions" style="display:none;">And they have different dimensions.</span></strong>
                                         if (data.misMatchPercentage == 0){
                                        <script src="home.aspx"></script>
                                        }
                                        else
                                        {
                                          <script src="finger.aspx"></script>
                                        }

									</p>
									<p>
									</p>
								</div>
								
								<p id="thesame" style="display:none;">
									<strong>These images are the same!</strong>
								</p>
							</div>
						</div>
					</div>
				</div>
				<br/>
						
						<table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" text="Proceed" onclick="xyz()"  style="width: 274px" />click here to proceed</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
						<br/>
				<div class="row">
					<div class="span6">
						
						<p>
						</p>
						<p>
							<br/>
						</p>
					</div>
					<div class="span6">
						</div>
				</div>
			</section>
	  
			<footer class="footer">
				</footer>
		</div>
		<script src="jquery-1.11.3.js"></script>
		<script src="resemble.js"></script>
	<!--	<script src="Fingerprints/main.js"></script>-->
        <script>
            var mis;
            $(function () {
                var $target = $('#drop-zone');

                function dropZone($target, onDrop) {
                    $target.
                        bind('dragover', function () {
                            $target.addClass('drag-over');
                            return false;
                        }).
                        bind("dragend", function () {
                            $target.removeClass('drag-over');
                            return false;
                        }).
                        bind("dragleave", function () {
                            $target.removeClass('drag-over');
                            return false;
                        }).
                        bind("drop", function (event) {
                            var file = event.originalEvent.dataTransfer.files[0];

                            event.stopPropagation();
                            event.preventDefault();

                            $target.removeClass('drag-over');

                            var droppedImage = new Image();
                            var fileReader = new FileReader();

                            fileReader.onload = function (event) {
                                droppedImage.src = event.target.result;
                                $target.html(droppedImage);
                            };

                            fileReader.readAsDataURL(file);

                            onDrop(file);
                        });
                }

                dropZone($target, function (file) {

                    resemble(file).onComplete(function (data) {
                        $('#image-data').show();
                        $('#red').css('width', data.red + '%');
                        $('#green').css('width', data.green + '%');
                        $('#blue').css('width', data.blue + '%');
                        $('#brightness').css('width', data.brightness + '%');
                    });

                });

                function onComplete(data) {
                    var time = Date.now();
                    var diffImage = new Image();
                    diffImage.src = data.getImageDataUrl();

                    $('#image-diff').html(diffImage);

                    $(diffImage).click(function () {
                        window.open(diffImage.src, '_blank');
                    });

                    $('.buttons').show();
                    mis = data.misMatchPercentage;
                    if (data.misMatchPercentage == 0) {
                        $('#thesame').show();
                        $('#diff-results').hide();
                    } else {
                        $('#mismatch').text(data.misMatchPercentage);
                        if (data.misMatchPercentage <= 30) {
                            $('#mismatch').text(data.misMatchPercentage + "% Different  Verified");

                        }
                        else {
                            $('#mismatch').text(data.misMatchPercentage + "% Different  Rejected");

                        }
                        if (!data.isSameDimensions) {
                            $('#differentdimensions').show();
                        } else {
                            $('#differentdimensions').hide();
                        }
                        $('#diff-results').show();
                        $('#thesame').hide();
                    }
                }

                var file1;
                var file2;
                var resembleControl;

                dropZone($('#dropzone1'), function (file) {
                    file1 = file;
                    if (file2) {
                        resembleControl = resemble(file).compareTo(file2).onComplete(onComplete);
                    }
                });

                dropZone($('#dropzone2'), function (file) {
                    file2 = file;
                    if (file1) {
                        resembleControl = resemble(file).compareTo(file1).onComplete(onComplete);
                    }
                });

                var buttons = $('.buttons button');

                buttons.click(function () {
                    var $this = $(this);

                    $this.parent('.buttons').find('button').removeClass('active');
                    $this.addClass('active');

                    if ($this.is('#raw')) {
                        resembleControl.ignoreNothing();
                    }
                    else
                        if ($this.is('#colors')) {
                            resembleControl.ignoreColors();
                        }
                        else
                            if ($this.is('#antialising')) {
                                resembleControl.ignoreAntialiasing();
                            }
                            else
                                if ($this.is('#pink')) {
                                    resemble.outputSettings({
                                        errorColor: {
                                            red: 255,
                                            green: 0,
                                            blue: 255
                                        }
                                    });
                                    resembleControl.repaint();
                                }
                                else
                                    if ($this.is('#yellow')) {
                                        resemble.outputSettings({
                                            errorColor: {
                                                red: 255,
                                                green: 255,
                                                blue: 0
                                            }
                                        });
                                        resembleControl.repaint();
                                    }
                                    else
                                        if ($this.is('#flat')) {
                                            resemble.outputSettings({
                                                errorType: 'flat'
                                            });
                                            resembleControl.repaint();
                                        }
                                        else
                                            if ($this.is('#movement')) {
                                                resemble.outputSettings({
                                                    errorType: 'movement'
                                                });
                                                resembleControl.repaint();
                                            }
                                            else
                                                if ($this.is('#flatDifferenceIntensity')) {
                                                    resemble.outputSettings({
                                                        errorType: 'flatDifferenceIntensity'
                                                    });
                                                    resembleControl.repaint();
                                                }
                                                else
                                                    if ($this.is('#movementDifferenceIntensity')) {
                                                        resemble.outputSettings({
                                                            errorType: 'movementDifferenceIntensity'
                                                        });
                                                        resembleControl.repaint();
                                                    }
                                                    else
                                                        if ($this.is('#opaque')) {
                                                            resemble.outputSettings({
                                                                transparency: 1
                                                            });
                                                            resembleControl.repaint();
                                                        }
                                                        else
                                                            if ($this.is('#transparent')) {
                                                                resemble.outputSettings({
                                                                    transparency: 0.3
                                                                });
                                                                resembleControl.repaint();
                                                            }
                });

                (function () {
                    var xhr = new XMLHttpRequest();
                    var xhr2 = new XMLHttpRequest();
                    var done = $.Deferred();
                    var dtwo = $.Deferred();
                    var m = '<%= v %>';
                    var m2 = '<%= v2 %>';
            alert(m);
            xhr.open('GET', 'Fingerprints/' + m, true);
            xhr.responseType = 'blob';
            xhr.onload = function (e) {
                done.resolve(this.response);
            };
            xhr.send();

            xhr2.open('GET', 'Fingerprints/' + m2, true);
            xhr2.responseType = 'blob';
            xhr2.onload = function (e) {
                dtwo.resolve(this.response);
            };
            xhr2.send();

            $('#example-images').click(function () {
                var m = '<%= v %>';
                var m2 = '<%= v2 %>';
               // alert(m);
                $('#dropzone1').html('<img src="Fingerprints/' + m + '"/>');
                
                $('#dropzone2').html('<img src="Fingerprints/' + m2 + '"/>');

                $.when(done, dtwo).done(function (file, file1) {
                    if (typeof FileReader === 'undefined') {
                        var m = '<%= v %>';
                        var m2 = '<%= v2 %>';
                        resembleControl = resemble('Fingerprints/People.jpg').compareTo('Fingerprints/People2.jpg').onComplete(onComplete);
                    } else {
                        resembleControl = resemble(file).compareTo(file1).onComplete(onComplete);
                    }
                });

                return false;
            });

        }());

    });


    function xyz() {

        var m = '<%= v %>';
        document.write("b" + m);
        if (mis <= 20)
            window.location.replace(".aspx");
        else
            window.location.replace("home.aspx");
    }

</script>
	</body>
</html>

    
    </div>
    </form>
</body>
</html>
