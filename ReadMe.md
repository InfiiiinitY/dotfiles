<h1 align="center">John's Dotfiles</h1>

These are my dotfiles. They are managed using [chezmoi](https://www.chezmoi.io/).

## "Daily" operations

Add a file to be managed by chezmoi by running

```
chezmoi add $FILENAME
```

This will edit the file in the source directory (the one chezmoi uses) and not the one in the home directory (the actual file).

To check what changes would be made if you were to apply those changes, run

```
chezmoi diff
or
chezmoi status
```

To apply the changes from the source directory to the home directory, run

```
chezmoi apply
```

To synchronize these changes with the remote repository, use

```
chezmoi cd
```

to navigate to the source directory. From here, you can use the standard `git` operations to add a commit and push it to the repository.
