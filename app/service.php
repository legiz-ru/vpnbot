<?php

require __DIR__ . '/timezone.php';

require __DIR__ . '/bot.php';
require __DIR__ . '/config.php';
require __DIR__ . '/i18n.php';

if ($c['debug']) {
    require __DIR__ . '/debug.php';
}

$bot = new Bot($c['key'], $i);

$bot->selfUpdate();
$bot->ssPswdCheck();
$bot->restartTG();
if (!empty($bot->selfupdate)) {
    $bot->offWarp();
}
$bot->dontshowcron = 1;
$bot->sslip();
$bot->adguardSync();
$bot->cloakNginx();
$bot->syncDeny();
$bot->cleanDocker();
$bot->dnsttStart();
$c = $bot->getPacConf();
$bot->setUpstreamDomain($c['pac']['transport'] != 'Reality' ? 't' : ($c['pac']['reality']['domain'] ?: $c['xray']['inbounds'][0]['streamSettings']['realitySettings']['serverNames'][0]));
$bot->setUpstreamDomainNaive($c['domain']);
$bot->setUpstreamDomainOcserv($c['domain']);
$bot->setUpstreamDomainHysteria($c['domain']);
