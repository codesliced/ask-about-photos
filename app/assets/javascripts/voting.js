$(document).ready(function() {
  $('a.vote').click(function(click) {
    click.stopPropagation();
    click.preventDefault();
    link = $(this)
    data = $(this).attr('href')
    $.post(data, function(response) {
      link.siblings('#vote-count').html(response.votes_count);

    });
  });
});
