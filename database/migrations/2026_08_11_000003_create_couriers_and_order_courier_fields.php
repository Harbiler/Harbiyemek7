<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('couriers', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->string('phone')->nullable();
            $table->boolean('is_online')->default(false);
            $table->decimal('lat', 10, 7)->nullable();
            $table->decimal('lng', 10, 7)->nullable();
            $table->string('status')->default('available'); // available|busy|offline
            $table->timestamp('last_location_at')->nullable();
            $table->timestamps();
        });

        Schema::table('orders', function (Blueprint $table) {
            $table->foreignId('courier_id')
                ->nullable()
                ->after('waiter_id')
                ->constrained('couriers')
                ->nullOnDelete();
            $table->timestamp('assigned_at')->nullable()->after('courier_id');
            $table->timestamp('picked_up_at')->nullable()->after('assigned_at');
        });

        // users.role ENUM'a courier ekle
        DB::statement("ALTER TABLE users MODIFY COLUMN role ENUM('user','admin','waiter','courier') NOT NULL DEFAULT 'user'");
    }

    public function down(): void
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->dropConstrainedForeignId('courier_id');
            $table->dropColumn(['assigned_at', 'picked_up_at']);
        });

        Schema::dropIfExists('couriers');

        DB::statement("ALTER TABLE users MODIFY COLUMN role ENUM('user','admin','waiter') NOT NULL DEFAULT 'user'");
    }
};
