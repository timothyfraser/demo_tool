# demo_tool
- **Description**: Repository for demoing how to make a usable tool in an R package
- **Author**: Tim Fraser, PhD

Want to make a small, compact R package? It's not as hard as you'd think! Here's a brief tutorial that will walk you through the process of building your first publicly available tool as an R package!

## Anatomy of an R Package

Your R package will need the following documents.

- `DESCRIPTION`: the package metadata file, including eg. the package name, description, maintainers, etc. Always work from a template, because it can be persnickety.
- `/R` code folder, with scripts whose names should match your functions, 1 function per script, usually.
- `NAMESPACE`: a list of all functions for exporting. You don't edit this yourself; `devtools::document()` does it for you.
- `/man`: manual folder, with manuals summarizing your functions. You don't make this yourself; `devtools::document()` does it for you. Automatically generated from your `roxygen` comments for your functions.
- `/data`: data folder, with `.rda` files for any objects your package relies on to run functions, eg. `data.frames`, `vectors`, etc. Name of `.rda` file should match name of object when loaded.
- `/z`: extra folder, for any other scripts or files you may need. I put scripts for building and testing the package here, as well as raw data.
- `.buildignore`: a list of all files and folders to ignore when building the package. Eg. `/z` should go in here.

For example, [my `DESCRIPTION` file looks like this](https://github.com/timothyfraser/demo_tool/blob/main/DESCRIPTION#L1C1-L18C10)! Update the `Package:` name, `Title:`, `Authors@R:`, `Maintainer:`, and `Description:` fields. 
```
Package: demo_tool
Type: Package
Title: Demo package for making a publicly available tool as an R package.
Version: 0.1.0
Authors@R: 
  person("Fraser", "Timothy", , "tmf77@cornell.edu", role = c("aut", "cre"),
  comment = c(ORCID = "0000-0002-4509-0244"))
  person("First Name", "Last Name", , "myemail@cornell.edu", role = c("aut"))
Maintainer: Timothy Fraser <tmf77@cornell.edu>
Description: One-line description for package goes here. Make sure this script ends with an extra blank line after `Imports:`
License: MIT + file LICENSE
Encoding: UTF-8
LazyData: true
Rxoygen: list(markdown = TRUE)
RoxygenNote: 7.2.3
Depends: 
    R (>= 3.5.0)
Imports: 

```

Next, 

## `devtools`

Once you have your prerequisite files, you can build your R package!
To build an R package, you will need to install `devtools`, the package for R package development!

There are 3 main steps: `document()` your functions, `build()` your package, and then install it with `install.packages("packagename.tar.gz", type = "source").
