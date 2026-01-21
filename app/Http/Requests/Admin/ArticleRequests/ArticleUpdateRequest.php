<?php

namespace App\Http\Requests\Admin\ArticleRequests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ArticleUpdateRequest extends FormRequest
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
            // 'name' => 'required|string|max:254|unique:articles,name,' . $id

            'article_type' => 'required|in:1,2,3,4',
            'desc' => 'required|string',
            'title' => 'required|string|max:1255|unique:articles,title,' . $id,
            // 'category_id' => 'required_with:article_type:2|exists:categories,id', 
            'category_id'  => [
                'required_if:article_type,2',
                'nullable',
                Rule::exists('categories','id'),
            ],
            'writer_id'  => [
                'required_if:article_type,2',
                'nullable',
                Rule::exists('writers','id'),
            ],
            'file' => 'nullable|mimes:jpeg,png,jpg,webp,webm|max:2048',
            'icon' => 'nullable|mimes:jpeg,png,jpg,webp,webm|max:2048',
            'importance' => 'required_with:article_type:1|string', 
            'students_count' => 'required_with:article_type:4|numeric',

            'features' => 'nullable|array', 
            'features.*' => 'required|string', 

            'what_we_offer' => 'nullable|array', 
            'what_we_offer.*' => 'required|string', 

            'other_points' => 'nullable|array', 
            'other_points.*.title' => 'required|string', 
            'other_points.*.content' => 'required|string', 
            
            'is_recommended' => 'nullable|in:1',
            
            'article_file' => 'nullable|file|max:20480',
            'linkedin' => 'nullable|max:1255|string',
            'whatsapp' => 'nullable|max:1255|string',
            'facebook' => 'nullable|max:1255|string',
            'email' => 'nullable|max:1255|string',
            'x_url' => 'nullable|max:1255|string',
            
        ];
    }
}
