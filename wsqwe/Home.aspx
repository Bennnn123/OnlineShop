<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="banner-area relative" id="home">
				<div class="container-fluid">
					<div class="row fullscreen align-items-center justify-content-center">
						<div class="col-lg-6 col-md-12 d-flex align-self-end img-right no-padding">
							<img class="img-fluid" src="img/header-img.png" alt="">
						</div>
						<div class="banner-content col-lg-6 col-md-12">
							<h1 class="title-top"><span>在的喊在~</span> 全館商品滿兩千送兩百!</h1>
							<h1 class="text-uppercase">
								加入會員<br>
								還有機會獲得<br>
                                1,688購物金!
							</h1>
							<button class="primary-btn text-uppercase"><a href="Registered.aspx">即刻加入!</a></button>
						</div>							
					</div>
				</div>
			</section>
    <section class="men-product-area section-gap relative" id="men">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="menu-content pb-40">
                    <div class="title text-center">
                        <h1 class="text-white mb-10">春夏季男士流行服飾</h1>
                        <p class="text-white">由義大利知名設計師Sit Down Please所設計，走在流行的尖端不再只是夢想</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/l1.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">Long Sleeve shirt</h5>
                        <h3 class="text-white">$150.00</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/l2.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">Long Sleeve shirt</h5>
                        <h3 class="text-white">$150.00</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/l3.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">Long Sleeve shirt</h5>
                        <h3 class="text-white">$150.00</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/l4.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">Long Sleeve shirt</h5>
                        <h3 class="text-white">$150.00</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

