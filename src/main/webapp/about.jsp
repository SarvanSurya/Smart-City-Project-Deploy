<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
          body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
  }
  .welcome-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 50px;
    padding: 0 20px;
    text-align: center;
    margin-bottom: 0px;
  }
  .welcome-heading {
    font-size: 36px;
    margin-bottom: 10px;
    color: #333;
  }
  
    .gallery-section {
    margin-top: 20px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
  }
  .gallery-image {
    width: 48%;
    margin-bottom: 10px;
  }
  /* Ensure the container doesn't overflow and allows horizontal scrolling */
.exploresSl {
    overflow-x: auto;
    white-space: nowrap;
    display: flex;
    gap: 20px; /* Reduced the gap between items */
    padding: 10px; /* Add some padding for spacing */
}
.exploresItem {
    flex: 0 0 calc(33.33% - 10px); /* Increased the width of each item and reduced gap */
    max-width: calc(33.33% - 10px); /* Adjust the max-width to control responsiveness */
    position: relative;
    text-align: center;
    transition: transform 0.2s ease-in-out;
}
/* Style each individual item */
.exploresItem:hover {
    transform: scale(1.10); /* Add a hover effect if desired */
}

/* Style the images and text within each item */
.explor_Img img {
    max-width: 100%; /* Make images occupy the full width of their container */
    height: auto; /* Maintain aspect ratio */
}

.explor_Tx {
    margin-top: 10px; /* Add space between the image and text */
}

/* Style the links if needed */
.exploresItem p a {
    color: #333; /* Adjust the link color */
    text-decoration: none;
    font-weight: bold;
}
    /* Reset some default styles */
body, h1, h2, p {
    margin: 0;
    padding: 0;
}

/* Basic styling */
body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #fff;
}

header {
    background-color: #448EE4;
    color: #fff;
    text-align: center;
    padding: 1.8em;
}
.header-container {
    display: flex;
    align-items: center;
}
.header-text {
    flex-grow: 1;
    text-align: center;
}
        #google_translate_element {
            margin-top: 20px;
            text-align: right;
            margin-bottom: -70px;
        }
        .goog-te-combo {
            width: auto !important;
            padding: 5px;
            margin: 0 !important;
        }
section img {
    max-width: 100%;
    height: auto;
    top: 0%;
    display: block;
    margin: 1em auto;
}
.image-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1em;
}

.image-grid img {
    max-width: 90%;
    height: auto;
    display: block;
    transition: transform 0.3s ease; /* Add a transition for smooth zoom effect */
}

.image-grid img:hover {
    transform: scale(1.1); /* Zoom in by 10% on hover */
}
nav ul {
    list-style-type: none;
    display: flex;
    background-color: #FF8C00;
    padding: 1em;
}
nav li {
    margin: 0 1em;
}
nav a {
    text-decoration: none;
    color: #fff;
}

section {
    padding: 2em;
}
#map iframe {
    width: 100%;
    max-width: 800px;
    height: 450px;
    border: none;
    margin: 1em auto;
    display: block;
}
#statistics .stat-container {
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    margin-top: 1em;
}
#statistics .chart-container {
    width: 30%;
    margin: 1em;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
#gallery .image-gallery {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

#gallery .image-box {
    width: 30%;
    margin: 1%;
    overflow: hidden;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#gallery .image-box img {
    width: 100%;
    height: auto;
    display: block;
    transition: transform 0.2s ease;
}

#gallery .image-box img:hover {
    transform: scale(1.05);
}
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
}

.chart-container {
  width: 80%;
  max-width: 800px;
  margin: 50px auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
footer {
    text-align: center;
    padding: 1em;
    background-color: #333;
    color: #fff;
}
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>


<header class="header-container">
    <img src="" alt="" width="70">
    <div class="header-text">
        <h1><c:out value="${abc.cname}"></c:out></h1>
    </div>
    <div id="google_translate_element"></div>
</header>
<nav>
    <ul>
        <li><a href="#about">About</a></li>
        <li><a href="#culture">Culture</a></li>
        <li><a href="#festivals">Festivals</a></li>
        <li><a href="#politics">Politics</a></li>
    </ul>
</nav>

<!-- Your HTML content remains mostly the same as provided earlier -->

<section id="about">
     
  <img src="displaycityimage?id=${abc.id}" alt=" City" width="400" height="100" >
  <p><c:out value="${abc.description}"></c:out></p>
</section>

<section id="culture">
    <h2>Culture of the City</h2>
 
  <img src="displaycitycultureimage?id=${abc.id }" alt="Culture">
  <p><c:out value="${abc.cultureDescription}"></c:out></p>
</section>

<section id="festivals">
     <h2>Festivals in the City</h2>
  <p>Description of festivals celebrated in the City.</p>
  <div class="image-grid">
      <img src="displaycityfestivalimage1?id=${abc.id }" alt="Festival 1">
      <img src="displaycityfestivalimage2?id=${abc.id }" alt="Festival 2">
      <img src="displaycityfestivalimage3?id=${abc.id }" alt="Festival 3">
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<section id="gallery">
    <h2>City Famous Food</h2>
  <div class="image-gallery">
      <div class="image-box">
          <img src="displayfamousfoodimage1?id=${abc.id }" alt="Image 1">
      </div>
      <div class="image-box">
          <img src="displayfamousfoodimage2?id=${abc.id }" alt="Image 2">
      </div>
      <div class="image-box">
          <img src="displayfamousfoodimage3?id=${abc.id }" alt="Image 3">
      </div>
      <div class="image-box">
        <img src="displayfamousfoodimage4?id=${abc.id }" alt="Image 3">
    </div>
    <div class="image-box">
      <img src="displayfamousfoodimage5?id=${abc.id }" alt="Image 3">
  </div>
  <div class="image-box">
    <img src="displayfamousfoodimage6?id=${abc.id }" alt="Image 3">
</div>
      <!-- Add more image-box elements as needed -->
  </div>
</section>

<section id="gallery">
  <h2>City Gallery</h2>
  <div class="image-gallery">
      <div class="image-box">
          <img src="displaygalleryimage1?id=${abc.id }" alt="Image 1">
      </div>
      <div class="image-box">
          <img src="displaygalleryimage2?id=${abc.id }" alt="Image 2">
      </div>
      <div class="image-box">
          <img src="displaygalleryimage3?id=${abc.id }" alt="Image 3">
      </div>
      <!-- Add more image-box elements as needed -->
  </div>
</section>

<section id="politics">
    <h2>Politics in the City</h2>

        <div class="image-box">
            <img src="displaypoliticsimage?id=${abc.id }" alt="Image 3">
        </div>
        <!-- Add more image-box elements as needed -->
    </div>
      
      <p><c:out value="${abc.politicsDescription}"></c:out></p>
</section>

<section id="map">
    <h2>City Map</h2>
      <p>Explore City on the map:</p>
      <iframe
          src="<c:out value="${abc.maplink}"></c:out>"
          width="600"
          height="450"
          style="border:0"
          allowfullscreen=""
          loading="lazy">
      </iframe>
</section>


<footer>
    <p></p>
</footer>

<!-- Include the Google Translate API -->
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement(
            { pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE },
            'google_translate_element'
        );
    }
</script>
<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>
</html>
<script>
    const navbar = document.getElementById('navbar');
    const openBtn = document.querySelector('.open-btn');

    function toggleNavbar() {
      if (navbar.style.left === '-300px' || navbar.style.left === '') {
        navbar.style.left = '0';
        openBtn.classList.add('active');
      } else {
        navbar.style.left = '-300px';
        openBtn.classList.remove('active');
      }
    }

    function closeNavbar() {
      navbar.style.left = '-300px';
      openBtn.classList.remove('active');
    }

    const navLinks = document.querySelectorAll('.navbar a');
    for (const link of navLinks) {
      link.addEventListener('click', closeNavbar);
    }
  </script>
</body>
</html>