import http from 'k6/http';
import { dummyFunction } from '../utils/functions.js';

export default function () {
    // This is a simple K6 test for Journey 2
    const response = http.get('https://example.com');
    console.log(dummyFunction()); // Using the dummy function
}
