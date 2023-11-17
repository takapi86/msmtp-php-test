<?php

$to = 'hoge+to@example.com';
$subject = 'Test Mail';
$message = "This is a test mail.";
$headers = "From: hoge+from@example.com";
$additional_parameters = '-fhoge+envelopeFrom@example.com';

if (mb_send_mail($to, $subject, $message, $headers, $additional_parameters)) {
    echo "メール送信成功";
} else {
    echo "メール送信失敗";
}
