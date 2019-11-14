function anagrams(event) {
  word = $('#anagram-word').val();

  // avoid page reload by modifying url and then manually making GET request
  var url = '/anagrams/'+word;
  window.history.pushState({id: 'Lexicali'}, 'Lexicali', url);
  $.get(url, function (data, status) {
    if (status == "success") {
      document.body.innerHTML = data;
    }
  });
  return false;
}

function prefixes(event) {
  word = $('#prefix').val();

  // avoid page reload by modifying url and then manually making GET request
  var url = '/prefixed/' + word;
  window.history.pushState({id: 'Lexicali'}, 'Lexicali', url);
  $.get(url, function (data, status) {
    if (status == "success") {
      document.body.innerHTML = data;
    }
  });
  return false;
}

function ladder(event) {
  startWord = $('#start-word').val();
  endWord = $('#end-word').val();

// avoid page reload by modifying url and then manually making GET request
  var url = '/word_ladder/' + startWord + '/' + endWord;
  window.history.pushState({id: 'Lexicali'}, 'Lexicali', url);
  $.get(url, function (data, status) {
    if (status == "success") {
      document.body.innerHTML = data;
    }
  });
  return false;
}

function init() {
  $('#anagram-link').on('click', anagrams);
  $('#prefix-link').on('click', prefixes);
  $('#word-ladder').on('click', ladder);
}

$(init);
