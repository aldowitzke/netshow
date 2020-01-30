window.onload = function() {
  increaseView();
};

function increaseView() {
  const baseURL = window.location.origin;
  const videoId = document.querySelector('#video-id').value
  const view = document.querySelector('#video-view').value

  const newData = {
    view: Number(view) + 1
  }

  fetch(`${baseURL}/videos/${videoId}/increase_view`, {
    method: 'PATCH',
    headers: {
      'Content-type': 'application/json'
    },
    body: JSON.stringify(newData)
  });
}