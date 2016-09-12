# Search-a-gist

API server for searching Github gist comments. No auth required. 100% sequre. Truly anonimous.

## Prerequisites

App runs on latest Ruby verson 2.3.1 and Rails 5.0

## Installation

* `git clone https://github.com/AlexanderFedorenko/search-a-gist.git` this repository
* change into the new directory
* `bundle install --without production`
* `rake db:create`
* `rake db:schema:load`
* 

### Run new search

To make new search of gist comments you need to make a GET request to the API server, providing a search keyword.

#### Request example:

:::info
GET http://localhost:3000/gist-search/soprano
:::

#### Response example:

```json
{
  "id": 1,
  "keyword": "soprano",
  "created_at": "2016-09-12T08:18:15.424Z",
  "updated_at": "2016-09-12T08:18:15.424Z"
}
```

### View search results

To review actual results of a search you need to make a separate API call, providing the ID of your search.

#### Request example:

:::info
GET http://localhost:3000/gist-search-results/1
:::

#### Response example:

```json
[
  {
    "id": 1,
    "search_id": 1,
    "comment": "{\"url\"=\u003e\"https://api.github.com/gists/d2cc9b6151105c0ddd7337a7a2dc1fda/comments/1796992\", \"id\"=\u003e1796992, \"user\"=\u003e{\"login\"=\u003e\"out-of-nice-names\", \"id\"=\u003e771699, \"avatar_url\"=\u003e\"https://avatars.githubusercontent.com/u/771699?v=3\", \"gravatar_id\"=\u003e\"\", \"url\"=\u003e\"https://api.github.com/users/out-of-nice-names\", \"html_url\"=\u003e\"https://github.com/out-of-nice-names\", \"followers_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/followers\", \"following_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/following{/other_user}\", \"gists_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/gists{/gist_id}\", \"starred_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/starred{/owner}{/repo}\", \"subscriptions_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/subscriptions\", \"organizations_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/orgs\", \"repos_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/repos\", \"events_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/events{/privacy}\", \"received_events_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/received_events\", \"type\"=\u003e\"User\", \"site_admin\"=\u003efalse}, \"created_at\"=\u003e\"2016-06-08T16:05:50Z\", \"updated_at\"=\u003e\"2016-06-08T16:05:50Z\", \"body\"=\u003e\"{\\\"uuid\\\":\\\"de80d735-7848-4bd9-9e96-fa3326fb37f5\\\",\\\"keywords\\\":\\\"reign, complex, miner, linger, soprano, arch, pyramid, soar, meeting, bury\\\"}\"}",
    "created_at": "2016-09-12T08:18:16.053Z",
    "updated_at": "2016-09-12T08:18:16.053Z"
  },
  {
    "id": 2,
    "search_id": 1,
    "comment": "{\"url\"=\u003e\"https://api.github.com/gists/d2cc9b6151105c0ddd7337a7a2dc1fda/comments/1797061\", \"id\"=\u003e1797061, \"user\"=\u003e{\"login\"=\u003e\"out-of-nice-names\", \"id\"=\u003e771699, \"avatar_url\"=\u003e\"https://avatars.githubusercontent.com/u/771699?v=3\", \"gravatar_id\"=\u003e\"\", \"url\"=\u003e\"https://api.github.com/users/out-of-nice-names\", \"html_url\"=\u003e\"https://github.com/out-of-nice-names\", \"followers_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/followers\", \"following_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/following{/other_user}\", \"gists_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/gists{/gist_id}\", \"starred_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/starred{/owner}{/repo}\", \"subscriptions_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/subscriptions\", \"organizations_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/orgs\", \"repos_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/repos\", \"events_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/events{/privacy}\", \"received_events_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/received_events\", \"type\"=\u003e\"User\", \"site_admin\"=\u003efalse}, \"created_at\"=\u003e\"2016-06-08T17:18:55Z\", \"updated_at\"=\u003e\"2016-06-08T17:18:55Z\", \"body\"=\u003e\"{\\\"uuid\\\":\\\"1195d909-e9f7-47a4-b63f-67904b688323\\\",\\\"keywords\\\":\\\"budge, short, drive, cold, soprano, concession, bus, volume, powder, personality\\\"}\"}",
    "created_at": "2016-09-12T08:18:16.068Z",
    "updated_at": "2016-09-12T08:18:16.068Z"
  },
  {
    "id": 3,
    "search_id": 1,
    "comment": "{\"url\"=\u003e\"https://api.github.com/gists/d2cc9b6151105c0ddd7337a7a2dc1fda/comments/1797064\", \"id\"=\u003e1797064, \"user\"=\u003e{\"login\"=\u003e\"out-of-nice-names\", \"id\"=\u003e771699, \"avatar_url\"=\u003e\"https://avatars.githubusercontent.com/u/771699?v=3\", \"gravatar_id\"=\u003e\"\", \"url\"=\u003e\"https://api.github.com/users/out-of-nice-names\", \"html_url\"=\u003e\"https://github.com/out-of-nice-names\", \"followers_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/followers\", \"following_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/following{/other_user}\", \"gists_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/gists{/gist_id}\", \"starred_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/starred{/owner}{/repo}\", \"subscriptions_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/subscriptions\", \"organizations_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/orgs\", \"repos_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/repos\", \"events_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/events{/privacy}\", \"received_events_url\"=\u003e\"https://api.github.com/users/out-of-nice-names/received_events\", \"type\"=\u003e\"User\", \"site_admin\"=\u003efalse}, \"created_at\"=\u003e\"2016-06-08T17:18:57Z\", \"updated_at\"=\u003e\"2016-06-08T17:18:57Z\", \"body\"=\u003e\"{\\\"uuid\\\":\\\"5a86aadd-0083-409d-ad01-5ef4e66fbfa5\\\",\\\"keywords\\\":\\\"habitat, forge, soprano, length, carve, extinct, dominate, content, thaw, short\\\"}\"}",
    "created_at": "2016-09-12T08:18:16.082Z",
    "updated_at": "2016-09-12T08:18:16.082Z"
  }
]
```

### Running Tests

At the moment application only integration tests.
You can help by writing some utin tests.