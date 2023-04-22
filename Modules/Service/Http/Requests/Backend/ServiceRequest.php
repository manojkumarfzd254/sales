<?php

namespace Modules\Service\Http\Requests\Backend;

use Illuminate\Foundation\Http\FormRequest;

class ServiceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required|max:191',
            'department_id' => 'required|max:191',
            'description' => 'required',
            // 'external_url' => 'required',
            'type' => 'required',
            'status' => 'required',
            'form_id' => 'required',
        ];
    }
}
