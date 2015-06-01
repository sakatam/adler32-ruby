require 'minitest/autorun'
require 'adler32'

class Adler32Test < Minitest::Test
  def test_checksum
    # with simple string
    assert_equal '15960400', Adler32.checksum('any string')
    assert_equal 'ee2a2498', Adler32.checksum('ＭＵＬＴＩＢＹＴＥ　ＳＴＲＩＮＧ')
    assert_equal '3e1f3764', Adler32.checksum('鄭駙馬宅宴洞中')
    # empty string
    assert_equal '00000001', Adler32.checksum('')
    # no args
    assert_equal '00000001', Adler32.checksum()

    # long string
    long = 'long'
    17.times { long += long }
    assert_equal 'f8dd32a1', Adler32.checksum(long)

    # with multiple arguments
    assert_equal '017500f9', Adler32.checksum('{}')
    assert_equal '0ffc037b', Adler32.checksum('{}', "kaizen")
    assert_equal '39000615', Adler32.checksum('{}', 'kaizen', 'adler-32')
  end
end
