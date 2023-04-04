<?php
    // Memanggil Dan Memproses File Bagian Atas
    include_once "top.php";
    // Memanggil Dan Memproses File Bagian Menu
    include_once "menu.php";
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <?php
                            $url = $_GET [ "url"];
                            if ($url == "dashboard") {
                                include_once "dashboard.php";
                            }
                            else if (!empty($url)) {
                                include_once "" .$url. ".php";
                            }
                            else {
                                "dashboard.php";
                            }
                        ?>
                    </div>
                </main>
            </div>
<?php
    // Memanggil Dan Memproses File Bagian Bawah
    include_once "bottom.php";
?>