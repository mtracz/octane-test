<?php

declare(strict_types=1);

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;

class CollectionController extends Controller
{
    public function __invoke(): JsonResponse
    {
        $baseArray = range(0,1000000);

        $filteredArray = array_filter($baseArray, function (int $value, int $key): int {
            return $value % 2;
        }, ARRAY_FILTER_USE_BOTH);

        $flippedArray = array_flip($filteredArray);

        $result = array_rand($flippedArray, 10000);

        return response()->json($result);
    }
}
