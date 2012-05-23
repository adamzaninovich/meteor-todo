Quotes = 
  choose: -> _.shuffle(@combine())[0]
  combine: -> @all.concat(@favorites.concat(@favorites))
  all: [
    {author:"Albert Einstein",    text:"A person who never made a mistake never tried anything new."}
    {author:"Albert Einstein",    text:"I have no special talent. I am only passionately curious."}
    {author:"Albert Einstein",    text:"Make everything as simple as possible, but not simpler."}
    {author:"Aristotle",          text:"We are what we repeatedly do. Excellence, therefore is not an act but a habit."}
    {author:"Buddha",             text:"A jug fills drop by drop."}
    {author:"Buddha",             text:"I never see what has been done; I only see what remains to be done."}
    {author:"Buddha",             text:"There are only two mistakes one can make along the road to truth; not going all the way, and not starting."}
    {author:"Buzz Lightyear",     text:"To infinity, and beyond!"}
    {author:"Carl Sagan",         text:"I don't know where I'm going, but I'm on my way."}
    {author:"Henry Ward Beecher", text:"The ability to convert ideas to things is the secret to outward success."}
    {author:"Lao Tzu",            text:"An ant on the move does more than a dozing ox."}
    {author:"Lao Tzu",            text:"Great acts are made up of small deeds."}
    {author:"Maya Angelou",       text:"All great achievements require time."}
    {author:"Pablo Picaso",       text:"Good artists borrow, great artists steal."}
    {author:"Robert Frost",       text:"The best way out is always through."}
    {author:"Salvador Dali",      text:"At the age of six I wanted to be a cook. At seven I wanted to be Napoleon. And my ambition has been growing ever since."}
    {author:"Salvador Dali",      text:"Have no fear of perfection - you'll never reach it."}
    {author:"Steve Jobs",         text:"I'm as proud of what we don't do as I am of what we do."}
    {author:"Steve Jobs",         text:"We're here to put a dent in the universe."}
    {author:"Thomas Edison",      text:"I start where the last man left off."}
    {author:"Thomas Edison",      text:"There is no substitute for hard work."}
    {author:"Yoda",               text:"Do, or do not. There is no try."}
  ]
  favorites: [
    {author:"Buddha",             text:"A jug fills drop by drop."}
    {author:"Buddha",             text:"I never see what has been done; I only see what remains to be done."}
    {author:"Buddha",             text:"There are only two mistakes one can make along the road to truth; not going all the way, and not starting."}
    {author:"Yoda",               text:"Do, or do not. There is no try."}
    {author:"Buzz Lightyear",     text:"To infinity, and beyond!"}
    {author:"Carl Sagan",         text:"I don't know where I'm going, but I'm on my way."}
    {author:"Albert Einstein",    text:"Make everything as simple as possible, but not simpler."}
  ]