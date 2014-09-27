trackinfo
=========

Generate `tracks.json` from "tracks/*.mp3".

```js
[
  {
    "artist": "Andy Hiroyuki",
    "title": "OVERTURE~序曲~",
    "time": 180,
    "filename": "01.mp3"
  },
  {
    "artist": "Andy Hiroyuki",
    "title": "冒険の始まり",
```

### Install

```bash
$ bundle install --path vendor/bundle
```

### How to use

Put mp3 files into `./tracks` and execute below command:

```bash
$ bundle exec ruby main.rb
```
