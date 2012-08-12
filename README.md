Index your favorite weekly archive & search 'em.  
Its easy to index other weeklies like Ruby Weekly or Perl Weekly etc. with simple modifications.

Current script indexes the Devops Weekly.

    curl 'localhost:9200/_search?q=puppet&pretty=true'
    {
      "_index" : "weekly",
      "_type" : "devops",
      "_id" : "P-419BSHTg2aRRMcxxH4_g",
      "_score" : 0.580745, "_source" : {"issue_num":"51","issue_date":"2011/12/18","content":"As mentioned earlier the topic of testing configuration management came up a few times this week, and this post is one of the very few around on the topic. It covers using Cucumber-puppet, Rspec-puppet and puppet-lint to introduce some useful tests to your puppet code.","content_links":["http://www.jedi.be/blog/2011/12/05/puppet-unit-testing-like-a-pro/"]}
    }, {
      "_index" : "weekly",
      "_type" : "devops",
      "_id" : "ZDfc9JK_QSqLBHQSciFK3A",
      "_score" : 0.5625015, "_source" : {"issue_num":"36","issue_date":"2011/08/28","content":"Not everyone chooses to use a puppetmaster when using puppet, and this article covers a simple approach to kicking of puppet runs using Fabric.","content_links":["http://www.magpiebrain.com/2011/08/21/using-fabric-to-apply-puppet-scripts/"]}
    }, {
      "_index" : "weekly",
      "_type" : "devops",
      "_id" : "7aVzdScWRoGGrnYCxrhoiw",
      "_score" : 0.5623039, "_source" : {"issue_num":"15","issue_date":"2011/03/24","content":"The idea of writing tests for configuration management has been around for a while but this take on it looks particularly interesting. Using cucumber to make assertions based on puppet providers looks a pretty simple approach code wise.","content_links":["http://www.unixdaemon.net/tools/puppet/puppet-cucumber-providers.html"]}
    },
 
