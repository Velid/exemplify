### Exemplify

Rake task to help keep your production configurations out of the source control.

#### How to use it
1. Simply copy exemplify [rake task]() to your `lib/tasks` directory.
2. For every configuration file containing any secure information (like `config/database.yml`) prepare template file with `.example` extension (e.g. `config/database.yml`). Check this file into your version control.
3. Ignore original files from the source control (e.g. `echo config/database.yml >> .gitignore`), do not forget to [remove them from history](https://help.github.com/articles/remove-sensitive-data)
4. Run `rake config:exemplify[FILENAME]` to copy template contents into the file (if they exist), like this: `rake config:exemplify[config/database.yml]`
