<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Health Care Services</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Baloo+2&display=swap");

:root {
  --main-green: #79dd09;
  --main-green-rgb-015: rgba(121, 221, 9, 0.1);
  --main-yellow: #bdbb49;
  --main-yellow-rgb-015: rgba(189, 187, 73, 0.1);
  --main-red: #bd150b;
  --main-red-rgb-015: rgba(189, 21, 11, 0.1);
  --main-blue: #0076bd;
  --main-blue-rgb-015: rgba(0, 118, 189, 0.1);
}

body {
  font-family: "Baloo 2", cursive;
  font-size: 16px;
  background-color: white;
  text-rendering: optimizeLegibility;
  font-weight: initial;
}

.dark {
  background: white;
}


a,
a:hover {
  text-decoration: none;
  transition: color 0.3s ease-in-out;
}

#pageHeaderTitle {
  margin: 2rem 0;
  text-transform: uppercase;
  text-align: center;
  font-size: 2.5rem;
  color: black;
}

.postcard {
  flex-wrap: wrap;
  display: flex;
  box-shadow: 0 4px 21px -12px rgba(0, 0, 0, 0.66);
  border-radius: 10px;
  margin: 0 0 2rem 0;
  overflow: hidden;
  position: relative;
  color: #ffffff;
}

.postcard.dark {
  background-color: #18151f;
}

.postcard.light {
  background-color: #e1e5ea;
}

.postcard.dark .t-dark {
  color: #18151f;
}

.postcard a {
  color: inherit;
}

.postcard h1,
.postcard .h1 {
  margin-bottom: 0.5rem;
  font-weight: 500;
  line-height: 1.2;
}

.postcard .small {
  font-size: 80%;
}

.postcard .postcard__title {
  font-size: 1.75rem;
}

.postcard .postcard__img {
  max-height: 180px;
  width: 100%;
  object-fit: cover;
  position: relative;
}

.postcard .postcard__img_link {
  display: contents;
}

.postcard .postcard__bar {
  width: 50px;
  height: 10px;
  margin: 10px 0;
  border-radius: 5px;
  background-color: #424242;
  transition: width 0.2s ease;
}

.postcard .postcard__text {
  padding: 1.5rem;
  position: relative;
  display: flex;
  flex-direction: column;
}

.postcard .postcard__preview-txt {
  overflow: hidden;
  text-overflow: ellipsis;
  text-align: justify;
  height: 100%;
}

.postcard .postcard__tagbox {
  display: flex;
  flex-flow: row wrap;
  font-size: 30px;
  margin: 20px 0 0 0;
  padding: 0;
  justify-content: center;
}

.postcard .postcard__tagbox .tag__item {
  display: inline-block;
  background: rgba(83, 83, 83, 0.4);
  border-radius: 3px;
  padding: 2.5px 10px;
  margin: 0 5px 5px 0;
  cursor: default;
  user-select: none;
  transition: background-color 0.3s;
}

.postcard .postcard__tagbox .tag__item:hover {
  background: rgba(83, 83, 83, 0.8);
}

.postcard:before {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background-image: linear-gradient(-70deg, #424242, transparent 50%);
  opacity: 1;
  border-radius: 10px;
}

.postcard:hover .postcard__bar {
  width: 100px;
}

@media screen and (min-width: 769px) {
  .postcard {
    flex-wrap: inherit;
  }

  .postcard .postcard__title {
    font-size: 2rem;
  }

  .postcard .postcard__tagbox {
    justify-content: start;
  }

  .postcard .postcard__img {
    max-width: 700px;
    max-height: 80%;
    transition: transform 0.3s ease;
  }

  .postcard .postcard__text {
    padding: 3rem;
    width: 100%;
  }

  .media.postcard .postcard__text:before {
    content: "";
    position: absolute;
    display: block;
    background: #18151f;
    top: -20%;
    height: 130%;
    width: 55px;
  }

  .postcard:hover .postcard__img {
    transform: scale(1.1);
  }

  .postcard:nth-child(2n+1) {
    flex-direction: row;
  }

  .postcard:nth-child(2n+0) {
    flex-direction: row-reverse;
  }

  .postcard:nth-child(2n+1) .postcard__text:before {
    left: -12px !important;
    transform: rotate(4deg);
  }

  .postcard:nth-child(2n+0) .postcard__text:before {
    right: -12px !important;
    transform: rotate(-4deg);
  }
}

@media screen and (min-width: 1024px) {
  .postcard .postcard__text {
    padding: 2rem 3.5rem;
  }

  .postcard .postcard__text:before {
    content: "";
    position: absolute;
    display: block;
    top: -20%;
    height: 130%;
    width: 55px;
  }

  .postcard.dark .postcard__text:before {
    background: #18151f;
  }

  .postcard.light .postcard__text:before {
    background: #e1e5ea;
  }
}

/* COLORS */
.postcard .postcard__tagbox .green.play:hover {
  background: var(--main-green);
  color: black;
}

.green .postcard__title:hover {
  color: var(--main-green);
}

.green .postcard__bar {
  background-color: var(--main-green);
}

.green:before {
  background-image: linear-gradient(-30deg, var(--main-green-rgb-015), transparent 50%);
}

.green:nth-child(2n):before {
  background-image: linear-gradient(30deg, var(--main-green-rgb-015), transparent 50%);
}

.postcard .postcard__tagbox .blue.play:hover {
  background: var(--main-blue);
}

.blue .postcard__title:hover {
  color: var(--main-blue);
}

.blue .postcard__bar {
  background-color: var(--main-blue);
}

.blue:before {
  background-image: linear-gradient(-30deg, var(--main-blue-rgb-015), transparent 50%);
}

.blue:nth-child(2n):before {
  background-image: linear-gradient(30deg, var(--main-blue-rgb-015), transparent 50%);
}

.postcard .postcard__tagbox .red.play:hover {
  background: var(--main-red);
}

.red .postcard__title:hover {
  color: var(--main-red);
}

.red .postcard__bar {
  background-color: var(--main-red);
}

.red:before {
  background-image: linear-gradient(-30deg, var(--main-red-rgb-015), transparent 50%);
}

.red:nth-child(2n):before {
  background-image: linear-gradient(30deg, var(--main-red-rgb-015), transparent 50%);
}

.postcard .postcard__tagbox .yellow.play:hover {
  background: var(--main-yellow);
  color: black;
}

.yellow .postcard__title:hover {
  color: var(--main-yellow);
}

.yellow .postcard__bar {
  background-color: var(--main-yellow);
}

.yellow:before {
  background-image: linear-gradient(-30deg, var(--main-yellow-rgb-015), transparent 50%);
}

.yellow:nth-child(2n):before {
  background-image: linear-gradient(30deg, var(--main-yellow-rgb-015), transparent 50%);
}

@media screen and (min-width: 769px) {
  .green:before {
    background-image: linear-gradient(-80deg, var(--main-green-rgb-015), transparent 50%);
  }

  .green:nth-child(2n):before {
    background-image: linear-gradient(80deg, var(--main-green-rgb-015), transparent 50%);
  }

  .blue:before {
    background-image: linear-gradient(-80deg, var(--main-blue-rgb-015), transparent 50%);
  }

  .blue:nth-child(2n):before {
    background-image: linear-gradient(80deg, var(--main-blue-rgb-015), transparent 50%);
  }

  .red:before {
    background-image: linear-gradient(-80deg, var(--main-red-rgb-015), transparent 50%);
  }

  .red:nth-child(2n):before {
    background-image: linear-gradient(80deg, var(--main-red-rgb-015), transparent 50%);
  }

  .yellow:before {
    background-image: linear-gradient(-80deg, var(--main-yellow-rgb-015), transparent 50%);
  }

  .yellow:nth-child(2n):before {
    background-image: linear-gradient(80deg, var(--main-yellow-rgb-015), transparent 50%);
  }
}

    </style>
  </head>
  <body>
    <!--https://picsum.photos/1000/1000-->
    <%@ include file="navbar.jsp"%>
      <section class="dark">

	<div class="container py-4">
	      <h1 class="h1 text-center" id="pageHeaderTitle">Health Care Services</h1>
	
	<c:forEach items="${hosplist}" var="h">
		<article class="postcard dark blue">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="displayhospitalimage?id=${h.id}" alt="Image Title" />
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title blue"><a href="#"><c:out value="${h.name}"></c:out></a></h1>
				<div class="postcard__subtitle small">
					
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt"><p><c:out value="${h.description}"/></p>
          <p><Address><c:out value="${h.address}" /> </Address>Phone: <c:out value="${h.phone}"></c:out><br>
          Email:<c:out value="${h.email}"></c:out></p></div>
				<ul class="postcard__tagbox">
					<li class="tag__item"><a href="${h.balink }" target="blank"><i class=""></i>Book Appointment</a></li>
					
					<li class="tag__item play blue">
						<a href="${h.dlink }" target="blank"><i class=""></i>Directions</a>
					</li>
				</ul>
			</div>
		</article>
		</c:forEach>
	</div>
</section>
  </body>
</html>