# Notebook program.

1. Create and store new notes in a notebook.
2. Add a tag to notes to categories
3. Search by note tags

# How to run:
```shell
ruby notebook.rb
```
or
```shell
irb -r notebook.rb
```

This program was test-driven when using one class. But was then written using a diagram when split into 2 classes.


## User Stories and Domain Models:

```
As an office worker,
So I can record useful information,
I want to be able to create a text note.
```
|Object|Message|
|----|----|
|Office Worker||
|text_note|create|

```
As an office worker,
So I can carry all my useful information,
I want to keep all my notes in a notebook.
```
|Object|Message|
|----|----|
|Office Worker||
|notebook|store|

```
As an office worker,
So I can categorise a notes,
I want to be able to add a tag (only one tag) to a note.
```
|Object|Message|
|----|----|
|Office Worker||
|text_note|add_tag|

```
As an office worker,
So I can find notes on a certain topic,
I want to be able to search for all the notes with a specific tag.
```
|Object|Message|
|----|----|
|Office Worker||
|notebook|search_by_category|
