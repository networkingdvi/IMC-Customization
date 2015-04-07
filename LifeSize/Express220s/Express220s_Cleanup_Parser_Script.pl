#! /usr/local/bin/perl

sub cleanupConfiguration
{
  my($config) = @_;

  $start = index($config, "\#");
  if ($start == -1) {$start = 0;}
  $cleanConfig = substr($config, $start);

  $cleanConfig =~ s/\[.*\] \$.*/\n/; 
  $cleanConfig =~ s/\n+$//;

  $cleanConfig = substr($cleanConfig,0,-8);
  
  return $cleanConfig;
}