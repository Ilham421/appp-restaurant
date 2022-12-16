<template>
    <section class="about-section">
        <div class="heading">
            <span>about us</span>
            <h3>good quality dishes</h3>
        </div>

        <div class="row">
            <div class="about-content">
                <img src="../assets/images/chef-cartoon.webp" alt="">
                <div class="about-content-text">
                    <p>McDonald’s merupakan restoran fast food terbesar di dunia yang diawali pada tahun 1955 di California, Amerika Serikat. Dengan produk unggulan berupa Burger bernama Bigmac, McDonald’s hingga saat ini telah memiliki ribuan restoran yang tersebar di lebih dari 100 negara, salah satunya Indonesia.</p>
                    <p>McDonald’s pertama kali masuk ke Indonesia pada tahun 1991 dengan membuka restoran pertamanya di Sarinah, Thamrin.Pada tahun 2009 PT. Rekso Nasional Food (RNF) yang merupakan salah satu anak perusahaan dari Rekso Group menandatangani Master Franchise Agreement dengan McDonald’s International Property Company (MIPCO) yang memberikan izin untuk mengoperasikan semua restoran dengan brand McDonald’s dan membuka restoran baru di seluruh Indonesia. Hingga saat ini PT.RNF telah membuka sekiranya lebih dari 200 gerai McDonald’s tersebar di berbagai kota di Indonesia yang didukung dengan lebih dari 14.000 karyawan di seluruh Indonesia. PT. RNF melalui McDonald’s Indonesia selalu berkomitmen penuh menyuguhkan pelayanan yang terbaik bagi pelanggan, menghadirkan kualitas makanan terdepan, serta memberikan manfaat yang besar bagi masyarakat Indonesia.</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="about-article">
                <h3>food brings people together</h3>
            </div>
        </div>

        <div class="row gallery">
            <div class="wrapper">
                <img src="../assets/images/dis-1.webp" alt="">
                <img src="../assets/images/dis-2.webp" alt="">
                <img src="../assets/images/dis-3.webp" alt="">
                <img src="../assets/images/dis-4.webp" alt="">
                <img src="../assets/images/dis-5.webp" alt="">
                <img src="../assets/images/dis-6.webp" alt="">
                <img src="../assets/images/dis-7.webp" alt="">
                <img src="../assets/images/dis-8.webp" alt="">
                <img src="../assets/images/dis-9.webp" alt="">
                <img src="../assets/images/dis-10.webp" alt="">
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: "About",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");

.about-section {
    padding: 2rem 9%;
}

.about-section .about-content {
    display: flex;
    width: 100%;

}

.about-section .about-content img {
    background-color: rgb(249, 249, 249);
}

.about-section .about-content .about-content-text {
    text-align: justify;
    font-size: 16px;
    padding-left: 50px;
}

.about-section .about-article {
    margin-top: 50px;
    padding: 10px;
    text-align: center;
    background-color: #27ae60;
    width: 100%;
}

.about-section .about-article h3 {
    font-family: 'Satisfy', cursive;
    font-size: 32px;
    color: white;
}


.about-section .gallery {
    overflow: hidden;
    padding: 100px;
}

.about-section .gallery .wrapper {
    position: relative;
    flex-grow: 1;
    margin: auto;
    max-width: 1200px;
    max-height: 1200px;
    display: grid;
    grid-template-columns: repeat(8, 1fr);
    grid-template-rows: repeat(4, 1fr);
    grid-gap: 2vmin;
    justify-items: center;
    align-items: center;
}

.about-section .gallery .wrapper img {
    z-index: 1;
    grid-column: span 2;
    max-width: 100%;
    margin-bottom: -52%;
    clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
    transform: scale(1);
    transition: all .25s;
}

.about-section .gallery .wrapper img:nth-child(7n + 1) {
    grid-column: 2 / span 2;
}

.about-section .gallery .wrapper img:hover {
    z-index: 2;
    transform: scale(2);
}

@media (max-width: 768px) {
    .about-section .about-content img {
        width: 250px;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2.5);
    }
}

@media (max-width: 576px) {
    .about-section .about-content img {
        width: inherit;
    }

    .about-section .about-content {
        display: block;
    }

    .about-section .about-content .about-content-text {
        padding-left: 0px;
    }

    .about-section .gallery {
        padding: 50px 0px;
    }

    .about-section .gallery .wrapper img {
        max-width: 100%;

    }

    .about-section .gallery .wrapper {
        grid-gap: 2vmin;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2);
    }

}
</style>