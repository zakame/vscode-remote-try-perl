#!/usr/bin/env perl
use Mojolicious::Lite -signatures;

# written slightly differently from the standard example
# to illustrate Perl Navigator and Debug Adapter features
my $app = app;

$app->routes->get(
  '/' => sub ($c) {
    $c->render(template => 'index');
  }
);

$app->start;
