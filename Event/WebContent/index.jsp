
<!DOCTYPE html>
<html>
<head>
    <title>Event List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/layer/layer.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/cart.js"></script>
</head>
<body>
<!--header-->
<jsp:include page="/header.jsp">
    <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>
<!--banner-->

<div class="banner">
    <div class="container">
        <h2 class="hdng"><a href="<%=request.getContextPath()%>/goods_detail?id=${scroll.id}">${scroll.name}</a><span></span></h2>
        <p>Today's Picks</p>
        <a class="banner_a" href="javascript:;" onclick="buy(${scroll.id})">Traffic Rank</a>
        <div class="banner-text">
            <a href="<%=request.getContextPath()%>/goods_detail?id=${scroll.id}">
                <img src="<%=request.getContextPath()%>/${scroll.cover}" alt="${scroll.name}" width="350" height="350">
            </a>
        </div>
    </div>
</div>

<!--//banner-->


<!--gallery-->
<div class="gallery">
    <div class="container">
        <div class="alert alert-danger">Recommended Popular events</div>
        <div class="gallery-grids">
            <c:forEach items="${hotList}" var="g">
                <div class="col-md-4 gallery-grid glry-two">
                    <a href="<%=request.getContextPath()%>/goods_detail?id=${g.id}">
                        <img  style="width:250px;height:250px" src="<%=request.getContextPath()%>/${g.cover}" class="img-responsive" alt="${g.name}" width="350" height="350"/>
                    </a>
                    <div class="gallery-info galrr-info-two">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="<%=request.getContextPath()%>/goods_detail?id=${g.id}">view details</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">Traffic Rank</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="galy-info">
                        <p>${g.typeName} > ${g.name}</p>
                        <div class="galry">
                            <div class="prices">
                             </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>

        <div class="clearfix"></div>
        <div class="alert alert-info">New campaign recommendations</div>
        <div class="gallery-grids">
            <c:forEach items="${newList}" var="g">
                <div class="col-md-3 gallery-grid ">
                    <a href="<%=request.getContextPath()%>/goods_detail?id=${g.id}">
                        <img style="width:250px;height:250px" src="<%=request.getContextPath()%>/${g.cover}" class="img-responsive" alt="${g.name}"/>
                    </a>
                    <div class="gallery-info">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="<%=request.getContextPath()%>/goods_detail?id=${g.id}">view details</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">Traffic Rank</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="galy-info">
                        <p>${g.typeName} > ${g.name}</p>
                        <div class="galry">
                            <div class="prices">
                             </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>




        </div>
    </div>
</div>
<!--//gallery-->

<!--subscribe-->
<div class="subscribe"></div>
<!--//subscribe-->


<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>