<?php

return [

    /*
    |--------------------------------------------------------------------------
    | SMS Sağlayıcı
    |--------------------------------------------------------------------------
    |
    | Kullanılacak SMS sağlayıcısı (netgsm veya twilio)
    |
    */
    'provider' => env('SMS_PROVIDER', 'netgsm'),

    /*
    |--------------------------------------------------------------------------
    | Netgsm Ayarları
    |--------------------------------------------------------------------------
    */
    'netgsm' => [
        'usercode' => env('NETGSM_USERCODE', ''),
        'password' => env('NETGSM_PASSWORD', ''),
        'header' => env('NETGSM_HEADER', 'PIZZA'),
    ],

    /*
    |--------------------------------------------------------------------------
    | Twilio Ayarları
    |--------------------------------------------------------------------------
    */
    'twilio' => [
        'account_sid' => env('TWILIO_ACCOUNT_SID', ''),
        'auth_token' => env('TWILIO_AUTH_TOKEN', ''),
        'from_number' => env('TWILIO_FROM_NUMBER', ''),
    ],

];


