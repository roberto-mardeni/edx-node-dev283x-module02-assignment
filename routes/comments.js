module.exports = {
  getComments(req, res) {
    let post = req.store.posts[req.params.postId];
    res.status(200).send(post.comments);
  }, 
  addComment(req, res) {
    let post = req.store.posts[req.params.postId];
    let newComment = req.body;
    let commentId = post.comments.length;
    post.comments.push(newComment);
    res.status(201).send({commentId: commentId});
  },
  updateComment(req, res) {
    let post = req.store.posts[req.params.postId];
    post.comments[req.params.commentId] = req.body;
    res.status(200).send(post.comments[req.params.commentId]);
  },
  removeComment(req, res) {
    let post = req.store.posts[req.params.postId];
    post.comments.splice(req.params.commentId, 1);
    res.status(204).send();
  }  
}