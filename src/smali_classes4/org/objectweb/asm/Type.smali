.class public Lorg/objectweb/asm/Type;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lorg/objectweb/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lorg/objectweb/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lorg/objectweb/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lorg/objectweb/asm/Type;

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lorg/objectweb/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lorg/objectweb/asm/Type;

.field public static final METHOD:I = 0xb

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lorg/objectweb/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lorg/objectweb/asm/Type;


# instance fields
.field private final a:I

.field private final b:[C

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/objectweb/asm/Type;->_clinit_()V

    new-instance v0, Lorg/objectweb/asm/Type;

    const/4 v1, 0x0

    const/high16 v2, 0x56050000

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v3, v4, v1, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const/4 v1, 0x2

    const v2, 0x43000601

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const/4 v1, 0x3

    const v2, 0x42000501

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const/4 v1, 0x4

    const v2, 0x53000701

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const/4 v1, 0x5

    const v2, 0x49000001

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const/4 v1, 0x6

    const v2, 0x46020201

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const/4 v1, 0x7

    const v2, 0x4a010102  # 2113600.5f

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    new-instance v0, Lorg/objectweb/asm/Type;

    const/16 v1, 0x8

    const v2, 0x44030302

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/Type;->a:I

    iput-object p2, p0, Lorg/objectweb/asm/Type;->b:[C

    iput p3, p0, Lorg/objectweb/asm/Type;->c:I

    iput p4, p0, Lorg/objectweb/asm/Type;->d:I

    return-void
.end method

.method static _clinit_()V
    .registers 0

    return-void
.end method

.method private static a([CI)Lorg/objectweb/asm/Type;
    .registers 6

    const/16 v3, 0x3b

    const/4 v0, 0x1

    aget-char v1, p0, p1

    packed-switch v1, :pswitch_data_6e

    :pswitch_8  #0x45, 0x47, 0x48, 0x4b, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x54, 0x55, 0x57, 0x58, 0x59
    new-instance v0, Lorg/objectweb/asm/Type;

    const/16 v1, 0xb

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p0, p1, v2}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    :goto_11
    return-object v0

    :pswitch_12  #0x56
    sget-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_15  #0x5a
    sget-object v0, Lorg/objectweb/asm/Type;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_18  #0x43
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_1b  #0x42
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_1e  #0x53
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_21  #0x49
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_24  #0x46
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_27  #0x4a
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :pswitch_2a  #0x44
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_11

    :goto_2d
    :pswitch_2d  #0x5b
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_38
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4b

    add-int/lit8 v0, v0, 0x1

    :goto_42
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_4b

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4b
    move v1, v0

    new-instance v0, Lorg/objectweb/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v2, p0, p1, v1}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    goto :goto_11

    :pswitch_56  #0x4c
    move v1, v0

    :goto_57
    add-int v0, p1, v1

    aget-char v0, p0, v0

    if-eq v0, v3, :cond_61

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    :cond_61
    new-instance v0, Lorg/objectweb/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v2, p0, v3, v1}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    goto :goto_11

    nop

    :pswitch_data_6e
    .packed-switch 0x42
        :pswitch_1b  #00000042
        :pswitch_18  #00000043
        :pswitch_2a  #00000044
        :pswitch_8  #00000045
        :pswitch_24  #00000046
        :pswitch_8  #00000047
        :pswitch_8  #00000048
        :pswitch_21  #00000049
        :pswitch_27  #0000004a
        :pswitch_8  #0000004b
        :pswitch_56  #0000004c
        :pswitch_8  #0000004d
        :pswitch_8  #0000004e
        :pswitch_8  #0000004f
        :pswitch_8  #00000050
        :pswitch_8  #00000051
        :pswitch_8  #00000052
        :pswitch_1e  #00000053
        :pswitch_8  #00000054
        :pswitch_8  #00000055
        :pswitch_12  #00000056
        :pswitch_8  #00000057
        :pswitch_8  #00000058
        :pswitch_8  #00000059
        :pswitch_15  #0000005a
        :pswitch_2d  #0000005b
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/Type;->b:[C

    if-nez v0, :cond_10

    iget v0, p0, Lorg/objectweb/asm/Type;->c:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lorg/objectweb/asm/Type;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/Type;->b:[C

    iget v1, p0, Lorg/objectweb/asm/Type;->c:I

    iget v2, p0, Lorg/objectweb/asm/Type;->d:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_2a
    iget-object v0, p0, Lorg/objectweb/asm/Type;->b:[C

    iget v1, p0, Lorg/objectweb/asm/Type;->c:I

    iget v2, p0, Lorg/objectweb/asm/Type;->d:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_f
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .registers 7

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_10

    const/16 v0, 0x49

    :goto_c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_f
    return-void

    :cond_10
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    const/16 v0, 0x56

    goto :goto_c

    :cond_17
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    const/16 v0, 0x5a

    goto :goto_c

    :cond_1e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_25

    const/16 v0, 0x42

    goto :goto_c

    :cond_25
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2c

    const/16 v0, 0x43

    goto :goto_c

    :cond_2c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_33

    const/16 v0, 0x53

    goto :goto_c

    :cond_33
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3a

    const/16 v0, 0x44

    goto :goto_c

    :cond_3a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_41

    const/16 v0, 0x46

    goto :goto_c

    :cond_41
    const/16 v0, 0x4a

    goto :goto_c

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_54
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_63
    if-ge v1, v3, :cond_76

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_6f

    const/16 v0, 0x2f

    :cond_6f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_63

    :cond_76
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;
    .registers 10

    const/16 v8, 0x29

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v0, v1

    move v2, v3

    :goto_a
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v5, v2

    if-ne v2, v8, :cond_2f

    new-array v4, v0, [Lorg/objectweb/asm/Type;

    move v0, v1

    :goto_13
    aget-char v2, v5, v3

    if-eq v2, v8, :cond_4c

    invoke-static {v5, v3}, Lorg/objectweb/asm/Type;->a([CI)Lorg/objectweb/asm/Type;

    move-result-object v2

    aput-object v2, v4, v0

    aget-object v2, v4, v0

    iget v6, v2, Lorg/objectweb/asm/Type;->d:I

    aget-object v2, v4, v0

    iget v2, v2, Lorg/objectweb/asm/Type;->a:I

    const/16 v7, 0xa

    if-ne v2, v7, :cond_48

    const/4 v2, 0x2

    :goto_2a
    add-int/2addr v2, v6

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2f
    const/16 v6, 0x4c

    if-ne v2, v6, :cond_40

    :goto_33
    add-int/lit8 v2, v4, 0x1

    aget-char v4, v5, v4

    const/16 v6, 0x3b

    if-eq v4, v6, :cond_3d

    move v4, v2

    goto :goto_33

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_40
    const/16 v6, 0x5b

    if-eq v2, v6, :cond_4a

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_a

    :cond_48
    move v2, v1

    goto :goto_2a

    :cond_4a
    move v2, v4

    goto :goto_a

    :cond_4c
    return-object v4
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lorg/objectweb/asm/Type;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lorg/objectweb/asm/Type;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_17

    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lorg/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_17
    return-object v2
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .registers 9

    const/16 v7, 0x5b

    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v1, 0x1

    move v0, v1

    move v2, v1

    :cond_9
    :goto_9
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x29

    if-ne v2, v4, :cond_26

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x56

    if-ne v2, v3, :cond_20

    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    return v0

    :cond_20
    if-eq v2, v5, :cond_24

    if-ne v2, v6, :cond_1c

    :cond_24
    const/4 v1, 0x2

    goto :goto_1c

    :cond_26
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_39

    :goto_2a
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_36

    move v3, v2

    goto :goto_2a

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_39
    if-ne v2, v7, :cond_4c

    move v2, v3

    :goto_3c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_45

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_45
    if-eq v3, v5, :cond_49

    if-ne v3, v6, :cond_9

    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_4c
    if-eq v2, v5, :cond_50

    if-ne v2, v6, :cond_54

    :cond_50
    add-int/lit8 v0, v0, 0x2

    move v2, v3

    goto :goto_9

    :cond_54
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_9
.end method

.method public static getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_f
    array-length v3, v1

    if-ge v0, v3, :cond_1a

    aget-object v3, v1, v0

    invoke-static {v2, v3}, Lorg/objectweb/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    const-string v0, ")V"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lorg/objectweb/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_f
    array-length v3, v1

    if-ge v0, v3, :cond_1a

    aget-object v3, v1, v0

    invoke-static {v2, v3}, Lorg/objectweb/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/objectweb/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethodDescriptor(Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_16

    aget-object v2, p1, v0

    invoke-direct {v2, v1}, Lorg/objectweb/asm/Type;->a(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Type;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodType(Ljava/lang/String;)Lorg/objectweb/asm/Type;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/objectweb/asm/Type;->a([CI)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethodType(Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;
    .registers 3

    invoke-static {p0, p1}, Lorg/objectweb/asm/Type;->getMethodDescriptor(Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v0, v1, v4

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_14

    const/16 v0, 0x9

    :goto_d
    new-instance v2, Lorg/objectweb/asm/Type;

    array-length v3, v1

    invoke-direct {v2, v0, v1, v4, v3}, Lorg/objectweb/asm/Type;-><init>(I[CII)V

    return-object v2

    :cond_14
    const/16 v0, 0xa

    goto :goto_d
.end method

.method public static getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/objectweb/asm/Type;->a([CI)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lorg/objectweb/asm/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/Class;)Lorg/objectweb/asm/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    sget-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    sget-object v0, Lorg/objectweb/asm/Type;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_1b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_22

    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_22
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_29
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_30
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_37
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_3e
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_c

    :cond_41
    invoke-static {p0}, Lorg/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_c
.end method

.method public static getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/objectweb/asm/Type;->a([CI)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Constructor;)Lorg/objectweb/asm/Type;
    .registers 2

    invoke-static {p0}, Lorg/objectweb/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Method;)Lorg/objectweb/asm/Type;
    .registers 2

    invoke-static {p0}, Lorg/objectweb/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lorg/objectweb/asm/Type;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lorg/objectweb/asm/Type;

    iget v2, p0, Lorg/objectweb/asm/Type;->a:I

    iget v3, p1, Lorg/objectweb/asm/Type;->a:I

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget v2, p0, Lorg/objectweb/asm/Type;->a:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    iget v2, p0, Lorg/objectweb/asm/Type;->d:I

    iget v3, p1, Lorg/objectweb/asm/Type;->d:I

    if-eq v2, v3, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget v3, p0, Lorg/objectweb/asm/Type;->c:I

    iget v4, p1, Lorg/objectweb/asm/Type;->c:I

    iget v5, p0, Lorg/objectweb/asm/Type;->d:I

    move v2, v3

    :goto_2a
    add-int v6, v3, v5

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lorg/objectweb/asm/Type;->b:[C

    aget-char v6, v6, v2

    iget-object v7, p1, Lorg/objectweb/asm/Type;->b:[C

    aget-char v7, v7, v4

    if-eq v6, v7, :cond_3a

    move v0, v1

    goto :goto_4

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a
.end method

.method public getArgumentTypes()[Lorg/objectweb/asm/Type;
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentsAndReturnSizes()I
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/objectweb/asm/Type;->a:I

    packed-switch v0, :pswitch_data_56

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :pswitch_7  #0x0
    const-string v0, "void"

    goto :goto_6

    :pswitch_a  #0x1
    const-string v0, "boolean"

    goto :goto_6

    :pswitch_d  #0x2
    const-string v0, "char"

    goto :goto_6

    :pswitch_10  #0x3
    const-string v0, "byte"

    goto :goto_6

    :pswitch_13  #0x4
    const-string v0, "short"

    goto :goto_6

    :pswitch_16  #0x5
    const-string v0, "int"

    goto :goto_6

    :pswitch_19  #0x6
    const-string v0, "float"

    goto :goto_6

    :pswitch_1c  #0x7
    const-string v0, "long"

    goto :goto_6

    :pswitch_1f  #0x8
    const-string v0, "double"

    goto :goto_6

    :pswitch_22  #0x9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result v0

    :goto_33
    if-lez v0, :cond_3d

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_42  #0xa
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/Type;->b:[C

    iget v2, p0, Lorg/objectweb/asm/Type;->c:I

    iget v3, p0, Lorg/objectweb/asm/Type;->d:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_7  #00000000
        :pswitch_a  #00000001
        :pswitch_d  #00000002
        :pswitch_10  #00000003
        :pswitch_13  #00000004
        :pswitch_16  #00000005
        :pswitch_19  #00000006
        :pswitch_1c  #00000007
        :pswitch_1f  #00000008
        :pswitch_22  #00000009
        :pswitch_42  #0000000a
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Type;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .registers 4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/objectweb/asm/Type;->b:[C

    iget v2, p0, Lorg/objectweb/asm/Type;->c:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return v0
.end method

.method public getElementType()Lorg/objectweb/asm/Type;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/Type;->b:[C

    iget v1, p0, Lorg/objectweb/asm/Type;->c:I

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/objectweb/asm/Type;->a([CI)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/Type;->b:[C

    iget v2, p0, Lorg/objectweb/asm/Type;->c:I

    iget v3, p0, Lorg/objectweb/asm/Type;->d:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getOpcode(I)I
    .registers 4

    const/4 v0, 0x4

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4f

    if-ne p1, v1, :cond_17

    :cond_9
    iget-object v1, p0, Lorg/objectweb/asm/Type;->b:[C

    if-nez v1, :cond_15

    iget v0, p0, Lorg/objectweb/asm/Type;->c:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    :cond_15
    add-int/2addr v0, p1

    :goto_16
    return v0

    :cond_17
    iget-object v1, p0, Lorg/objectweb/asm/Type;->b:[C

    if-nez v1, :cond_22

    iget v0, p0, Lorg/objectweb/asm/Type;->c:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    :cond_22
    add-int/2addr v0, p1

    goto :goto_16
.end method

.method public getReturnType()Lorg/objectweb/asm/Type;
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/Type;->b:[C

    if-nez v0, :cond_9

    iget v0, p0, Lorg/objectweb/asm/Type;->c:I

    and-int/lit16 v0, v0, 0xff

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public getSort()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/Type;->a:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/Type;->a:I

    mul-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/objectweb/asm/Type;->a:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1d

    iget v2, p0, Lorg/objectweb/asm/Type;->c:I

    iget v3, p0, Lorg/objectweb/asm/Type;->d:I

    move v1, v2

    :goto_f
    add-int v4, v2, v3

    if-ge v1, v4, :cond_1d

    iget-object v4, p0, Lorg/objectweb/asm/Type;->b:[C

    aget-char v4, v4, v1

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x11

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
