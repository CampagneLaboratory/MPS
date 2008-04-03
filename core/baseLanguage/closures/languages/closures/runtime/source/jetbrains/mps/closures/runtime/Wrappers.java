/*
 * Created Apr 1, 2008 at 8:34:41 PM
 */
package jetbrains.mps.closures.runtime;


/**
 * @author fyodor
 */
public class Wrappers {
    
    public static class _int {
        public int value;
        public _int (int value) {
            this.value = value;
        }
    }
    
    public static class _short {
        public short value;
        public _short (short value) {
            this.value = value;
        }
    }

    public static class _long {
        public long value;
        public _long (long value) {
            this.value = value;
        }
    }
    
    public static class _float {
        public float value;
        public _float (float value) {
            this.value = value;
        }
    }
    
    public static class _double {
        public double value;
        public _double (double value) {
            this.value = value;
        }
    }

    public static class _char {
        public char value;
        public _char (char value) {
            this.value = value;
        }
    }
    
    public static class _byte {
        public byte value;
        public _byte (byte value) {
            this.value = value;
        }
    }

    public static class _boolean {
        public boolean value;
        public _boolean (boolean value) {
            this.value = value;
        }
    }

    public static class _T<T>  {
        public T value;
        public _T (T value) {
            this.value = value;
        }
    }
}

