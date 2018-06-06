$headers = @{"Content-Type"="application/json"}

# gets post
Invoke-WebRequest -Uri "http://localhost:3000/posts"

# create post
Invoke-WebRequest -Uri "http://localhost:3000/posts" -Headers $headers -Method POST -Body '{"name": "Second post", "url":"http://secondpost.org", "text": "This is a second post"}'  

# gets post
Invoke-WebRequest -Uri "http://localhost:3000/posts"

# update post
Invoke-WebRequest -Uri "http://localhost:3000/posts/1" -Headers $headers -Method PUT -Body '{"name": "Second post updated", "url":"http://secondpost.org", "text": "This is a second post updated"}'  

# gets post
Invoke-WebRequest -Uri "http://localhost:3000/posts"

# gets comment
Invoke-WebRequest -Uri "http://localhost:3000/posts/1/comments"

# create comment
Invoke-WebRequest -Uri "http://localhost:3000/posts/1/comments" -Headers $headers -Method POST -Body '{"text": "text comment"}'  

# gets comment
Invoke-WebRequest -Uri "http://localhost:3000/posts/1/comments"

# update comment
Invoke-WebRequest -Uri "http://localhost:3000/posts/1/comments/0" -Headers $headers -Method PUT -Body '{"text": "text comment updated"}'  

# gets comment
Invoke-WebRequest -Uri "http://localhost:3000/posts/1/comments"

# deletes comment
Invoke-WebRequest -Uri "http://localhost:3000/posts/1/comments/0" -Method DELETE 

# deletes post
Invoke-WebRequest -Uri "http://localhost:3000/posts/1" -Method DELETE 

