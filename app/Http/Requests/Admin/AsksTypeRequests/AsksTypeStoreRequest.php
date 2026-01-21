<?php

namespace App\Http\Requests\Admin\AsksTypeRequests;

use Illuminate\Foundation\Http\FormRequest;

class AsksTypeStoreRequest extends FormRequest
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
            'name' => 'required|string|max:254|unique:asks_type,name'
        ];
    }
}
