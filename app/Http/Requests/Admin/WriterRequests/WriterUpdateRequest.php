<?php

namespace App\Http\Requests\Admin\WriterRequests;

use Illuminate\Foundation\Http\FormRequest;

class WriterUpdateRequest extends FormRequest
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
        $id = $this->route('id'); // get from route
        // $id = $this->request->get('user_id'); // get from in blade
        return [
            'name' => 'required|string|max:254|unique:writers,name,' . $id,
            'file' => 'nullable|mimes:jpeg,png,jpg,webp,webm|max:2048',
            'info' => 'required|string|max:1255',
            'linkedin' => 'required|string|max:1255',
            'whatsapp' => 'required|string|max:1255',
            'facebook' => 'required|string|max:1255',
            'email' => 'required|string|max:1255',
            'x_url' => 'required|string|max:1255',
        ];
    }
}
