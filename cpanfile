requires 'perl', '5.016';
requires 'Mojolicious';

on develop => sub {
    requires 'PadWalker';
    requires 'Perl::Tidy';
    requires 'Perl::Critic';
};
