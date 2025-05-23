.class public interface abstract Lzeroaicy/org/objectweb/asm/Opcodes;
.super Ljava/lang/Object;
.source "Opcodes.java"


# static fields
.field public static final AALOAD:I = 0x32

.field public static final AASTORE:I = 0x53

.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_DEPRECATED:I = 0x20000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_MANDATED:I = 0x8000

.field public static final ACC_MODULE:I = 0x8000

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_OPEN:I = 0x20

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_RECORD:I = 0x10000

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STATIC_PHASE:I = 0x40

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_TRANSITIVE:I = 0x20

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final ACONST_NULL:I = 0x1

.field public static final ALOAD:I = 0x19

.field public static final ANEWARRAY:I = 0xbd

.field public static final ARETURN:I = 0xb0

.field public static final ARRAYLENGTH:I = 0xbe

.field public static final ASM10_EXPERIMENTAL:I = 0x10a0000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ASM4:I = 0x40000

.field public static final ASM5:I = 0x50000

.field public static final ASM6:I = 0x60000

.field public static final ASM7:I = 0x70000

.field public static final ASM8:I = 0x80000

.field public static final ASM9:I = 0x90000

.field public static final ASTORE:I = 0x3a

.field public static final ATHROW:I = 0xbf

.field public static final BALOAD:I = 0x33

.field public static final BASTORE:I = 0x54

.field public static final BIPUSH:I = 0x10

.field public static final CALOAD:I = 0x34

.field public static final CASTORE:I = 0x55

.field public static final CHECKCAST:I = 0xc0

.field public static final D2F:I = 0x90

.field public static final D2I:I = 0x8e

.field public static final D2L:I = 0x8f

.field public static final DADD:I = 0x63

.field public static final DALOAD:I = 0x31

.field public static final DASTORE:I = 0x52

.field public static final DCMPG:I = 0x98

.field public static final DCMPL:I = 0x97

.field public static final DCONST_0:I = 0xe

.field public static final DCONST_1:I = 0xf

.field public static final DDIV:I = 0x6f

.field public static final DLOAD:I = 0x18

.field public static final DMUL:I = 0x6b

.field public static final DNEG:I = 0x77

.field public static final DOUBLE:Ljava/lang/Integer;

.field public static final DREM:I = 0x73

.field public static final DRETURN:I = 0xaf

.field public static final DSTORE:I = 0x39

.field public static final DSUB:I = 0x67

.field public static final DUP:I = 0x59

.field public static final DUP2:I = 0x5c

.field public static final DUP2_X1:I = 0x5d

.field public static final DUP2_X2:I = 0x5e

.field public static final DUP_X1:I = 0x5a

.field public static final DUP_X2:I = 0x5b

.field public static final F2D:I = 0x8d

.field public static final F2I:I = 0x8b

.field public static final F2L:I = 0x8c

.field public static final FADD:I = 0x62

.field public static final FALOAD:I = 0x30

.field public static final FASTORE:I = 0x51

.field public static final FCMPG:I = 0x96

.field public static final FCMPL:I = 0x95

.field public static final FCONST_0:I = 0xb

.field public static final FCONST_1:I = 0xc

.field public static final FCONST_2:I = 0xd

.field public static final FDIV:I = 0x6e

.field public static final FLOAD:I = 0x17

.field public static final FLOAT:Ljava/lang/Integer;

.field public static final FMUL:I = 0x6a

.field public static final FNEG:I = 0x76

.field public static final FREM:I = 0x72

.field public static final FRETURN:I = 0xae

.field public static final FSTORE:I = 0x38

.field public static final FSUB:I = 0x66

.field public static final F_APPEND:I = 0x1

.field public static final F_CHOP:I = 0x2

.field public static final F_FULL:I = 0x0

.field public static final F_NEW:I = -0x1

.field public static final F_SAME:I = 0x3

.field public static final F_SAME1:I = 0x4

.field public static final GETFIELD:I = 0xb4

.field public static final GETSTATIC:I = 0xb2

.field public static final GOTO:I = 0xa7

.field public static final H_GETFIELD:I = 0x1

.field public static final H_GETSTATIC:I = 0x2

.field public static final H_INVOKEINTERFACE:I = 0x9

.field public static final H_INVOKESPECIAL:I = 0x7

.field public static final H_INVOKESTATIC:I = 0x6

.field public static final H_INVOKEVIRTUAL:I = 0x5

.field public static final H_NEWINVOKESPECIAL:I = 0x8

.field public static final H_PUTFIELD:I = 0x3

.field public static final H_PUTSTATIC:I = 0x4

.field public static final I2B:I = 0x91

.field public static final I2C:I = 0x92

.field public static final I2D:I = 0x87

.field public static final I2F:I = 0x86

.field public static final I2L:I = 0x85

.field public static final I2S:I = 0x93

.field public static final IADD:I = 0x60

.field public static final IALOAD:I = 0x2e

.field public static final IAND:I = 0x7e

.field public static final IASTORE:I = 0x4f

.field public static final ICONST_0:I = 0x3

.field public static final ICONST_1:I = 0x4

.field public static final ICONST_2:I = 0x5

.field public static final ICONST_3:I = 0x6

.field public static final ICONST_4:I = 0x7

.field public static final ICONST_5:I = 0x8

.field public static final ICONST_M1:I = 0x2

.field public static final IDIV:I = 0x6c

.field public static final IFEQ:I = 0x99

.field public static final IFGE:I = 0x9c

.field public static final IFGT:I = 0x9d

.field public static final IFLE:I = 0x9e

.field public static final IFLT:I = 0x9b

.field public static final IFNE:I = 0x9a

.field public static final IFNONNULL:I = 0xc7

.field public static final IFNULL:I = 0xc6

.field public static final IF_ACMPEQ:I = 0xa5

.field public static final IF_ACMPNE:I = 0xa6

.field public static final IF_ICMPEQ:I = 0x9f

.field public static final IF_ICMPGE:I = 0xa2

.field public static final IF_ICMPGT:I = 0xa3

.field public static final IF_ICMPLE:I = 0xa4

.field public static final IF_ICMPLT:I = 0xa1

.field public static final IF_ICMPNE:I = 0xa0

.field public static final IINC:I = 0x84

.field public static final ILOAD:I = 0x15

.field public static final IMUL:I = 0x68

.field public static final INEG:I = 0x74

.field public static final INSTANCEOF:I = 0xc1

.field public static final INTEGER:Ljava/lang/Integer;

.field public static final INVOKEDYNAMIC:I = 0xba

.field public static final INVOKEINTERFACE:I = 0xb9

.field public static final INVOKESPECIAL:I = 0xb7

.field public static final INVOKESTATIC:I = 0xb8

.field public static final INVOKEVIRTUAL:I = 0xb6

.field public static final IOR:I = 0x80

.field public static final IREM:I = 0x70

.field public static final IRETURN:I = 0xac

.field public static final ISHL:I = 0x78

.field public static final ISHR:I = 0x7a

.field public static final ISTORE:I = 0x36

.field public static final ISUB:I = 0x64

.field public static final IUSHR:I = 0x7c

.field public static final IXOR:I = 0x82

.field public static final JSR:I = 0xa8

.field public static final L2D:I = 0x8a

.field public static final L2F:I = 0x89

.field public static final L2I:I = 0x88

.field public static final LADD:I = 0x61

.field public static final LALOAD:I = 0x2f

.field public static final LAND:I = 0x7f

.field public static final LASTORE:I = 0x50

.field public static final LCMP:I = 0x94

.field public static final LCONST_0:I = 0x9

.field public static final LCONST_1:I = 0xa

.field public static final LDC:I = 0x12

.field public static final LDIV:I = 0x6d

.field public static final LLOAD:I = 0x16

.field public static final LMUL:I = 0x69

.field public static final LNEG:I = 0x75

.field public static final LONG:Ljava/lang/Integer;

.field public static final LOOKUPSWITCH:I = 0xab

.field public static final LOR:I = 0x81

.field public static final LREM:I = 0x71

.field public static final LRETURN:I = 0xad

.field public static final LSHL:I = 0x79

.field public static final LSHR:I = 0x7b

.field public static final LSTORE:I = 0x37

.field public static final LSUB:I = 0x65

.field public static final LUSHR:I = 0x7d

.field public static final LXOR:I = 0x83

.field public static final MONITORENTER:I = 0xc2

.field public static final MONITOREXIT:I = 0xc3

.field public static final MULTIANEWARRAY:I = 0xc5

.field public static final NEW:I = 0xbb

.field public static final NEWARRAY:I = 0xbc

.field public static final NOP:I = 0x0

.field public static final NULL:Ljava/lang/Integer;

.field public static final POP:I = 0x57

.field public static final POP2:I = 0x58

.field public static final PUTFIELD:I = 0xb5

.field public static final PUTSTATIC:I = 0xb3

.field public static final RET:I = 0xa9

.field public static final RETURN:I = 0xb1

.field public static final SALOAD:I = 0x35

.field public static final SASTORE:I = 0x56

.field public static final SIPUSH:I = 0x11

.field public static final SOURCE_DEPRECATED:I = 0x100

.field public static final SOURCE_MASK:I = 0x100

.field public static final SWAP:I = 0x5f

.field public static final TABLESWITCH:I = 0xaa

.field public static final TOP:Ljava/lang/Integer;

.field public static final T_BOOLEAN:I = 0x4

.field public static final T_BYTE:I = 0x8

.field public static final T_CHAR:I = 0x5

.field public static final T_DOUBLE:I = 0x7

.field public static final T_FLOAT:I = 0x6

.field public static final T_INT:I = 0xa

.field public static final T_LONG:I = 0xb

.field public static final T_SHORT:I = 0x9

.field public static final UNINITIALIZED_THIS:Ljava/lang/Integer;

.field public static final V10:I = 0x36

.field public static final V11:I = 0x37

.field public static final V12:I = 0x38

.field public static final V13:I = 0x39

.field public static final V14:I = 0x3a

.field public static final V15:I = 0x3b

.field public static final V16:I = 0x3c

.field public static final V17:I = 0x3d

.field public static final V18:I = 0x3e

.field public static final V19:I = 0x3f

.field public static final V1_1:I = 0x3002d

.field public static final V1_2:I = 0x2e

.field public static final V1_3:I = 0x2f

.field public static final V1_4:I = 0x30

.field public static final V1_5:I = 0x31

.field public static final V1_6:I = 0x32

.field public static final V1_7:I = 0x33

.field public static final V1_8:I = 0x34

.field public static final V20:I = 0x40

.field public static final V9:I = 0x35

.field public static final V_PREVIEW:I = -0x10000


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    return-void
.end method
