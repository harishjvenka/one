<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ecomm · simple upload UI</title>
  <!-- Font Awesome for icons (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: system-ui, -apple-system, 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif;
    }

    body {
      background: #f4f6fa;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 1.5rem;
    }

    .card {
      max-width: 720px;
      width: 100%;
      background: #ffffff;
      border-radius: 28px;
      padding: 2rem 2rem 2.2rem;
      box-shadow: 0 20px 40px -12px rgba(0, 20, 30, 0.2);
      transition: 0.2s;
    }

    h1 {
      font-size: 1.9rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      color: #0b1a2b;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      margin-bottom: 0.15rem;
    }

    .subhead {
      color: #5a6e7e;
      font-size: 0.95rem;
      border-left: 3px solid #3b82f6;
      padding-left: 0.9rem;
      margin-top: 0.2rem;
      margin-bottom: 2.2rem;
      font-weight: 400;
      background: #f0f4fe;
      border-radius: 0 20px 20px 0;
      line-height: 1.4;
      padding: 0.6rem 1rem;
      width: fit-content;
    }

    .form-group {
      margin-bottom: 1.8rem;
    }

    label {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      font-weight: 500;
      font-size: 0.9rem;
      color: #1e2b39;
      margin-bottom: 0.4rem;
    }

    label i {
      color: #3b82f6;
      width: 1.2rem;
      font-size: 1rem;
    }

    input, textarea, select {
      width: 100%;
      padding: 0.75rem 1rem;
      background: #f9fafc;
      border: 1.5px solid #e2e8f0;
      border-radius: 18px;
      font-size: 0.95rem;
      transition: 0.2s;
      outline: none;
      color: #0b1a2b;
    }

    input:focus, textarea:focus, select:focus {
      border-color: #3b82f6;
      background: #ffffff;
      box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.12);
    }

    textarea {
      resize: vertical;
      min-height: 80px;
    }

    .inline-group {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
    }

    .inline-group .form-group {
      flex: 1 1 140px;
      min-width: 120px;
    }

    /* upload zone */
    .upload-zone {
      background: #f9fafc;
      border: 2px dashed #d0d9e4;
      border-radius: 24px;
      padding: 1.8rem 1rem;
      text-align: center;
      transition: 0.2s;
      cursor: pointer;
      margin-top: 0.2rem;
    }

    .upload-zone:hover {
      background: #f0f4fe;
      border-color: #3b82f6;
    }

    .upload-zone i {
      font-size: 2.6rem;
      color: #3b82f6;
      opacity: 0.7;
      margin-bottom: 0.2rem;
    }

    .upload-zone p {
      font-weight: 500;
      color: #1e2b39;
    }

    .upload-zone span {
      font-size: 0.85rem;
      color: #5a6e7e;
    }

    .file-preview {
      margin-top: 0.8rem;
      display: flex;
      align-items: center;
      gap: 0.7rem;
      background: #eef2f6;
      padding: 0.6rem 1rem;
      border-radius: 40px;
      width: fit-content;
      max-width: 100%;
      font-size: 0.9rem;
    }

    .file-preview i {
      color: #3b82f6;
      font-size: 1.1rem;
    }

    .file-preview .filename {
      font-weight: 450;
      color: #0b1a2b;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      max-width: 180px;
    }

    .file-preview .remove-file {
      background: transparent;
      border: none;
      color: #7f8fa3;
      cursor: pointer;
      font-size: 1rem;
      transition: 0.15s;
      padding: 0 0.2rem;
    }

    .file-preview .remove-file:hover {
      color: #d32f2f;
    }

    .hidden {
      display: none !important;
    }

    .action-row {
      display: flex;
      justify-content: flex-end;
      gap: 1rem;
      margin-top: 2rem;
      flex-wrap: wrap;
    }

    .btn {
      border: none;
      padding: 0.75rem 2rem;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.95rem;
      background: #eef2f6;
      color: #1e2b39;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      transition: 0.2s;
      border: 1px solid transparent;
    }

    .btn-primary {
      background: #0b1a2b;
      color: white;
      box-shadow: 0 6px 14px rgba(11, 26, 43, 0.15);
    }

    .btn-primary:hover {
      background: #1f3348;
      transform: scale(0.98);
      box-shadow: 0 8px 18px rgba(11, 26, 43, 0.2);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid #d0d9e4;
    }

    .btn-outline:hover {
      background: #f0f4fe;
      border-color: #3b82f6;
    }

    .toast-message {
      margin-top: 1.2rem;
      background: #e6f7e6;
      color: #0f5c3e;
      padding: 0.6rem 1.2rem;
      border-radius: 40px;
      font-size: 0.9rem;
      font-weight: 500;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      border-left: 4px solid #2b8c5e;
    }

    .toast-message i {
      color: #2b8c5e;
    }

    .toast-error {
      background: #ffe9e9;
      color: #a13232;
      border-left-color: #c73b3b;
    }

    .toast-error i {
      color: #c73b3b;
    }

    /* small */
    @media (max-width: 480px) {
      .card { padding: 1.5rem; }
      .inline-group { flex-direction: column; gap: 0; }
      .inline-group .form-group { flex: 1; min-width: unset; }
    }
  </style>
</head>
<body>

<div class="card">
  <h1>
    <i class="fas fa-cloud-upload-alt" style="color: #3b82f6;"></i> 
    Upload product
  </h1>
  <div class="subhead">
    <i class="fas fa-tag" style="margin-right: 8px;"></i> 
    add new item to your store
  </div>

  <!-- product form -->
  <form id="productForm">
    <!-- product name -->
    <div class="form-group">
      <label for="productName"><i class="fas fa-box"></i> Product name</label>
      <input type="text" id="productName" placeholder="e.g. Wireless headphone" value="UrbanEar Pro">
    </div>

    <!-- description -->
    <div class="form-group">
      <label for="productDesc"><i class="fas fa-align-left"></i> Description</label>
      <textarea id="productDesc" placeholder="Short description...">Noise cancellation, 40h battery, premium sound.</textarea>
    </div>

    <!-- price & stock inline -->
    <div class="inline-group">
      <div class="form-group">
        <label for="productPrice"><i class="fas fa-dollar-sign"></i> Price ($)</label>
        <input type="number" id="productPrice" placeholder="0.00" step="0.01" value="79.99">
      </div>
      <div class="form-group">
        <label for="productStock"><i class="fas fa-cubes"></i> Stock</label>
        <input type="number" id="productStock" placeholder="Qty" value="24">
      </div>
      <div class="form-group">
        <label for="productCategory"><i class="fas fa-list-ul"></i> Category</label>
        <select id="productCategory">
          <option value="Electronics">Electronics</option>
          <option value="Audio" selected>Audio</option>
          <option value="Wearables">Wearables</option>
          <option value="Accessories">Accessories</option>
        </select>
      </div>
    </div>

    <!-- upload image area -->
    <div class="form-group">
      <label><i class="fas fa-image"></i> Product image</label>
      <div class="upload-zone" id="uploadZone">
        <i class="fas fa-cloud-upload-alt"></i>
        <p>Click or drag to upload</p>
        <span>JPG, PNG, WebP · max 5MB</span>
        <input type="file" id="fileInput" accept="image/png, image/jpeg, image/webp" style="display: none;">
      </div>
      <!-- hidden file preview -->
      <div id="filePreviewContainer" class="file-preview hidden">
        <i class="fas fa-file-image"></i>
        <span class="filename" id="fileNameDisplay">image.jpg</span>
        <button type="button" class="remove-file" id="removeFileBtn"><i class="fas fa-times-circle"></i></button>
      </div>
      <div style="font-size: 0.8rem; color: #5a6e7e; margin-top: 0.5rem;">
        <i class="fas fa-info-circle"></i> optional, but recommended
      </div>
    </div>

    <!-- action buttons -->
    <div class="action-row">
      <button type="reset" class="btn btn-outline" id="resetBtn"><i class="fas fa-undo-alt"></i> Reset</button>
      <button type="submit" class="btn btn-primary" id="submitBtn"><i class="fas fa-check-circle"></i> Upload product</button>
    </div>
  </form>

  <!-- feedback toast -->
  <div id="toast" class="hidden toast-message" style="margin-top: 1.2rem;">
    <i class="fas fa-check-circle"></i> 
    <span id="toastText">Product uploaded successfully!</span>
  </div>
</div>

<script>
  (function() {
    // DOM elements
    const form = document.getElementById('productForm');
    const fileInput = document.getElementById('fileInput');
    const uploadZone = document.getElementById('uploadZone');
    const filePreviewContainer = document.getElementById('filePreviewContainer');
    const fileNameDisplay = document.getElementById('fileNameDisplay');
    const removeFileBtn = document.getElementById('removeFileBtn');
    const toast = document.getElementById('toast');
    const toastText = document.getElementById('toastText');

    // field refs (for reset)
    const productName = document.getElementById('productName');
    const productDesc = document.getElementById('productDesc');
    const productPrice = document.getElementById('productPrice');
    const productStock = document.getElementById('productStock');
    const productCategory = document.getElementById('productCategory');

    // store current file
    let currentFile = null;

    // ---------- helpers ----------
    function showToast(message, isError = false) {
      toast.classList.remove('hidden', 'toast-error');
      toastText.textContent = message;
      if (isError) {
        toast.classList.add('toast-error');
        toast.querySelector('i').className = 'fas fa-exclamation-circle';
      } else {
        toast.classList.remove('toast-error');
        toast.querySelector('i').className = 'fas fa-check-circle';
      }
      // auto hide after 5s
      clearTimeout(window.toastTimeout);
      window.toastTimeout = setTimeout(() => {
        toast.classList.add('hidden');
      }, 5000);
    }

    function updateFilePreview(file) {
      if (file) {
        fileNameDisplay.textContent = file.name.length > 28 ? file.name.slice(0, 25) + '…' : file.name;
        filePreviewContainer.classList.remove('hidden');
        // hide upload zone hint (optional)
        // but we keep it visible, just show preview below
      } else {
        filePreviewContainer.classList.add('hidden');
      }
    }

    // reset file input + preview
    function resetFileInput() {
      fileInput.value = '';
      currentFile = null;
      updateFilePreview(null);
    }

    // ---------- event listeners ----------

    // 1. click on upload zone -> trigger file input
    uploadZone.addEventListener('click', (e) => {
      if (e.target.closest('.file-preview')) return; // avoid double trigger
      fileInput.click();
    });

    // 2. file input change
    fileInput.addEventListener('change', (e) => {
      const files = e.target.files;
      if (files && files.length > 0) {
        const file = files[0];
        // basic type check
        if (!file.type.startsWith('image/')) {
          showToast('Please select an image file (PNG, JPG, WebP).', true);
          fileInput.value = '';
          return;
        }
        if (file.size > 5 * 1024 * 1024) {
          showToast('Image size exceeds 5MB limit.', true);
          fileInput.value = '';
          return;
        }
        currentFile = file;
        updateFilePreview(file);
        showToast(`📎 ${file.name} selected`, false);
      } else {
        resetFileInput();
      }
    });

    // 3. remove file (X)
    removeFileBtn.addEventListener('click', (e) => {
      e.stopPropagation();
      resetFileInput();
      showToast('Image removed', false);
    });

    // 4. drag-and-drop support (simple)
    uploadZone.addEventListener('dragover', (e) => {
      e.preventDefault();
      uploadZone.style.background = '#e3ebf9';
      uploadZone.style.borderColor = '#3b82f6';
    });

    uploadZone.addEventListener('dragleave', (e) => {
      e.preventDefault();
      uploadZone.style.background = '#f9fafc';
      uploadZone.style.borderColor = '#d0d9e4';
    });

    uploadZone.addEventListener('drop', (e) => {
      e.preventDefault();
      uploadZone.style.background = '#f9fafc';
      uploadZone.style.borderColor = '#d0d9e4';
      const files = e.dataTransfer.files;
      if (files && files.length > 0) {
        const file = files[0];
        if (!file.type.startsWith('image/')) {
          showToast('Only image files are allowed.', true);
          return;
        }
        if (file.size > 5 * 1024 * 1024) {
          showToast('File too large (max 5MB).', true);
          return;
        }
        // update input and preview
        fileInput.files = e.dataTransfer.files; // assign dropped files
        currentFile = file;
        updateFilePreview(file);
        showToast(`📎 ${file.name} dropped`, false);
      }
    });

    // 5. reset button (also clear file)
    document.getElementById('resetBtn').addEventListener('click', (e) => {
      e.preventDefault(); 
      // reset form fields to default (but we have placeholder values, we want to reset to initial)
      productName.value = 'UrbanEar Pro';
      productDesc.value = 'Noise cancellation, 40h battery, premium sound.';
      productPrice.value = '79.99';
      productStock.value = '24';
      productCategory.value = 'Audio';
      resetFileInput();
      toast.classList.add('hidden');
      showToast('Form reset', false);
    });

    // 6. form submit 
    form.addEventListener('submit', (e) => {
      e.preventDefault();

      // gather data
      const name = productName.value.trim() || 'Unnamed product';
      const desc = productDesc.value.trim() || 'No description';
      const price = parseFloat(productPrice.value) || 0;
      const stock = parseInt(productStock.value) || 0;
      const category = productCategory.value;

      // optional file name
      const imageName = currentFile ? currentFile.name : 'no image';

      // simple validation (price > 0)
      if (price <= 0) {
        showToast('⚠️ Please set a valid price ( > 0 ).', true);
        return;
      }

      // build product object (demo)
      const product = {
        name,
        description: desc,
        price: price.toFixed(2),
        stock,
        category,
        image: imageName,
        timestamp: new Date().toLocaleString()
      };

      console.log('📦 Product uploaded:', product);

      // show success toast with summary
      const msg = `✅ "${product.name}" · $${product.price} · ${product.stock} in stock`;
      showToast(msg, false);

      // (optional) you could reset form after upload? we keep values for demo
      // but we keep everything as is. user can reset manually.
    });

    // 7. drag/drop additional: if user drops on the whole card? we prevent default.
    document.addEventListener('dragover', (e) => e.preventDefault());
    document.addEventListener('drop', (e) => e.preventDefault());

    // 8. init: hide preview if no file
    resetFileInput();

    // small extra: if file input is cancelled (esc) we reset
    fileInput.addEventListener('cancel', () => {
      // only if no file selected
      if (!fileInput.files || fileInput.files.length === 0) {
        resetFileInput();
      }
    });

  })();
</script>
</body>
</html>
