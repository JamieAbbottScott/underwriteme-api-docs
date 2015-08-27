# UnderwriteMe API Documentation

## Where is documentation hosted?

Generated documentation is hosted on Apiary.io: [http://docs.underwritemeapi.apiary.io/](http://docs.underwritemeapi.apiary.io/).

## How to make modifications to documentation?

Documentation source is split into directories and files under `content` directory. Make modifications there. Order of the files is specified in `build.sh` file.

To build documentation from content files run:

```
$ make
```

## Do not modify apiary.apib file manually.

This file is hosted by Apiary.io. Changes to it will be lost if documentation is generated from content files.
