<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('import_bunch_data', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('file_name')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('upload_data_count')->default(0);
            $table->integer('unverified_data_count')->default(0);
            $table->integer('verified_data_count')->default(0);
            $table->integer('duplicate_data_count')->default(0);
            $table->integer('failed_data_count')->default(0);
            $table->enum('verify_status',['1','0'])->default('1');
            $table->enum('status',['1','0'])->default('1');
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
            $table->integer('deleted_by')->nullable();
            $table->timestamp('created_at')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP'));
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('import_bunch_data');
    }
};
