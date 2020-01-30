window.onload = function() {
  increaseView();
};

function increaseView() {
  const baseURL = window.location.origin;
  const videoId = document.querySelector('#video-id').value
  const view = document.querySelector('#video-view').value
  const csrfToken = document.querySelector("[name='csrf-token']").content

  const newData = {
    view: Number(view) + 1
  }

  fetch(`${baseURL}/videos/${videoId}/increase_view`, {
    method: 'PATCH',
    headers: {
      'X-CSRF-TOKEN': `${csrfToken}`,
      'Content-type': 'application/json'
    },
    body: JSON.stringify(newData)
  });
}