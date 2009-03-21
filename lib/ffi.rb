require 'ffi/ffi'

# Patch any missing methods

module FFI
  class Pointer

    def write_pointer(ptr)
      put_pointer(0, ptr)
    end unless method_defined?(:write_pointer)

    def read_array_of_pointer(length)
      read_array_of_type(:pointer, :read_pointer, length)
    end unless method_defined?(:read_array_of_pointer)

    def write_array_of_pointer(ary)
      write_array_of_type(:pointer, :write_pointer, ary)
    end unless method_defined?(:write_array_of_pointer)

  end
end