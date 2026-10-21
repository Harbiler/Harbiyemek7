<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (! Schema::hasTable('vat_rates')) {
            Schema::create('vat_rates', function (Blueprint $table) {
                $table->id();
                $table->string('name');
                $table->decimal('rate', 5, 2);
                $table->boolean('is_default')->default(false);
                $table->boolean('status')->default(true);
                $table->unsignedInteger('sort_order')->default(0);
                $table->timestamps();
            });
        }

        if (Schema::hasTable('products')) {
            Schema::table('products', function (Blueprint $table) {
                if (! Schema::hasColumn('products', 'vat_rate_id')) {
                    $table->unsignedBigInteger('vat_rate_id')->nullable()->after('offer_price');
                }
                if (! Schema::hasColumn('products', 'vat_percent')) {
                    $table->decimal('vat_percent', 5, 2)->nullable()->after('vat_rate_id');
                }
            });
        }

        if (Schema::hasTable('vat_rates') && DB::table('vat_rates')->count() === 0) {
            $now = now();
            DB::table('vat_rates')->insert([
                ['name' => 'İndirimli', 'rate' => 1, 'is_default' => 0, 'status' => 1, 'sort_order' => 1, 'created_at' => $now, 'updated_at' => $now],
                ['name' => 'İndirimli (gıda)', 'rate' => 10, 'is_default' => 1, 'status' => 1, 'sort_order' => 2, 'created_at' => $now, 'updated_at' => $now],
                ['name' => 'Genel', 'rate' => 20, 'is_default' => 0, 'status' => 1, 'sort_order' => 3, 'created_at' => $now, 'updated_at' => $now],
            ]);
        }
    }

    public function down(): void
    {
        if (Schema::hasTable('products')) {
            Schema::table('products', function (Blueprint $table) {
                if (Schema::hasColumn('products', 'vat_rate_id')) {
                    $table->dropColumn('vat_rate_id');
                }
                if (Schema::hasColumn('products', 'vat_percent')) {
                    $table->dropColumn('vat_percent');
                }
            });
        }

        Schema::dropIfExists('vat_rates');
    }
};
