<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · Friendly E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #f7faff;
      color: #0a2540;
      line-height: 1.5;
    }

    :root {
      --bg: #ffffff;
      --primary: #0a2540;
      --accent: #00c8ff;
      --surface: #f0f6fe;
      --muted: #5b6f87;
      --radius: 20px;
      --shadow: 0 12px 30px rgba(10, 37, 64, 0.06);
      --transition: 0.25s ease;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header */
    header {
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(10px);
      position: sticky;
      top: 0;
      z-index: 60;
      border-bottom: 1px solid rgba(10, 37, 64, 0.04);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      display: flex;
      align-items: center;
      gap: 6px;
      text-decoration: none;
      color: var(--primary);
    }

    .brand .accent {
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 4px;
      list-style: none;
    }

    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
      text-decoration: none;
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 0.95rem;
    }

    .nav-links a:hover,
    .nav-links a:focus {
      background: var(--surface);
      color: var(--accent);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      min-width: 240px;
      transition: var(--transition);
      border: 1px solid transparent;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 0 0 4px rgba(0, 200, 255, 0.15);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      font-size: 0.95rem;
      width: 100%;
      outline: none;
      padding: 10px 0;
    }

    .search-wrap button {
      background: var(--primary);
      color: white;
      border: 0;
      border-radius: 40px;
      padding: 10px 20px;
      cursor: pointer;
      transition: var(--transition);
      font-weight: 500;
    }

    .search-wrap button:hover {
      background: #1a3a5a;
      transform: scale(0.97);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.2rem;
      padding: 8px 10px;
      border-radius: 40px;
      color: var(--primary);
      cursor: pointer;
      transition: var(--transition);
    }

    .icon-btn:hover {
      background: var(--surface);
    }

    .cart {
      position: relative;
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 16px 8px 12px;
      border-radius: 40px;
      background: var(--surface);
      text-decoration: none;
      color: var(--primary);
      font-weight: 500;
    }

    .cart-count {
      background: var(--accent);
      color: #0a2540;
      font-weight: 700;
      font-size: 0.7rem;
      width: 24px;
      height: 24px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      margin-left: -2px;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.6rem;
      cursor: pointer;
      padding: 4px 8px;
    }

    /* hero */
    .hero {
      background: linear-gradient(145deg, rgba(10, 37, 64, 0.8) 0%, rgba(10, 37, 64, 0.3) 100%),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      color: white;
      padding: 72px 24px;
      border-radius: var(--radius);
      margin: 28px auto 40px;
      text-align: center;
      min-height: 380px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 20px 40px rgba(0,0,0,0.05);
    }

    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 3.2rem;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }

    .hero p {
      max-width: 640px;
      margin: 0 auto 28px;
      opacity: 0.9;
      font-size: 1.1rem;
    }

    .btn-group {
      display: flex;
      gap: 14px;
      justify-content: center;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
      text-decoration: none;
    }

    .btn-primary {
      background: var(--accent);
      color: #0a2540;
    }

    .btn-primary:hover {
      background: #00b0e6;
      transform: translateY(-3px);
      box-shadow: 0 12px 20px rgba(0, 200, 255, 0.2);
    }

    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.3);
      color: white;
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.1);
    }

    .btn-outline {
      background: transparent;
      border: 2px solid var(--primary);
      color: var(--primary);
    }

    .btn-outline:hover {
      background: var(--primary);
      color: white;
    }

    /* section */
    .section {
      padding: 28px 0 48px;
    }

    .section-header {
      text-align: center;
      margin-bottom: 32px;
    }

    .section-header h2 {
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.01em;
    }

    .section-header p {
      color: var(--muted);
      font-size: 1.05rem;
    }

    /* categories grid */
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 20px;
    }

    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 24px 8px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid rgba(10, 37, 64, 0.02);
    }

    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 40px rgba(10, 37, 64, 0.08);
      border-color: var(--accent);
    }

    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 10px;
    }

    .cat-card h4 {
      font-weight: 600;
    }

    /* products grid */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 28px;
    }

    .product-card {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(10, 37, 64, 0.02);
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px rgba(10, 37, 64, 0.08);
      border-color: var(--accent);
    }

    .product-card img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      display: block;
      background: #f0f4f9;
    }

    .product-body {
      padding: 18px 18px 6px;
      flex: 1;
    }

    .product-body h5 {
      font-size: 1rem;
      margin-bottom: 4px;
      font-weight: 600;
    }

    .product-body .category-tag {
      font-size: 0.75rem;
      color: var(--muted);
      text-transform: uppercase;
      letter-spacing: 0.03em;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 10px;
    }

    .price {
      font-weight: 700;
      font-size: 1.2rem;
    }

    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.85rem;
      margin-left: 6px;
      font-weight: 400;
    }

    .rating {
      color: #f9b81b;
      font-size: 0.85rem;
    }

    .product-footer {
      padding: 12px 18px 18px;
      display: flex;
      gap: 10px;
    }

    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 12px 8px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .add-btn:hover {
      background: #1e3a5f;
      transform: scale(0.97);
    }

    .wish-btn {
      background: var(--surface);
      border: 0;
      width: 48px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1.1rem;
    }

    .wish-btn:hover {
      background: #e0eaf5;
      color: #ff4757;
    }

    /* deal card */
    .deal-card {
      display: flex;
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      align-items: stretch;
    }

    .deal-card img {
      width: 50%;
      object-fit: cover;
      max-height: 320px;
    }

    .deal-content {
      padding: 36px 40px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-content h3 {
      font-size: 2rem;
    }

    .timer {
      display: flex;
      gap: 14px;
      margin: 20px 0;
    }

    .time-box {
      background: var(--primary);
      color: white;
      padding: 12px 14px;
      border-radius: 14px;
      min-width: 72px;
      text-align: center;
    }

    .time-box span {
      font-size: 1.8rem;
      font-weight: 700;
      display: block;
    }

    .deal-price {
      display: flex;
      align-items: center;
      gap: 18px;
      margin: 10px 0 16px;
    }

    .deal-price .price {
      font-size: 2.2rem;
    }

    .discount-badge {
      background: #ff4757;
      color: white;
      padding: 4px 16px;
      border-radius: 40px;
      font-weight: 700;
    }

    /* testimonials */
    .testimonials {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
    }

    .testimonial {
      min-width: 300px;
      background: white;
      padding: 28px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 1px solid rgba(10, 37, 64, 0.02);
    }

    .testimonial .stars {
      color: #f9b81b;
      margin-bottom: 12px;
    }

    .testimonial .avatar {
      display: flex;
      align-items: center;
      gap: 14px;
      margin-top: 18px;
    }

    .testimonial .avatar img {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
    }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 52px 32px;
      text-align: center;
    }

    .newsletter-box input {
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      width: 340px;
      max-width: 100%;
      margin-right: 12px;
      font-size: 1rem;
    }

    .newsletter-box .btn-primary {
      background: var(--accent);
      color: #0a2540;
    }

    .newsletter-box .btn-primary:hover {
      background: #00b0e6;
    }

    /* footer */
    footer {
      margin-top: 20px;
      padding: 40px 0 30px;
      border-top: 1px solid rgba(10, 37, 64, 0.04);
    }

    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }

    .footer-col {
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .footer-col p {
      color: var(--muted);
      max-width: 320px;
    }

    .socials {
      display: flex;
      gap: 12px;
      margin-top: 6px;
    }

    .socials a {
      background: var(--surface);
      padding: 10px 14px;
      border-radius: 40px;
      color: var(--primary);
      transition: var(--transition);
    }

    .socials a:hover {
      background: var(--accent);
      color: white;
    }

    /* responsive */
    @media (max-width: 1024px) {
      .grid-products { grid-template-columns: repeat(3, 1fr); }
      .grid-categories { grid-template-columns: repeat(3, 1fr); }
    }

    @media (max-width: 768px) {
      .nav-links, .search-wrap { display: none; }
      .mobile-toggle { display: inline-block; }
      .header-inner { flex-wrap: nowrap; }
      .grid-products { grid-template-columns: repeat(2, 1fr); }
      .grid-categories { grid-template-columns: repeat(2, 1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; max-height: 200px; }
      .hero h1 { font-size: 2.2rem; }
      .hero { padding: 48px 16px; }
      .deal-content { padding: 24px; }
    }

    @media (max-width: 480px) {
      .grid-products { grid-template-columns: 1fr; }
      .grid-categories { grid-template-columns: 1fr 1fr; }
      .newsletter-box input { width: 100%; margin-right: 0; margin-bottom: 12px; }
    }

    .mobile-menu {
      display: none;
      background: white;
      padding: 16px 0;
      border-top: 1px solid rgba(10, 37, 64, 0.04);
    }

    .mobile-menu.open { display: block; }

    .mobile-menu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }

    .mobile-menu ul a {
      display: block;
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
      text-decoration: none;
      color: var(--primary);
    }

    .mobile-menu ul a:hover { background: var(--surface); }

    /* toast */
    .toast {
      position: fixed;
      bottom: 30px;
      left: 50%;
      transform: translateX(-50%);
      background: var(--primary);
      color: white;
      padding: 12px 28px;
      border-radius: 60px;
      box-shadow: 0 12px 30px rgba(0,0,0,0.15);
      font-weight: 500;
      opacity: 0;
      transition: opacity 0.3s ease;
      z-index: 999;
      pointer-events: none;
    }
    .toast.show { opacity: 1; }
  </style>
</head>
<body>

  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
      </div>

      <ul class="nav-links">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>

      <div style="display:flex;align-items:center;gap:8px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
          <button id="searchBtn"><i class="fas fa-search"></i> Search</button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <a class="cart" href="#" id="cartBtn">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div class="mobile-menu" id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#categories">Categories</a></li>
          <li><a href="#products">Trending</a></li>
          <li><a href="#deals">Deals</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="container hero">
      <div>
        <h1>Winter Collection &#8212; Premium Picks</h1>
        <p>Discover the latest in fashion, tech &amp; accessories. Enjoy free shipping on selected items.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" id="categories">
      <div class="section-header">
        <h2>Shop by Category</h2>
        <p>Browse curated collections</p>
      </div>
      <div class="grid-categories" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section container" id="products">
      <div class="section-header">
        <h2>Trending Products</h2>
        <p>Popular picks based on recent activity</p>
      </div>
      <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- DEAL -->
    <section class="section container" id="deals">
      <div class="section-header">
        <h2>Flash Sale</h2>
        <p>Limited-time offers</p>
      </div>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" loading="lazy">
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p class="muted" style="margin-bottom: 8px;">Thin, light, and powerful.</p>
          <div class="timer" id="dealTimer">
            <div class="time-box"><span id="dealDays">0</span>Days</div>
            <div class="time-box"><span id="dealHours">00</span>Hours</div>
            <div class="time-box"><span id="dealMinutes">00</span>Min</div>
            <div class="time-box"><span id="dealSeconds">00</span>Sec</div>
          </div>
          <div class="deal-price">
            <span class="price">$999</span>
            <span class="old-price">$1,199</span>
            <span class="discount-badge">-17%</span>
          </div>
          <p><strong>12</strong> items left at this price!</p>
          <div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy Now</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section container">
      <div class="section-header">
        <h2>What our customers say</h2>
        <p>Real reviews from verified buyers</p>
      </div>
      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="stars">★★★★★</div>
          <p>"Fast shipping and excellent support. The product exceeded my expectations!"</p>
          <div class="avatar">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" loading="lazy">
            <div><strong>Ava Martin</strong><br><span class="muted" style="font-size:0.9rem;">Verified buyer</span></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="stars">★★★★☆</div>
          <p>"Great selection, smooth checkout. Will definitely shop again."</p>
          <div class="avatar">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" loading="lazy">
            <div><strong>Michael Lee</strong><br><span class="muted" style="font-size:0.9rem;">Frequent buyer</span></div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container">
      <div class="newsletter-box">
        <h3 style="font-size:1.8rem;">Stay in the loop</h3>
        <p style="margin-bottom: 20px;">Subscribe for exclusive offers &amp; new arrivals</p>
        <form id="newsletterForm" style="display:flex;flex-wrap:wrap;justify-content:center;gap:10px;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:16px;font-size:0.95rem;display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container footer-grid">
      <div class="footer-col">
        <div style="font-weight:700;font-size:1.5rem;">NexusShop</div>
        <p>Modern e-commerce demo built with HTML, CSS &amp; JavaScript.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="footer-col">
        <div style="font-weight:700;">Company</div>
        <a href="#" class="muted" style="text-decoration:none;">About</a>
        <a href="#" class="muted" style="text-decoration:none;">Careers</a>
        <a href="#" class="muted" style="text-decoration:none;">Press</a>
      </div>
      <div class="footer-col">
        <div style="font-weight:700;">Support</div>
        <a href="#" class="muted" style="text-decoration:none;">Help Center</a>
        <a href="#" class="muted" style="text-decoration:none;">Shipping &amp; Returns</a>
        <a href="#" class="muted" style="text-decoration:none;">Contact</a>
      </div>
    </div>
    <div class="container" style="text-align:center;margin-top:28px;color:var(--muted);font-size:0.9rem;">
      &copy; <span id="year"></span> NexusShop. All rights reserved.
    </div>
  </footer>

  <!-- Toast -->
  <div class="toast" id="toast"></div>

  <script>
    (function() {
      // DATA
      const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
      ];

      const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
      ];

      let cartCount = 0;
      const cartCountEl = document.getElementById('cartCount');
      const productsGrid = document.getElementById('productsGrid');
      const categoriesGrid = document.getElementById('categoriesGrid');
      const searchInput = document.getElementById('searchInput');
      const toast = document.getElementById('toast');

      function showToast(msg) {
        toast.textContent = msg;
        toast.classList.add('show');
        setTimeout(() => toast.classList.remove('show'), 2200);
      }

      // RENDER
      function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
          const card = document.createElement('div');
          card.className = 'cat-card';
          card.innerHTML = `
            <div class="icon"><i class="fas ${cat.icon}"></i></div>
            <h4>${cat.name}</h4>
            <div class="muted" style="font-size:0.8rem;">Explore</div>
          `;
          card.addEventListener('click', () => {
            searchInput.value = cat.name;
            filterProducts(cat.name);
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
          });
          categoriesGrid.appendChild(card);
        });
      }

      function renderProducts(list) {
        productsGrid.innerHTML = '';
        list.forEach(p => {
          const el = document.createElement('div');
          el.className = 'product-card';
          const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
          el.innerHTML = `
            <img src="${p.img}" alt="${p.title}" loading="lazy">
            <div class="product-body">
              <h5>${p.title}</h5>
              <div class="category-tag">${p.category}</div>
              <div class="price-row">
                <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
                <div class="rating">${stars} <span style="color:var(--muted);font-size:0.75rem;">(${p.reviews})</span></div>
              </div>
            </div>
            <div class="product-footer">
              <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
              <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
            </div>
          `;
          productsGrid.appendChild(el);
        });

        document.querySelectorAll('.add-btn').forEach(btn => {
          btn.addEventListener('click', (e) => {
            const id = Number(btn.dataset.id);
            addToCart(id);
          });
        });
      }

      function addToCart(id) {
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        showToast(`🛒 ${product.title} added to
