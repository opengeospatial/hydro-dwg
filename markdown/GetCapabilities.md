# GetCapabilities use case

Note: page format will be formalised / cleaned up as we go.

The GetCapabilities document is mainly used for discovery of what the service can provide. In the context of the experiment, we already set many of the details already so technically, the client would not reallt need to access this document. But since some metadata is provided in there, such as contact name and such I created an instance of such document.

## Request

Client can send either a GET request or a POST request

```
http://www.someserver.com?
```

Since there is no GET ([HttpRest](HttpRest)), there are no 'request' parameters to pass.

Mock up system from GIN

- <http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/sos/>
- <http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/sos/GetCapabilities>

## Response

annotated document is attached to this page.

## Issues and discussions

-- EricBoisvert - 25 Nov 2009
