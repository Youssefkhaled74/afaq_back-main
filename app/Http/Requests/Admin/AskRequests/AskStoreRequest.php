<?php

namespace App\Http\Requests\Admin\AskRequests;

use Illuminate\Foundation\Http\FormRequest;

class AskStoreRequest extends FormRequest
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
            'ask' => 'required|string|max:254|unique:asks,ask',
            'ask_type_id' => 'required|exists:asks_type,id',
        ];
    }
}
