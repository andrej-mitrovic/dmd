/*
TEST_OUTPUT:
---
fail_compilation/diag_class_alloc.d(13): Error: class allocators are obsolete, consider moving the allocation strategy outside of the class
---
*/

// This test exists to ensure class allocators and deallocators emit an appropriate error message.
// This test can be deleted when class allocators and deallocators are removed from the language.

class C
{
    new(size_t size)         // error message
    {
        return malloc(size);
    }
}
