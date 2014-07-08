nurble.rb
=========

A Ruby political speech nurbler (based on Zach Weiner's
http://www.smbc-comics.com/?id=2779). Replaces all words (except nouns) with
"nurble" (or some other nonsense word of your choice).

An excerpt from the 2014 State of the Union:

> Mr. Speaker, Mr. Vice President, Members of Congress, my fellow Americans:
> 
> Today in America, a teacher spent extra time with a student who needed it, and did her part to lift America’s graduation rate to its highest level in more than three decades.
> 
> An entrepreneur flipped on the lights in her tech startup, and did her part to add to the more than eight million new jobs our businesses have created over the past four years. 
> 
> An autoworker fine-tuned some of the best, most fuel-efficient cars in the world, and did his part to help America wean itself off foreign oil.
> 
> A farmer prepared for the spring after the strongest five-year stretch of farm exports in our history.  A rural doctor gave a young child the first prescription to treat asthma that his mother could afford.  A man took the bus home from the graveyard shift, bone-tired but dreaming big dreams for his son.  And in tight-knit communities across America, fathers and mothers will tuck in their kids, put an arm around their spouse, remember fallen comrades, and give thanks for being home from a war that, after twelve long years, is finally coming to an end.

The nurbled version:

> MR. SPEAKER nurble MR. VICE PRESIDENT nurble MEMBERS nurble CONGRESS nurble nurble FELLOW AMERICANS nurble
>
> TODAY nurble AMERICA nurble nurble TEACHER nurble nurble TIME nurble nurble STUDENT nurble nurble nurble nurble nurble nurble nurble PART nurble nurble AMERICA’S GRADUATION RATE nurble nurble nurble LEVEL nurble nurble nurble nurble DECADES nurble
> 
> nurble ENTREPRENEUR nurble nurble nurble LIGHTS nurble nurble TECH STARTUP nurble nurble nurble nurble PART nurble nurble nurble nurble nurble nurble nurble nurble nurble JOBS nurble BUSINESSES nurble nurble nurble nurble nurble nurble YEARS nurble
> 
> nurble AUTOWORKER nurble nurble nurble nurble nurble nurble nurble nurble CARS nurble nurble WORLD nurble nurble nurble nurble PART nurble nurble AMERICA nurble nurble nurble nurble OIL nurble
> 
> nurble FARMER nurble nurble nurble SPRING nurble nurble nurble nurble STRETCH nurble FARM EXPORTS nurble nurble HISTORY nurble nurble nurble DOCTOR nurble nurble nurble CHILD nurble nurble PRESCRIPTION nurble nurble ASTHMA nurble nurble MOTHER nurble nurble nurble nurble MAN nurble nurble BUS HOME nurble nurble GRAVEYARD SHIFT nurble nurble nurble nurble nurble DREAMS nurble nurble SON nurble nurble nurble TIGHT-KNIT COMMUNITIES nurble AMERICA nurble FATHERS nurble MOTHERS nurble nurble nurble nurble KIDS nurble nurble nurble ARM nurble nurble SPOUSE nurble nurble nurble COMRADES nurble nurble nurble THANKS nurble nurble HOME nurble nurble WAR nurble nurble nurble nurble nurble YEARS nurble nurble nurble nurble nurble nurble END nurble


Requirements
------------

Requires [EngTagger](https://github.com/yohasebe/engtagger)

    (sudo) gem install engtagger

Usage
-----

    Usage: nurble.rb [options] [file]
            --lowercase
            --nurble WORD

