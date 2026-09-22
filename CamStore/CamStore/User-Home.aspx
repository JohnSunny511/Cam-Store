<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="User-Home.aspx.cs"
    Inherits="CamStore.User_Home" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <style type="text/css">

        .home-page {
            background-color: #f8f9fa;
            padding-bottom: 40px;
        }

        /* ================= HERO CAROUSEL ================= */

.carousel-section {
    padding: 5px 0 5px 0;
}

.carousel-custom {
    max-width: 900px;
    margin: auto;
}

.carousel-inner {
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0,0,0,0.15);
}

.carousel-img {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.carousel-caption {
    border-radius: 8px;
    padding: 6px 15px;
    bottom: 10px;
}

.carousel-caption h5 {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 2px;
}

.carousel-caption p {
    font-size: 12px;
    margin-bottom: 0;
}

        /* ================= CATEGORY SECTION ================= */

.category-section {
    max-width: 1200px;
    margin: auto;
    padding: 15px 15px 5px 15px;
}

.category-title {
    text-align: center;
    margin-bottom: 15px;
}

.category-title h2 {
    font-size: 32px;
    font-weight: bold;
    margin-bottom: 5px;
    color: #212529;
}

.title-line {
    width: 60px;
    height: 3px;
    background-color: #212529;
    margin: auto;
    border-radius: 5px;
}


        /* ================= CATEGORY CARDS ================= */

        .category-card {
    width: 240px;
    background-color: white;
    border-radius: 12px;
    padding: 12px;
    margin: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.10);
    transition: 0.3s;
    vertical-align: top;
}

        .category-card:hover {
            transform: translateY(-7px);
            box-shadow: 0 12px 28px rgba(0,0,0,0.16);
        }

        .category-name {
            display: block;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #212529;
            margin-bottom: 15px;
        }

        .category-image {
    width: 210px;
    height: 180px;
    object-fit: cover;
    border-radius: 10px;
    display: block;
    margin: auto;
}

        .category-description {
            display: block;
            text-align: center;
            color: #6c757d;
            font-size: 14px;
            line-height: 1.5;
            margin-top: 15px;
        }


        /* ================= FEEDBACK ================= */

        .feedback-section {
    text-align: center;
    padding: 5px 0 5px 0;
}

.feedback-button {
    background-color: #212529;
    color: white;
    border: none;
    border-radius: 7px;
    padding: 7px 22px;
    font-size: 14px;
    font-weight: bold;
}


        /* ================= RESPONSIVE ================= */

        @media (max-width: 768px) {

            .carousel-img {
                height: 280px;
            }

            .category-title h2 {
                font-size: 32px;
            }

            .category-card {
                width: 240px;
            }

            .category-image {
                width: 200px;
                height: 200px;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="home-page">

        <!-- ================= CAROUSEL ================= -->

        <section class="carousel-section">

            <div class="container">

                <div id="heroCarousel"
                    class="carousel slide carousel-custom"
                    data-bs-ride="carousel">

                    <!-- Indicators -->

                    <div class="carousel-indicators">

                        <button type="button"
                            data-bs-target="#heroCarousel"
                            data-bs-slide-to="0"
                            class="active"
                            aria-current="true"
                            aria-label="Slide 1">
                        </button>

                        <button type="button"
                            data-bs-target="#heroCarousel"
                            data-bs-slide-to="1"
                            aria-label="Slide 2">
                        </button>

                        <button type="button"
                            data-bs-target="#heroCarousel"
                            data-bs-slide-to="2"
                            aria-label="Slide 3">
                        </button>

                    </div>


                    <!-- Carousel Images -->

                    <div class="carousel-inner">

                        <!-- Slide 1 -->

                        <div class="carousel-item active">

                            <img src="photos/hero1.jpg"
                                class="d-block w-100 carousel-img"
                                alt="Professional Camera Gear" />

                            <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">

                                <h5>Professional Gear</h5>

                                <p>
                                    Discover high-grade DSLR and Mirrorless cameras.
                                </p>

                            </div>

                        </div>


                        <!-- Slide 2 -->

                        <div class="carousel-item">

                            <img src="photos/hero2.jpg"
                                class="d-block w-100 carousel-img"
                                alt="Vintage and Compact Cameras" />

                            <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">

                                <h5>Compact &amp; Vintage</h5>

                                <p>
                                    Timeless aesthetic combined with modern sensors.
                                </p>

                            </div>

                        </div>


                        <!-- Slide 3 -->

                        <div class="carousel-item">

                            <img src="photos/hero3.jpg"
                                class="d-block w-100 carousel-img"
                                alt="Action and Digital Cameras" />

                            <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">

                                <h5>Action &amp; Digital</h5>

                                <p>
                                    Ready for every adventure and memory.
                                </p>

                            </div>

                        </div>

                    </div>


                    <!-- Previous -->

                    <button class="carousel-control-prev"
                        type="button"
                        data-bs-target="#heroCarousel"
                        data-bs-slide="prev">

                        <span class="carousel-control-prev-icon"
                            aria-hidden="true">
                        </span>

                        <span class="visually-hidden">
                            Previous
                        </span>

                    </button>


                    <!-- Next -->

                    <button class="carousel-control-next"
                        type="button"
                        data-bs-target="#heroCarousel"
                        data-bs-slide="next">

                        <span class="carousel-control-next-icon"
                            aria-hidden="true">
                        </span>

                        <span class="visually-hidden">
                            Next
                        </span>

                    </button>

                </div>

            </div>

        </section>


        <!-- ================= CATEGORIES ================= -->

        <section class="category-section">

            <div class="category-title">

                <h2>Categories</h2>

                <div class="title-line"></div>

            </div>


            <asp:DataList ID="DataList1"
                runat="server"
                RepeatDirection="Horizontal"
                CellPadding="0"
                CellSpacing="0">

                <ItemTemplate>

                    <div class="category-card">

                        <!-- Category Name -->

                        <asp:Label ID="Label2"
                            runat="server"
                            CssClass="category-name"
                            Text='<%# Eval("category_name") %>'>
                        </asp:Label>


                        <!-- Category Image -->

                        <asp:ImageButton ID="ImageButton1"
                            runat="server"
                            CssClass="category-image"
                            ImageUrl='<%# Eval("category_photo") %>'
                            CommandArgument='<%# Eval("category_id") %>'
                            OnCommand="ImageButton1_Command" />


                        <!-- Category Description -->

                        <asp:Label ID="Label3"
                            runat="server"
                            CssClass="category-description"
                            Text='<%# Eval("category_description") %>'>
                        </asp:Label>

                    </div>

                </ItemTemplate>

            </asp:DataList>

        </section>


        <!-- ================= FEEDBACK ================= -->

        <section class="feedback-section">

            <asp:Button ID="Button1"
                runat="server"
                CssClass="feedback-button"
                OnClick="Button1_Click"
                Text="Feedback" />

        </section>

    </div>

</asp:Content>