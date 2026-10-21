<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('restaurant_tables', function (Blueprint $table) {
            if (!Schema::hasColumn('restaurant_tables', 'restaurant_id')) {
                $table->foreignId('restaurant_id')
                    ->nullable()
                    ->after('id')
                    ->constrained('restaurants')
                    ->nullOnDelete();
            }
        });
    }

    public function down(): void
    {
        Schema::table('restaurant_tables', function (Blueprint $table) {
            if (Schema::hasColumn('restaurant_tables', 'restaurant_id')) {
                $table->dropConstrainedForeignId('restaurant_id');
            }
        });
    }
};
