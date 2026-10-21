<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (!Schema::hasColumn('users', 'restaurant_id')) {
                $table->foreignId('restaurant_id')
                    ->nullable()
                    ->after('role')
                    ->constrained('restaurants')
                    ->nullOnDelete();
            }
        });
    }

    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (Schema::hasColumn('users', 'restaurant_id')) {
                $table->dropConstrainedForeignId('restaurant_id');
            }
        });
    }
};
