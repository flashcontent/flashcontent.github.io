const converter = new showdown.Converter();

      const xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
          if (xhr.status === 200) {
            const markdown = xhr.responseText;
            const html = converter.makeHtml(markdown);
            const container = document.getElementById('markdown-container');
            container.innerHTML = html;
          } else {
            console.log('Error: ' + xhr.status);
          }
        }
      };
      xhr.open('GET', '/docs/pages/mainpage.md', true);
      xhr.send(null);