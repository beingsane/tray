<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>${msg:chat.window.title.user}</title>
<link rel="shortcut icon" href="${webimroot}/images/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="${tplroot}/chat.css" />
</head>
<body>
<div id="whitebg">
	<table cellpadding="0" cellspacing="5" border="0" width="100%">
		<tr>
			<td>
				<h1>${msg:chat.mailthread.sent.title}</h1>
			</td>
		</tr>
		<tr>
			<td>
				<table id="form" cellspacing="3" cellpadding="0" border="0">
					<tr>
						<td>
							${msg:chat.mailthread.sent.content,email}
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="right">
				<table cellspacing="3" cellpadding="0" border="0">
					<tr>
						<td><a href="javascript:window.close();" title="${msg:chat.mailthread.sent.close}"><img src="${tplroot}/images/buttons/closewin.gif" border="0" alt="${msg:chat.mailthread.sent.close}"/></a></td>
						<td class="button"><a href="javascript:window.close();" title="${msg:chat.mailthread.sent.close}">${msg:chat.mailthread.sent.close}</a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table id="footer" cellpadding="0" cellspacing="5" border="0" width="100%" height="100%">
		<tr>
			<td valign="top">
				${msg:chat.window.poweredby} <a href="${msg:site.url}" title="${msg:company.title}" target="_blank">${msg:chat.window.poweredreftext}</a>
			</td>
		</tr>
	</table>
</div>
</body>
</html>
