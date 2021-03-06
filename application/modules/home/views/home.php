<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!--state overview start-->

        <!--
        <div class="state-overview col-md-3" style="padding: 23px 0px;">
        <?php if ($this->ion_auth->in_group(array('admin', 'Accoutant', 'Receptionist'))) { ?> 
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="finance/addPaymentView">
                                                <div class="panel-heading"> <?php echo lang('add_payment'); ?> </div>
                                            </a>
                                        </div>
        <?php } ?>
        <?php if (!$this->ion_auth->in_group(array('Patient'))) { ?> 
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="patient/addNewView">
                                                <div class="panel-heading add_patient"> <?php echo lang('add_patient'); ?> </div>
                                            </a>
                                        </div>
        <?php } ?>
        <?php if ($this->ion_auth->in_group(array('admin', 'Doctor', 'Nurse', 'Receptionist'))) { ?>
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="appointment/addNewView">
                                                <div class="panel-heading add_appointment"> <?php echo lang('add_appointment'); ?> </div>
                                            </a>
                                        </div>
        <?php } ?>
        <?php if ($this->ion_auth->in_group(array('admin'))) { ?> 
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="prescription/addNewPrescription">
                                                <div class="panel-heading add_prescription"> <?php echo lang('add_prescription'); ?> </div>
                                            </a>
                                        </div>
        <?php } ?>
        <?php if ($this->ion_auth->in_group(array('admin', 'Laboratorist', 'Doctor'))) { ?>
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="lab/addLabView">
                                                <div class="panel-heading add_lab_report"> <?php echo lang('add_lab_report'); ?> </div>
                                            </a>
                                        </div>
        <?php } ?>
        <?php if (!$this->ion_auth->in_group(array('Patient'))) { ?>
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="patient/documents">
                                                <div class="panel-heading add_patient"> <?php echo lang('add_documents'); ?> </div> 
                                            </a>
                                        </div>
        <?php } ?>
        <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="settings">
                                                <div class="panel-heading add_appointment"> <?php echo lang('change_settings'); ?> </div> 
                                            </a>
                                        </div>
        <?php } ?>
        <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                                        <div class="col-lg-12 col-sm-6">
                                            <a href="settings/language">
                                                <div class="panel-heading add_prescription"> <?php echo lang('change_language'); ?> </div> 
                                            </a>
                                        </div>
        <?php } ?>
            
        </div>
        
        
        -->   
        
        



        <div class="state-overview col-md-12" style="padding: 23px 0px;">
            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="doctor">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol terques">
                            <i class="fa fa-stethoscope"></i>
                        </div>
                        <div class="value"> 
                            <h1 class="">
                                <?php echo $this->db->count_all('doctor'); ?>
                            </h1>
                            <p><?php echo lang('doctor'); ?></p>
                        </div>
                    </section>
                    <?php if (!$this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>
            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="patient">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol blue">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('patient'); ?>
                            </h1>
                            <p><?php echo lang('patient'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>


            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="appointment">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol yellow">
                            <i class="fa fa-plus-square-o"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('appointment'); ?>
                            </h1>
                            <p><?php echo lang('appointment'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>

            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="prescription/all">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol terques">
                            <i class="fa fa-plus-square-o"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('prescription'); ?>
                            </h1>
                            <p><?php echo lang('prescription'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>

            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="patient/caseList">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol blue">
                            <i class="fa fa-medkit"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('medical_history'); ?>
                            </h1>
                            <p><?php echo lang('case_history'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>

            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="lab">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol terques">
                            <i class="fa fa-medkit"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('lab'); ?>
                            </h1>
                            <p><?php echo lang('lab_report'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>




            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="patient/documents">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol blue">
                            <i class="fa fa-file"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('patient_material'); ?>
                            </h1>
                            <p><?php echo lang('documents'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>
            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="finance/payment">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol yellow">
                            <i class="fa fa-money"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('payment'); ?>
                            </h1>
                            <p><?php echo lang('payment'); ?> <?php echo lang('invoice'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>





            <div class="col-lg-3 col-sm-6">
                <?php if ($this->ion_auth->in_group('admin')) { ?>
                    <a href="medicine">
                    <?php } ?>
                    <section class="panel">
                        <div class="symbol blue">
                            <i class="fa fa-medkit"></i>
                        </div>
                        <div class="value">
                            <h1 class="">
                                <?php echo $this->db->count_all('medicine'); ?>
                            </h1>
                            <p><?php echo lang('medicine'); ?></p>
                        </div>
                    </section>
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                    </a>
                <?php } ?>
            </div>
            <?php if ($this->ion_auth->in_group('admin')) { ?>
                <div class="col-lg-6 col-sm-6">    
                    <a href="finance/payment">
                        <section class="panel">
                            <div class="symbol terques">
                                <i class="fa fa-bar-chart-o"></i>
                            </div>
                            <div class="value">
                                <h1 class=" count14">
                                    <?php echo $settings->currency; ?> <?php echo number_format($sum[0]->gross_total, 2); ?>
                                </h1>
                                <p><?php echo lang('total_payment'); ?></p>
                            </div>
                        </section>         
                    </a>     
                </div>


                <div class="col-lg-3 col-sm-6">
                    <?php if ($this->ion_auth->in_group('admin')) { ?>
                        <a href="settings">
                        <?php } ?>
                        <section class="panel">
                            <div class="symbol blue">
                                <i class="fa fa-cogs"></i>
                            </div>
                            <div class="value">
                                <h1 class="">

                                </h1>
                                <p><?php echo lang('settings'); ?></p>
                            </div>
                        </section>
                        <?php if ($this->ion_auth->in_group('admin')) { ?>
                        </a>
                    <?php } ?>
                </div>


            <?php } ?>

        </div>




        <div class="state-overview col-md-8 col-sm-6">
            <aside class="calendar_ui">
                <section class="">
                    <div class="">
                        <div id="calendar" class="has-toolbar calendar_view"></div>
                    </div>
                </section>
            </aside>
        </div>
        <div class="state-overview col-md-4">
            <div class="right-side-bar">
                <div class="side-header">
                    <h5>Notice Board</h5>
                </div>
                <div class="side-content">
                    <div class="content-service">
                        <div class="service-icon">
                            <i class="fa fa-hdd-o" style="font-size: -webkit-xxx-large;"></i>
                        </div>
                        <div class="service-title">
                            <h4 style="margin-bottom: 13px;">1 Bed is Available</h4>
                            <button class="btn btn-primary add">Add an Allotment</button>
                        </div>
                    </div>    
                    <div class="content-service">
                        <div class="service-icon">
                            <i class="fa fa-money" style="font-size: -webkit-xxx-large;"></i>
                        </div>
                        <div class="service-title">
                            <h4 style="margin-bottom: 13px;">1 Payment Today</h4>
                            <button class="btn btn-primary add">See All Payments</button>
                        </div>
                    </div>    
                    <div class="content-service">
                        <div class="service-icon">
                            <i class="fa fa-user" style="font-size: -webkit-xxx-large;"></i>
                        </div>
                        <div class="service-title">
                            <h4 style="margin-bottom: 13px;">0 Patient Registration Today</h4>
                            <button class="btn btn-primary add">See All Patients</button>
                        </div>
                    </div>    
                    <div class="content-service">
                        <div class="service-icon">
                            <i class="fa fa-user" style="font-size: -webkit-xxx-large;"></i>
                        </div>
                        <div class="service-title">
                            <h4 style="margin-bottom: 13px;">0 Doctor Registration Today</h4>
                            <button class="btn btn-primary add">See All Doctors</button>
                        </div>
                    </div>        
                    <div class="content-service">
                        <div class="service-icon">
                            <i class="fa fa-medkit" style="font-size: -webkit-xxx-large;"></i>
                        </div>
                        <div class="service-title">
                            <h4 style="margin-bottom: 13px;">0 Medicine Registration Today</h4>
                            <button class="btn btn-primary add">See All Medicine</button>
                        </div>
                    </div>    
                    <div class="content-service">
                        <div class="service-icon">
                            <i class="fa fa-hospital-o" style="font-size: -webkit-xxx-large;"></i>
                        </div>
                        <div class="service-title">
                            <h4 style="margin-bottom: 13px;">0 Report Added Today</h4>
                            <button class="btn btn-primary add">See All Reports</button>
                        </div>
                    </div>     
                </div>
            </div>
        </div>
        </div>

        <!--


        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
        <?php echo lang('patient_appointment_graph'); ?>
                </header>
                <div class="panel-body">
                    <div id="hero-bar2" class="graph"></div>
                </div>
            </section>
        </div>

        <div class="col-lg-6">
            <section class="panel">
                <header class="panel-heading">
        <?php echo lang('expense_graph'); ?>
                </header>
                <div class="panel-body">
                    <div id="hero-bar1" class="graph"></div>
                </div>
            </section>
        </div>
        
        <div class="col-lg-6">
            <section class="panel">
                <header class="panel-heading">
        <?php echo lang('sales_graph'); ?>
                </header>
                <div class="panel-body">
                    <div id="hero-bar" class="graph"></div>
                </div>
            </section>
        </div>

        -->

        <style>

            table{
                box-shadow: none;
            }

            .fc-head{

                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0 rgba(0, 0, 0, .12);

            }

            .panel-body{
                background: #fff;
            }

            thead{
                background: #fff;
            }

            .panel-body {
                background: #fff;
            }

            .panel-heading {
                border-radius: 0px;
                background: #fff !important;
                color: #000;
                padding-left: 10px;
                font-size: 13px !important;
                margin-top: 3px;
                text-align: center;
            }

            .add_patient{
                background: #009988;
            }

            .add_appointment{
                background: #f8d347;
            }

            .add_prescription{
                background: blue;
            }

            .add_lab_report{

            }

            .y-axis li span {
                display: block;
                margin: -20px 0 0 -25px;
                padding: 0 20px;
                width: 40px;
            }

            .sale_color{
                background: #69D2E7 !important;
                padding: 10px !important;
                font-size: 5px;
                margin-right: 10px;
            }

            .expense_color{
                background: #F38630 !important;
                padding: 10px !important;
                font-size: 5px;
                margin-right: 10px;
            }

            audio, canvas, progress, video {
                display: inline-block;
                vertical-align: baseline;
                width: 100% !important;
                height: 101% !important;
                margin-bottom: 18%;
            }  


        </style>


        <!--state overview end-->
    </section>
</section>
<!--main content end-->
<!--footer start-->
<!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->

<script src="common/js/jquery-1.8.3.min.js"></script>

<script src="common/js/all-chartjs.js"></script>

<script src="common/assets/morris.js-0.4.3/morris.min.js" type="text/javascript"></script>
<script src="common/assets/morris.js-0.4.3/raphael-min.js" type="text/javascript"></script>
<script src="common/assets/chart-master/Chart.js"></script>

<script>

    //owl carousel

    $(document).ready(function () {
        $("#owl-demo").owlCarousel({
            navigation: true,
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true,
            autoPlay: true

        });
    });

    //custom select box

    $(function () {
        $('select.styled').customSelect();
    });

<?php
$total_this = $this_month[1] + $this_month[0];
?>

    var pieData = [
        {
            value: <?php echo $this_month[1] / $total_this * 180; ?>,
            color: "#F38630"
        },
        {
            value: <?php echo $this_month[0] / $total_this * 180; ?>,
            color: "#69D2E7"
        }

    ];

    new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);



    Morris.Bar({
        element: 'hero-bar2',
        data: [
            {device: 'Jan', geekbench: <?php echo $jan_total2; ?>},
            {device: 'Feb', geekbench: <?php echo $feb_total2; ?>},
            {device: 'March', geekbench: <?php echo $mar_total2; ?>},
            {device: 'April', geekbench: <?php echo $apr_total2; ?>},
            {device: 'May', geekbench: <?php echo $may_total2; ?>},
            {device: 'Jun', geekbench: <?php echo $jun_total2; ?>},
            {device: 'Jul', geekbench: <?php echo $jul_total2; ?>},
            {device: 'Ayg', geekbench: <?php echo $aug_total2; ?>},
            {device: 'Sep', geekbench: <?php echo $sep_total2; ?>},
            {device: 'Oct', geekbench: <?php echo $oct_total2; ?>},
            {device: 'Nov', geekbench: <?php echo $nov_total2; ?>},
            {device: 'Dec', geekbench: <?php echo $dec_total2; ?>}
        ],
        xkey: 'device',
        ykeys: ['geekbench'],
        labels: ['Geekbench'],
        barRatio: 0.4,
        xLabelAngle: 35,
        hideHover: 'auto',
        barColors: ['#6883a3']
    });
    Morris.Bar({
        element: 'hero-bar1',
        data: [
            {device: 'Jan', geekbench: <?php echo $jan_total1; ?>},
            {device: 'Feb', geekbench: <?php echo $feb_total1; ?>},
            {device: 'March', geekbench: <?php echo $mar_total1; ?>},
            {device: 'April', geekbench: <?php echo $apr_total1; ?>},
            {device: 'May', geekbench: <?php echo $may_total1; ?>},
            {device: 'Jun', geekbench: <?php echo $jun_total1; ?>},
            {device: 'Jul', geekbench: <?php echo $jul_total1; ?>},
            {device: 'Ayg', geekbench: <?php echo $aug_total1; ?>},
            {device: 'Sep', geekbench: <?php echo $sep_total1; ?>},
            {device: 'Oct', geekbench: <?php echo $oct_total1; ?>},
            {device: 'Nov', geekbench: <?php echo $nov_total1; ?>},
            {device: 'Dec', geekbench: <?php echo $dec_total1; ?>}
        ],
        xkey: 'device',
        ykeys: ['geekbench'],
        labels: ['Geekbench'],
        barRatio: 0.4,
        xLabelAngle: 35,
        hideHover: 'auto',
        barColors: ['#6883a3']
    });

    Morris.Bar({
        element: 'hero-bar',
        data: [
            {device: 'Jan', geekbench: <?php echo $jan_total; ?>},
            {device: 'Feb', geekbench: <?php echo $feb_total; ?>},
            {device: 'March', geekbench: <?php echo $mar_total; ?>},
            {device: 'April', geekbench: <?php echo $apr_total; ?>},
            {device: 'May', geekbench: <?php echo $may_total; ?>},
            {device: 'Jun', geekbench: <?php echo $jun_total; ?>},
            {device: 'Jul', geekbench: <?php echo $jul_total; ?>},
            {device: 'Ayg', geekbench: <?php echo $aug_total; ?>},
            {device: 'Sep', geekbench: <?php echo $sep_total; ?>},
            {device: 'Oct', geekbench: <?php echo $oct_total; ?>},
            {device: 'Nov', geekbench: <?php echo $nov_total; ?>},
            {device: 'Dec', geekbench: <?php echo $dec_total; ?>}
        ],
        xkey: 'device',
        ykeys: ['geekbench'],
        labels: ['Geekbench'],
        barRatio: 0.4,
        xLabelAngle: 35,
        hideHover: 'auto',
        barColors: ['#6883a3']
    });

</script>

</body>
</html>
