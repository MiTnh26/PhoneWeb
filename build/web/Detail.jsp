<%-- 
    Document   : Detail
    Created on : Dec 29, 2020, 5:43:04 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="card bg-light mb-3">
                            <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                            <ul class="list-group category_block">
                            <c:forEach items="${listC}" var="o">
                                <li class="list-group-item text-white ${tag == o.cate_id ? "active":""}"><a href="CategoryURL?cid=${o.cate_id}">${o.cate_name}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">Last product</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${p.image}" />
                            <h5 class="card-title">${p.product_name}</h5>
                            <p class="card-text">${p.description}</p>
                            <p class="bloc_left_price">${p.price} $</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="${detail.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.product_name}</h3>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency">US $</span><span class="num">${detail.price}</span>
                                            </span> 
                                            <!--<span>/per kg</span>--> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>${detail.description} ${detail.product_id}</p></dd>
                                        </dl>


                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
<!--                                                    <dt>Quantity: </dt>
                                                    <dd>
                                                        <input onchange="this.form.submit()" type="number" name="quantity" value="${o.getValue().getQuantity()}"/>
                                                        <select class="form-control form-control-sm" style="width:70px;">
                                                            <option> 1 </option>
                                                            <option> 2 </option>
                                                            <option> 3 </option>
                                                        </select>
                                                    </dd>-->
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->
                                            
                                        </div> <!-- row.// -->
                                        <hr>
<!--                                        <a href="addToCartURL?pid=${detail.product_id}" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>-->
                                        <a href="addToCartURL?pid=${detail.product_id}" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->


                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer class="text-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-7 col-xl-7">
                        <h5 style="color: black">About</h5>
                        <hr class="bg-dark mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p style="color: black" class="mb-0">
                            Sản phẩm của shop chúng tôi đều là hàng thật đảm bảo chất lượng 100%. Chúng tôi hỗ trợ quý khách kiểm tra hàng hóa bằng bất cứ phương thức nào. Nếu có hàng giả, chúng tôi nguyện bồi hoàn gấp 100 lần cho quý khách. Quý khách hãy yên tâm mua sắm.
                        </p>
                    </div>

<!--                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                        <h5 style="color: black">Informations</h5>
                        <hr class="bg-dark mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><a href="">Link 1</a></li>
                            <li><a href="">Link 2</a></li>
                            <li><a href="">Link 3</a></li>
                            <li><a href="">Link 4</a></li>
                        </ul>
                    </div>

                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                        <h5 style="color: black">Others links</h5>
                        <hr class="bg-dark mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><a href="">Link 1</a></li>
                            <li><a href="">Link 2</a></li>
                            <li><a href="">Link 3</a></li>
                            <li><a href="">Link 4</a></li>
                        </ul>
                    </div>-->

                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h5 style="color: black">Contact</h5>
                        <hr class="bg-dark mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li style="color: black"><i class="fa fa-home mr-2" ></i> My company</li>
                            <li style="color: black"><i class="fa fa-envelope mr-2" ></i> minhtn2004@gmail.com</li>
                            <li style="color: black"><i class="fa fa-phone mr-2" ></i> + 0987654321</li>
                            <li style="color: black"><i class="fa fa-print mr-2" ></i> + 0123456789</li>
                        </ul>
                    </div>
                    <div class="col-12 copyright mt-3">
                        <p class="float-left">
                            <a href="#">Back to top</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
