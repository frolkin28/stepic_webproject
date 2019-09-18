def wsgi_app(environ, start_response):
    status = '200 OK'
    headers = [
        ('Content-type', 'plain/text')
    ]
    query = environ['QUERY_STRING'].split('&')
    body = '\n'.join(query)
    return [body]
