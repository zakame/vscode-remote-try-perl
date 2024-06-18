#!/usr/bin/env perl
use Mojolicious::Lite -signatures;

my $app = app;

$app->routes->get( '/' => sub ($c) {
  $c->render(template => 'index');
});

$app->start;
