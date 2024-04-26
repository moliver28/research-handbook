---
aliases: /handbook/engineering/infrastructure/core-platform/systems/cloud-connector/knowledge.html
title: Application Performance Group - Knowledge Sharing
---







## Knowledge Sharing

Early in the days of the Application Performance group's formation we started an [issue](https://gitlab.com/gitlab-org/memory-team/team-tasks/-/issues/13) to share memory domain articles, books and resources within our group and GitLab.  We are moving some of these resources to a shared handbook page.  We aim to update this frequently.

### Our approach to performance problems

We are life-long learners and every new challenge we take on means lessons were learned, and we
think that other teams can benefit from us documenting these.

We have therefore started to document [how we approach performance and memory related issues](approach.html), as well
as some common themes we have observed over the past months.

### Internal Training Materials

We have a materials shared in our internal `Ruby on Rails Performance Training` Google Drive.  To view the materials ensure that you are logged in with your GitLab account and go to [https://drive.google.com/](https://drive.google.com/) and expand your Shared Drives.  Everyone within GitLab should have access to these materials, but if you do not please submit an [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request).

### GitLab docs

- [GitLab - Performance Bar](https://docs.gitlab.com/ee/administration/monitoring/performance/performance_bar.html)
- [GitLab - Profiling](https://docs.gitlab.com/ee/development/profiling.html)
- [Jaeger for OpenTracing](https://docs.gitlab.com/ee/development/distributed_tracing.html)
- [Remote Request Profiling](https://docs.gitlab.com/ee/administration/monitoring/performance/request_profiling.html)

### Articles
- [42 performance tips for Ruby on Rails - Magnus Skog](https://www.mskog.com/posts/42-performance-tips-for-ruby-on-rails/)
- [Cables vs. malloc_trim, or yet another Ruby memory usage benchmark — Martian Chronicles, Evil Martians’ team blog](https://evilmartians.com/chronicles/cables-vs-malloc_trim-or-yet-another-ruby-memory-usage-benchmark)
- [Chapter 19: Threads - Ruby Hacking Guide](https://ruby-hacking-guide.github.io/thread.html)
- [CRuby Memory Slots: See Them, Tweak Them, Make Them Fast — Appfolio Engineering](http://engineering.appfolio.com/appfolio-engineering/2018/1/2/how-ruby-uses-memory)
- [Debugging memory leaks in Ruby](https://samsaffron.com/archive/2015/03/31/debugging-memory-leaks-in-ruby)
- [How do Ruby & Python profilers work?](https://jvns.ca/blog/2017/12/17/how-do-ruby---python-profilers-work-/)
- [Implementing threads :: Operating systems 2018](http://www.it.uu.se/education/course/homepage/os/vt18/module-4/implementing-threads/)
- [Incremental Garbage Collection in Ruby 2.2 - Heroku](https://blog.heroku.com/incremental-gc)
- [Inline caching in MRI - Tenderlovemaking](https://tenderlovemaking.com/2015/12/23/inline-caching-in-mri.html)
- [Java theory and practice: Anatomy of a flawed microbenchmark](https://web.archive.org/web/20210306030600/https://www.ibm.com/developerworks/java/library/j-jtp02225/)
- [Multithreading in the MRI Ruby Interpreter >>= BugFactory](https://bugfactory.io/blog/multithreading-in-the-mri-ruby-interpreter/)
- [Optimization Techniques by Benchmark Winners — Juanito Fatas](https://juanitofatas.com/optimization_techniques_by_benchmark_winners)
- [Optimizing Rails for Memory Usage Part 2: Tuning the GC - Collective Idea](https://collectiveidea.com/blog/archives/2015/02/19/optimizing-rails-for-memory-usage-part-2-tuning-the-gc)
- [Prometheus Counters and how to deal with them – INNOQ](https://www.innoq.com/en/blog/prometheus-counters/)
- [Rails profiling story, or how I caught Faker trying to teach my app Australian Slang — Martian Chronicles, Evil Martians’ team blog](https://evilmartians.com/chronicles/rails-profiling-story-or-how-i-caught-faker-trying-to-teach-my-app-australian-slang)
- [Ruby 2.7 and the Compacting Garbage Collector — Appfolio Engineering](http://engineering.appfolio.com/appfolio-engineering/2019/3/22/ruby-27-and-the-compacting-garbage-collector)
- [Ruby 2.x source code learning: memory management &amp; GC](https://programmer.help/blogs/ruby-2.x-source-code-learning-memory-management-amp-gc.html)
- [Ruby Concurrency and Parallelism in Multithreaded Apps: A Tutorial - Toptal](https://www.toptal.com/ruby/ruby-concurrency-and-parallelism-a-practical-primer)
- [Ruby's Global Method Cache — Appfolio Engineering](http://engineering.appfolio.com/appfolio-engineering/2018/7/18/rubys-global-method-cache)
- [Ruby's performance tuning way · GitHub](https://web.archive.org/web/20201028000754/https://gist.github.com/ko1/40110a3d951c19ed6979)
- [RubyKaigi2018: Faster Apps No Memory Thrash - Google Slides](https://docs.google.com/presentation/d/1-WrYwz-QnSI9yeRZfCCgUno-KOMuggiGHlmOETXZy9c/edit#slide=id.p)
- [Switching from Unicorn to Puma - FiNC Tech Blog - Medium](https://medium.com/finc-engineering/switching-to-puma-3a91575297af)
- [The Limits of Copy-on-write: How Ruby Allocates Memory](https://brandur.org/ruby-memory)
- [Tuning Ruby's Global Method Cache – Shopify Engineering](https://engineering.shopify.com/blogs/engineering/17489064-tuning-rubys-global-method-cache)
- [Understanding Ruby GC through GC.stat](https://www.speedshop.co/2017/03/09/a-guide-to-gc-stat.html)
- [Unicorn vs. Puma vs. Passenger: which app server is right for you? - Scout APM Blog](https://scoutapm.com/blog/which-ruby-app-server-is-right-for-you)
- [Untangling Ruby Threads](https://thoughtbot.com/blog/untangling-ruby-threads)
- [Visualizing Your Ruby Heap by Tenderlove](https://tenderlovemaking.com/2017/09/27/visualizing-your-ruby-heap.html)
- [Watching and Understanding the Ruby 2.1 Garbage Collector at Work - Thorsten Ball](https://thorstenball.com/blog/2014/03/12/watching-understanding-ruby-2.1-garbage-collector/)
- [What causes Ruby memory bloat? – Joyful Bikeshedding](https://www.joyfulbikeshedding.com/blog/2019-03-14-what-causes-ruby-memory-bloat.html)
- [Who's afraid of the big bad lock? - Space Vatican](https://www.spacevatican.org/2012/7/5/whos-afraid-of-the-big-bad-lock/)

### Books
- [How Linux Works: What Every Superuser Should Know by Brian Ward](https://www.goodreads.com/book/show/514432.How_Linux_Works)
- [Ruby Performance Optimization: Why Ruby Is Slow, and How to Fix It by Alexander Dymo](https://www.goodreads.com/book/show/25276703-ruby-performance-optimization)
- [Ruby Under a Microscope by Pat Shaughnessy](https://www.goodreads.com/book/show/16300795-ruby-under-a-microscope)
- [Working with Ruby Threads by Jesse Storimer](https://workingwithruby.com/wwrt/intro)

### Podcasts
- [Episode 372: Aaron Patterson on the Ruby Runtime : Software Engineering Radio](https://www.se-radio.net/2019/07/episode-372-aaron-patterson-on-the-ruby-runtime/)

### Tools
- [GitHub - ko1/allocation_tracer: Add ObjectSpace::AllocationTracer module.](https://github.com/ko1/allocation_tracer)
- [GitHub - michaelherold/benchmark-memory: Memory profiling benchmark style, for Ruby 2.1+](https://github.com/michaelherold/benchmark-memory)
- [GitHub - MiniProfiler/rack-mini-profiler: Profiler for your development and production Ruby rack apps.](https://github.com/MiniProfiler/rack-mini-profiler)
- [GitHub - ruby-prof/ruby-prof: A ruby profiler.](https://github.com/ruby-prof/ruby-prof)
- [GitHub - SamSaffron/memory_profiler: memory_profiler for ruby](https://github.com/SamSaffron/memory_profiler)
- [GitHub - srawlins/allocation_stats: Tooling for tracing object allocations in Ruby 2.1](https://github.com/srawlins/allocation_stats)
- [GitHub - tmm1/stackprof: a sampling call-stack profiler for ruby 2.1+](https://github.com/tmm1/stackprof)
- [rbspy docs](https://rbspy.github.io/)
