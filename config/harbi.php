<?php

return [
    'partner_floor_enabled' => (bool) env('HARBI_PARTNER_FLOOR', false),

    /** Restoran yeni siparişi kaç dakikada kabul etmeli */
    'restaurant_accept_minutes' => (int) env('HARBI_RESTAURANT_ACCEPT_MINUTES', 7),

    /** Kurye atamayı kaç dakikada kabul / alsın */
    'courier_accept_minutes' => (int) env('HARBI_COURIER_ACCEPT_MINUTES', 5),

    /** Aynı siparişte en fazla kaç kez kurye değiştirilir */
    'courier_max_reassigns' => (int) env('HARBI_COURIER_MAX_REASSIGNS', 3),

    'support_phone' => env('HARBI_SUPPORT_PHONE', ''),
    'support_whatsapp' => env('HARBI_SUPPORT_WHATSAPP', ''),
];
