### Exemplify

Rake tasks to help keep your production configurations out of the source control.

#### How to use it
0. To install you can either:
  - Add `gem exemplify` to your Gemfile, and run `bundle install`, if you are using Rails 3 or later
  - Use lite version, simply copying [exemplify rake task](lib/tasks/exemplify.rake) to your `lib/tasks/` directory
2. For every configuration file in your `config/` directory containing any secure information (like `config/database.yml`) prepare template file with `.example` extension (e.g. `config/database.yml.example`), it could look something like this: 

    ```ruby
    # Example database configuration
    development:
      adapter: mysql2
      encoding: utf8
      database: INSERT_DATABASE_HERE
      pool: 5
      timeout: 5000
      username: INSERT_USERNAME_HERE
      password: INSERT_PASSWORD_HERE
      reconnect: true
    ```

3. Commit this file into your repository and ignore original files from the source control (e.g. `echo config/database.yml >> .gitignore`)
4. Remove original files from the source control: `git rm --cached config/database.yml` - this will make sure the file is not present in repository, still keeping it locally. Do not forget to [clear any sensitive information from git history](https://help.github.com/articles/remove-sensitive-data)
4. Run `rake exemplify:FILENAME` to copy template contents into the file, like this: `rake exemplify:config/database.yml`

**ProTips&trade;:** 
- Run `rake exemplify:all` to copy all files at once, or use `rake -T` to see what example files you have prepared
- You can include additional rake logic for specific example files (so it will run right before exemplify task) like so:

  ```ruby
  file 'config/database.yml.example' do
    # Something happens here
  end
```
