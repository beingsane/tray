<?php
/*
 * This file is part of Web Instant Messenger project.
 *
 * Copyright (c) 2005-2007 Internet Services Ltd.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Evgeny Gryaznov - initial API and implementation
 */

require('libs/common.php');
require('libs/chat.php');

$errors = array();
$page = array();

$mail = getparam('email');
$name = getparam('name');
$message = getparam('message');

if( !$mail ) {
	$errors[] = no_field("form.field.email");
} else if( !$name ) {
	$errors[] = no_field("form.field.name");
} else if( !$message ) {
	$errors[] = no_field("form.field.message");
} else {
	if( !is_valid_email($mail)) {
		$errors[] = wrong_field("form.field.email");
	}
}

if( count($errors) > 0 ) {
	$page['formname'] = $name;
	$page['formemail'] = $mail;
	$page['formmessage'] = $message;
	start_html_output();
	require('view/chat_leavemsg.php');
	exit;
}

$subject = getstring2_("leavemail.subject", array($name), $webim_messages_encoding);
$body = getstring2_("leavemail.body", array($name,$mail,$message), $webim_messages_encoding); 

$headers = 'From: '.$webim_from_email."\r\n" .
   'Reply-To: '.$mail."\r\n" .
   'X-Mailer: PHP/'.phpversion();

mail($webim_messages_mail,$subject,wordwrap($body,70),$headers);


start_html_output();
require('view/chat_leavemsgsent.php');
?>