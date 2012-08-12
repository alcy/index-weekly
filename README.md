Index your favorite weekly archive and search them using elasticsearch. Current script does this for Devops Weekly, but its easy to do modifications to do others like Ruby Weekly or Perl Weekly. 
    
    $ curl 'localhost:9200/_search?q=puppet&pretty=true'
    {
        "_shards": {
            "failed": 0, 
            "successful": 5, 
            "total": 5
        }, 
        "hits": {
            "hits": [
                {
                    "_id": "O8bKC4eARHKELDsXGReCVw", 
                    "_index": "weekly", 
                    "_score": 0.6823864, 
                    "_source": {
                        "content": "Shadow Puppet is described as a Ruby DSL for Puppet, giving those that prefer it a different way of writing Puppet manifests in this case as Ruby classes.", 
                        "content_links": [
                            "https://github.com/railsmachine/shadow_puppet/"
                        ], 
                        "issue_date": "2011/09/18", 
                        "issue_num": "39"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "WaQ2uunMTfyQ9FtesqjXeg", 
                    "_index": "weekly", 
                    "_score": 0.6788361, 
                    "_source": {
                        "content": "First of a couple of Puppet articles I read with interest this week. This one covers self-classifying puppet nodes, and is a good walkthrough with code examples of using puppet and mcollective.", 
                        "content_links": [
                            "http://nuknad.com/2011/02/11/self-classifying-puppet-nodes/"
                        ], 
                        "issue_date": "2011/02/15", 
                        "issue_num": "10"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "EaCN65d0SCW8Qtw5PgM3xg", 
                    "_index": "weekly", 
                    "_score": 0.65553415, 
                    "_source": {
                        "content": "Hot on the heals of the excellent puppet extensions series comes the start of a series on Puppet internals. This first part covers the Puppet Parser in quite some detail. Lots of code, good diagrams. If you\u2019re interested in working on Puppet itself or just seeing the insides of an interesting piece of software this is worth reading.", 
                        "content_links": [
                            "http://www.masterzen.fr/2011/12/27/puppet-internals-the-parser/"
                        ], 
                        "issue_date": "2012/01/01", 
                        "issue_num": "52"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "wAFRwzRCS0On_eZKPvKdGg", 
                    "_index": "weekly", 
                    "_score": 0.63471824, 
                    "_source": {
                        "content": "A video from the recent London Puppet user group meetup, with Ken Barber talking on Puppet, Private Clouds and Building Solutions. It looks to be a pretty nice demo of OpenNebula as well as some Puppet tools.", 
                        "content_links": [
                            "http://forwardtechnology.co.uk/videos/32197839"
                        ], 
                        "issue_date": "2011/11/27", 
                        "issue_num": "48"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "OiPAz0gPTqmASKQon9JkqA", 
                    "_index": "weekly", 
                    "_score": 0.5878893, 
                    "_source": {
                        "content": "More folks are using Configuration Management tools as part of application deployment and this is a nice (and very well documented) puppet module aimed at managing Python WSGI and Django web applications.", 
                        "content_links": [
                            "http://journal.uggedal.com/deploying-wsgi-applications-with-puppet/", 
                            "https://github.com/uggedal/puppet-module-webapp"
                        ], 
                        "issue_date": "2011/10/02", 
                        "issue_num": "40"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "P-419BSHTg2aRRMcxxH4_g", 
                    "_index": "weekly", 
                    "_score": 0.580745, 
                    "_source": {
                        "content": "As mentioned earlier the topic of testing configuration management came up a few times this week, and this post is one of the very few around on the topic. It covers using Cucumber-puppet, Rspec-puppet and puppet-lint to introduce some useful tests to your puppet code.", 
                        "content_links": [
                            "http://www.jedi.be/blog/2011/12/05/puppet-unit-testing-like-a-pro/"
                        ], 
                        "issue_date": "2011/12/18", 
                        "issue_num": "51"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "ZDfc9JK_QSqLBHQSciFK3A", 
                    "_index": "weekly", 
                    "_score": 0.5625015, 
                    "_source": {
                        "content": "Not everyone chooses to use a puppetmaster when using puppet, and this article covers a simple approach to kicking of puppet runs using Fabric.", 
                        "content_links": [
                            "http://www.magpiebrain.com/2011/08/21/using-fabric-to-apply-puppet-scripts/"
                        ], 
                        "issue_date": "2011/08/28", 
                        "issue_num": "36"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "7aVzdScWRoGGrnYCxrhoiw", 
                    "_index": "weekly", 
                    "_score": 0.5623039, 
                    "_source": {
                        "content": "The idea of writing tests for configuration management has been around for a while but this take on it looks particularly interesting. Using cucumber to make assertions based on puppet providers looks a pretty simple approach code wise.", 
                        "content_links": [
                            "http://www.unixdaemon.net/tools/puppet/puppet-cucumber-providers.html"
                        ], 
                        "issue_date": "2011/03/24", 
                        "issue_num": "15"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "e-8NexGARMON5c6qBPAtyw", 
                    "_index": "weekly", 
                    "_score": 0.5623039, 
                    "_source": {
                        "content": "Puppet Labs is hosting its bi-annual conference for users and developers in Amsterdam on April 28th and 29th. Early bird tickets are available now and the call for papers ends March 6th for those interested in speaking.", 
                        "content_links": [
                            "http://www.puppetlabs.com/community/puppet-camp/puppet-camp-ams-2011-info"
                        ], 
                        "issue_date": "2011/01/28", 
                        "issue_num": "8"
                    }, 
                    "_type": "devops"
                }, 
                {
                    "_id": "LA7fsubXQ7m73uD4RTtsFA", 
                    "_index": "weekly", 
                    "_score": 0.5430689, 
                    "_source": {
                        "content": "The third article in a good series of posts about extending Puppet. This one particularly caught the eye as it covers what the Indirector is. If you\u2019ve delved into Puppet source recently then you\u2019ll have come across this and if you\u2019re anything like me taken a bit of time to get your head around. This post solves that problem for future visitors to the Puppet code very nicely.", 
                        "content_links": [
                            "http://www.masterzen.fr/2011/12/11/the-indirector-puppet-extensions-points-3/"
                        ], 
                        "issue_date": "2011/12/18", 
                        "issue_num": "51"
                    }, 
                    "_type": "devops"
                }
            ], 
            "max_score": 0.6823864, 
            "total": 89
        }, 
        "timed_out": false, 
        "took": 2
        }
