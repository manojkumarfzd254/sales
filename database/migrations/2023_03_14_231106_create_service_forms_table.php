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
        Schema::create('service_forms', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('form_name')->nullable();
            $table->enum('heading_type', ['h1','h2','h3','h4','h5','h6'])->nullable();
            $table->text("heading_data",1000)->nullable();
            $table->longText("description")->nullable();
            $table->longText("fields")->nullable();
            $table->longText("form_data")->nullable();
            $table->enum('status',['1','0'])->default('1');
            $table->integer('department_id')->nullable();
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
        Schema::dropIfExists('service_forms');
    }
};
