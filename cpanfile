requires 'perl';
requires 'Mojolicious';

on develop => sub {
    requires 'PadWalker';
    requires 'Perl::Tidy';
    requires 'Perl::Critic';
};
