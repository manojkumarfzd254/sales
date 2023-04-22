<?php

namespace Modules\Form\Http\Requests\Backend;

use Illuminate\Foundation\Http\FormRequest;

class FormsRequest extends FormRequest
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
            'form_name' => 'required|max:191',
            'heading_type' => 'required',
            'heading_data' => 'required',
            'status' => 'required'
        ];
    }
}
