<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (! Schema::hasColumn('delivery_areas', 'full_address')) {
            Schema::table('delivery_areas', function (Blueprint $table) {
                $table->string('full_address', 500)->nullable()->after('area_name');
            });
        }

        try {
            DB::statement("ALTER TABLE delivery_areas MODIFY COLUMN `type` ENUM('province','district','municipality','street') NOT NULL DEFAULT 'province'");
        } catch (\Throwable $e) {
            // type already extended or not enum
        }
    }

    public function down(): void
    {
        if (Schema::hasColumn('delivery_areas', 'full_address')) {
            Schema::table('delivery_areas', function (Blueprint $table) {
                $table->dropColumn('full_address');
            });
        }
    }
};
