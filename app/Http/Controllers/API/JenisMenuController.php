<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\JenisMenu;

class JenisMenuController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return JenisMenu::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        return JenisMenu::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show(JenisMenu $JenisMenu)
    {
        return $JenisMenu;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JenisMenu $jenisMenu)
    {
        $jenisMenu->update($request->all());
        return $jenisMenu;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JenisMenu $JenisMenu)
    {
        $JenisMenu->delete();
        return response()->json(['message' => 'Deleted successfully']);
    }
}
