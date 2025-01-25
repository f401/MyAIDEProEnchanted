.class public Lorg/apache/tools/ant/util/Base64Converter;
.super Ljava/lang/Object;
.source "Base64Converter.java"


# static fields
.field private static final ALPHABET:[C

.field private static final BYTE:I = 0x8

.field private static final BYTE_MASK:I = 0xff

.field private static final POS_0_MASK:I = 0x3f

.field private static final POS_1_MASK:I = 0xfc0

.field private static final POS_1_SHIFT:I = 0x6

.field private static final POS_2_MASK:I = 0x3f000

.field private static final POS_2_SHIFT:I = 0xc

.field private static final POS_3_MASK:I = 0xfc0000

.field private static final POS_3_SHIFT:I = 0x12

.field private static final WORD:I = 0x10

.field public static final alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2f

    const/16 v3, 0x2b

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x72

    aput-char v1, v0, v3

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x76

    aput-char v1, v0, v4

    const/16 v1, 0x77

    aput-char v1, v0, v5

    const/16 v1, 0x78

    aput-char v1, v0, v6

    const/16 v1, 0x79

    aput-char v1, v0, v7

    const/16 v1, 0x33

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x34

    aput-char v5, v0, v1

    const/16 v1, 0x35

    aput-char v6, v0, v1

    const/16 v1, 0x36

    aput-char v7, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    aput-char v3, v0, v1

    const/16 v1, 0x3f

    aput-char v4, v0, v1

    sput-object v0, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    .line 52
    sput-object v0, Lorg/apache/tools/ant/util/Base64Converter;->alphabet:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode([B)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    const/high16 v9, 0xfc0000

    const v8, 0x3f000

    const/16 v7, 0x3d

    .line 75
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 81
    :goto_15
    add-int/lit8 v1, v0, 0x3

    array-length v4, p1

    if-gt v1, v4, :cond_5c

    .line 84
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    .line 85
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    .line 86
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 88
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    and-int v6, v0, v9

    shr-int/lit8 v6, v6, 0x12

    aget-char v6, v5, v6

    aput-char v6, v3, v2

    .line 90
    add-int/lit8 v2, v1, 0x1

    and-int v6, v0, v8

    shr-int/lit8 v6, v6, 0xc

    aget-char v6, v5, v6

    aput-char v6, v3, v1

    .line 92
    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v6, v0, 0xfc0

    shr-int/lit8 v6, v6, 0x6

    aget-char v6, v5, v6

    aput-char v6, v3, v2

    .line 94
    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v5, v0

    aput-char v0, v3, v1

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_15

    .line 97
    :cond_5c
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_98

    .line 99
    aget-byte v1, p1, v0

    .line 100
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 101
    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    and-int v5, v0, v9

    shr-int/lit8 v5, v5, 0x12

    aget-char v5, v4, v5

    aput-char v5, v3, v2

    .line 103
    add-int/lit8 v2, v1, 0x1

    and-int v5, v0, v8

    shr-int/lit8 v5, v5, 0xc

    aget-char v5, v4, v5

    aput-char v5, v3, v1

    .line 105
    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v0, v0, 0xfc0

    shr-int/lit8 v0, v0, 0x6

    aget-char v0, v4, v0

    aput-char v0, v3, v2

    .line 109
    aput-char v7, v3, v1

    .line 122
    :cond_92
    :goto_92
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 110
    :cond_98
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_92

    .line 112
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 113
    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    and-int v5, v0, v9

    shr-int/lit8 v5, v5, 0x12

    aget-char v5, v4, v5

    aput-char v5, v3, v2

    .line 115
    add-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v8

    shr-int/lit8 v0, v0, 0xc

    aget-char v0, v4, v0

    aput-char v0, v3, v1

    .line 119
    add-int/lit8 v0, v2, 0x1

    aput-char v7, v3, v2

    .line 120
    aput-char v7, v3, v0

    goto :goto_92
.end method
