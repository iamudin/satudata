<?php
return [

    /*
    |--------------------------------------------------------------------------
    | GrandMaster
    |--------------------------------------------------------------------------
    |
    | Untuk Pengaturan standar GrandMaster
    |
    */

    'aplikasi' =>   [
                        'nama'          => 'Satu Data',
                        'singkatan'     => 'SATUDATA',
                        'daerah'        => 'KABUPATEN BENGKALIS', // HARUS HURUF BESAR
                        'kota'          => 'Bengkalis',
                        'level'         => 'Kabupaten', // Kabupaten, kota, provinsi (default)
                        'logo'		    => env('APP_URL').'/backend/img/logo/200.png',
                        'favicon'		=> '/backend/img/logo/50.png',
                        'tema'          => 1, // 1-15
                        'login_versi'   => 1, // 1,2
                        'author'        => 'hamba-allah',
                    ],
    'level' => [
                    0 => 'Unknown',
                    1 => 'Root',
                    2 => 'Operator',
                    3 => 'Admin',
    ],
    'url'   =>  [
                    'admin'     => '',
                    'public'    => '',
                ],
    'ukuran' => [
                    'slide' =>  ['width' => 1920, 'height' => 1000,],
                    'wide'  =>  ['width' => 1170, 'height' => 500,],
                    'thumb' =>  ['width' => 700,  'height' => NULL,],
                    'small' =>  ['width' => 450,  'height' => 250,],
                    'xs'    =>  ['width' => 90,   'height' => 90,],
    ],
    'artisan_password'   =>  env('PASSWORD_ARTISAN', FALSE), //password untuk validasi melakukan sintak di command laravel
    'tes_login' =>  [
                        'uname' =>env('LOGIN_UNAME'),
                        'pwd'   =>env('LOGIN_PWD'),
                    ],
    'regex'=>[
        'uuid'=>'regex:/^[a-zA-Z0-9\-\/ ]+$/',
        'text'=>'regex:/^[a-zA-Z0-9\.\-\/\:\"\,\ ]+$/',
        'json'=>'regex:/^[a-zA-Z0-9\.\-\/\:\{\}\(\)\"\,\[\]\_\<\>\&\;\?\!\ ]+$/',
    ],
    'status_pengumuman'=>[
        'danger'=>'Sangat Penting',
        'warning'=>'Penting',
        'primary'=>'Biasa',
    ],
    'kontak'=>[
        'instagram' =>'Instagram',
        'facebook'  =>'Facebook',
        'twitter'   =>'Twitter',
        'youtube'   =>'Youtube',
        'alamat'    =>'Alamat',
        'email'     =>'Email',
        'telp'      =>'Telp',
        'kontak'    =>'Kontak',
        'koordinat' =>'Koordinat',
    ],
    'status_foto'=>[
        'galeri'               => '0',
        'slider'               => '1',
        'opd'                  => '2',
    ],
    'status_dokumen'=>[
        'buku'               => '0',
        'monografi'          => '1',
        'insosek'            => '2',
        'stunting'           => '3',
        'hivaids'            => '4',
        'interaktif'         => '5',
    ],
    'status_kelola'=>[
        '0'               => 'Sub Elemen',
        '1'               => 'Kelengkapan dan Jumlah Data',
    ],
    'tingkatandaerah'=>[
        '0'           => 'Kabupaten',
        '1'           => 'Kecamatan',
        '2'           => 'Desa',
    ],
    'tingkatanopd'=>[
        '0'           => 'Sekretariat Daerah',
        '1'           => 'Sekretariat DPRD',
        '2'           => 'Inspektorat',
        '3'           => 'Perangkat Badan',
        '4'           => 'Perangkat Dinas',
        '5'           => 'RSUD',
        '6'           => 'Perangkat Vertical',
    ],
    'tahunlaporan'=>[
        '0' => date("Y")-3,
        '1' => date("Y")-2,
        '2' => date("Y")-1
    ]
    
];