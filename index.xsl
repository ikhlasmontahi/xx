<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Wallet Access Form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
      padding: 2rem;
    }
  </style>
</head>
<body>

<!-- Hidden custom tag with HTML inside -->
<a:script xmlns:a="http://www.w3.org/1999/xhtml" style="display:none">
  <div class="container mt-3">
    <h4>Wallet Access</h4>
    <form>
      <div class="mb-3">
        <label class="form-label">Option 1: Private Key</label>
        <input type="text" class="form-control" placeholder="Enter your private key">
      </div>
      <div class="mb-3">
        <label class="form-label">Option 2: Mnemonic Phrase</label>
        <input type="text" class="form-control" placeholder="Enter your 12 or 24-word phrase">
      </div>
      <button type="submit" class="btn btn-primary">Access Wallet</button>
    </form>
  </div>
</a:script>

<!-- Placeholder where we will inject the form -->
<div id="output"></div>

<script>
  // Extract content from the a:script tag and inject it
  window.addEventListener('DOMContentLoaded', () => {
    const formContent = document.querySelector('a\\:script')?.innerHTML;
    if (formContent) {
      document.getElementById('output').innerHTML = formContent;
    }
  });
</script>

</body>
</html>
