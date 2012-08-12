use strict;
use warnings;
use Encode;
use HTML::TreeBuilder;
use HTML::SimpleLinkExtor;
use ElasticSearch;

my $es = ElasticSearch->new();

my $issues = sub {
  my @archived; 
  my $url = "http://devopsweekly.com/archive";
  my $extor = HTML::SimpleLinkExtor->new();
  $extor->parse_url($url);
  my @links = $extor->links;
  foreach (@links) { push (@archived, $_) if $_ =~ m"/\d{4}/\d{2}/\d{2}/(issue-)?\d+"; }
  return \@archived;
};

my $index = sub { 
  my $archive = shift;
  my @links = @$archive;
  for my $link (@links) {
    my ($issue_date, $issue_num) = ($link =~ m"/(\d{4}/\d{2}/\d{2})/(?:issue-)?(\d+)");
    print $link . "\n";
    my $tree = HTML::TreeBuilder->new_from_url("http://devopsweekly.com$link"); # extra '/' results in failed GET
    my $news = $tree->look_down('_tag', qr/h(1|2)/, sub { $_[0]->as_text =~ /^News$/ }); # start from News
    if (!defined($news)) {
      print "Couldn't start indexing $link";
      next;
    }
    my @rest = $news->right;
    for my $element (@rest) {
      my $content;
      my @content_links;
      if ($element->tag eq "p" and $element->descendants == 0) { 
        $content = $element->as_text;
        my @right = $element->right;
        for my $e (@right) {
          if ( $e->tag eq "p" and $e->descendants > 0 ) {
            foreach (@{$e->extract_links}) { my $link = @$_[0]; push (@content_links, $link) } 
          } else { last; }
        }
	$es->index(
	  index => "weekly",
	  type => "devops",
	  data => { 
	    "content" => decode_utf8($content),
	    "content_links" => \@content_links,
	    "issue_date" => $issue_date,
	    "issue_num" => $issue_num
	  });
      }
    }
  }
};

my $archive = $issues->();
$index->($archive); 
