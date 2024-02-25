<section class="section">

    <div class="row">
        <div class="col-md-12">
            <h5>جميع الموظفين</h5>
            <p class="alert alert-success">في هذه الصفحة ستجد قائمة لجميع الموظفين المضافين لديك</p>
            <div class="card">
                <div class="table-responsive">
                    <table class="table ">
                        <thead class="text-right">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">صورة الموظف</th>
                                <th scope="col">اسم الموظف</th>
                                <th scope="col">الرقم الوظيفي</th>
                                <th scope="col">جنس الموظف</th>
                                <th scope="col">رقم الهاتف</th>
                                <th scope="col">اجراء</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php
                            dbSelect("users", "id, name, image, employee_id , gender, phone", "ORDER BY id DESC");
                            if ($countrows >= 1) {
                                foreach ($rows as $row) {

                                    switch ($row['gender']) {
                                        case "male":
                                            $gender = '<span class="text-info">ذكر</span>';
                                            break;
                                        case "female":
                                            $gender = '<span class="text-danger">انثى</span>';
                                            break;
                                        default:
                                            $gender = '<span class="text-warning">مجهول</span>';
                                    }

                                    echo '
                <tr>
                    <td>' . $row['id'] . '</td>
                    <td><img src="../panel/files/profiles/' . $row['image'] . '" style="border-radius: 50px;width: 80px;height: 80px;"></td>
                    <td>' . $row['name'] . '</td>
                    <td>' . $row['employee_id'] . '</td>
                    <td>' . $gender . '</td>
                    <td>' . $row['phone'] . '</td>
                    <td>
                        <span class="btn btn-danger btn-sm" title="حذف"><i class="bi bi-trash"></i></span>
                        <a href="employees/' . $row['id'] . '/edit" class="btn btn-warning btn-sm" title="تحرير الموظف"><i class="bi bi-pencil-fill"></i></a>
                    </td>
                </tr>
                ';
                                }
                            }
                            ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</section>