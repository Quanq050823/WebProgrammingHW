<footer class="footer">
    <div class="footer-text">
        <p>CopyRight &copy; 2030 by DucQuang | All Rights Reserved.</p>
    </div>
    <div class="footer-iconTop">
        <a href="../index.html"><i class='bx bx-up-arrow'></i>Back to Home</a>
    </div>
</footer>

<style>

    .footer {
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        padding: 2rem 9%;
        background: var(--second-bg-color);
    }
    .footer-text p {
        font-size: 1.6rem;
    }

    .footer-iconTop a {
        display: inline-flex;
        justify-content: center;
        align-items: center;
        padding: .8rem;
        background: var(--main-color);
        border-radius: .8rem;
    }
    .footer-iconTop a:hover {
        box-shadow: 0 0 1rem var(--main-color);
    }

    .footer-iconTop a i {
        font-size: 2.4rem;
        color: var(--second-bg-color);
    }


    @media (max-width: 991px) {
        .footer{
            padding: 2rem 3%;
        }
    }

    @media (max-width: 991px) {
        .header {
            padding: 2rem 3%;
        }
        section {
            padding: 10rem 3% 2rem;
        }

        .footer{
            padding: 2rem 3%;
        }
    }

    @media (max-width: 768px) {


        .navbar a {
            display: block;
            font-size: 2rem;
            margin: 3rem 0;
        }
        .footer{
            padding: 2rem 3%;
        }
    }
</style>