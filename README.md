chefenv Cookbook
================

This cookbook makes chef editing environment that contain knife and librarian-chef.

Requirements
------------

#### other cookbooks
- `git` - auto install by source for management cookbooks.

#### gem packages
- `chef` - auto install by gem for knife command.


Attributes
----------

#### chefenv::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chefenv']['user']</tt></td>
    <td>string</td>
    <td>owner user ID</td>
    <td><tt>'root'</tt></td>
  </tr>
  <tr>
    <td><tt>['chefenv']['dotchefpath']</tt></td>
    <td>string</td>
    <td>path to '.chef'</td>
    <td><tt>'/root/.chef'</tt></td>
  </tr>
  <tr>
    <td><tt>['chefenv']['node_name']</tt></td>
    <td>string</td>
    <td>node name</td>
    <td><tt>ENV['USER']</tt></td>
  </tr>
  <tr>
    <td><tt>['chefenv']['chef_server_url']</tt></td>
    <td>string</td>
    <td>URL for chef server</td>
    <td><tt>'http:/localhost:4000'</tt></td>
  </tr>
  <tr>
    <td><tt>['chefenv']['copyright']</tt></td>
    <td>string</td>
    <td>owner name</td>
    <td><tt>'cookbook'</tt></td>
  </tr>
  <tr>
    <td><tt>['email']['email']</tt></td>
    <td>string</td>
    <td>owner's email address</td>
    <td><tt>'cookbook@example.com'</tt></td>
  </tr>
  <tr>
    <td><tt>['chefenv']['license']</tt></td>
    <td>string</td>
    <td>Lisence</td>
    <td><tt>'apachev2'</tt></td>
  </tr>
</table>

Usage
-----
#### chefenv::default

Just include `chefenv` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chefenv]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Takayuki Shimizukawa
License: Apache 2.0
