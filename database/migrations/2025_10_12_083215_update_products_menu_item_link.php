<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Update the Products menu item to link to product groups
        DB::table('admin_menu_items')
            ->where('label', 'Products')
            ->where('menu_id', 1)
            ->update([
                'label' => 'Tüm Ürünler',
                'link' => '/product-groups',
                'updated_at' => now()
            ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Revert the Products menu item back to original
        DB::table('admin_menu_items')
            ->where('label', 'Tüm Ürünler')
            ->where('menu_id', 1)
            ->update([
                'label' => 'Products',
                'link' => '/products',
                'updated_at' => now()
            ]);
    }
};
