
# devLog
## 20/06/2020
Had some issues with the complicated nature of my relational model. Being that I have multiple references to the same table. I will follow these resources to find a solution. 
* https://www.sitepoint.com/community/t/referencing-the-same-model-twice-in-rails/254243
* https://emcorrales.com/blog/rails-setup-multiple-associations-same-model
* https://stackoverflow.com/questions/35104085/multiple-associations-with-the-same-table-rails
* https://www.spacevatican.org/2008/5/6/creating-multiple-associations-with-the-same-table/

## 21/06/2020
Encountered an error with postgres and rails. It seems that `.references` is broken with postgres, where it would normally work with SQLite3. 
I will follow [this medium article](https://medium.com/@mindovermiles262/postgresql-foreign-keys-and-reference-ab582a62c7b9) to try and get around this issue. 

I think part of my problem was that i had my migrations set up in a bad order. ie being that i was trying to reference things in a migration that wouldnt exist until a later migration. I ended up fixing it (i think, at least my migrations completed) by rearranging the order of my migrations, so that I didnt reference anything until it was created. Sort of worked outside-in, from the more static less complicated tables, and then lastly migrated the more convoluted ones. 

Encountered some new error. `NameError: uninitialized constant Trip::stop`. I think this has to do with some sort of naming error in my classes, rather than migrations. [This link](https://stackoverflow.com/questions/41514340/nameerror-uninitialized-constant-on-seed-rb/41514414) seems to give weight to that theory. Im not quite sure what the issue is yet though. 