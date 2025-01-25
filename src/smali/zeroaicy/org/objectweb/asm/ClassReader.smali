.class public Lzeroaicy/org/objectweb/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final EXPAND_ASM_INSNS:I = 0x100

.field public static final EXPAND_FRAMES:I = 0x8

.field private static final INPUT_STREAM_DATA_CHUNK_SIZE:I = 0x1000

.field private static final MAX_BUFFER_SIZE:I = 0x100000

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field public final b:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final bootstrapMethodOffsets:[I

.field final classFileBuffer:[B

.field private final constantDynamicValues:[Lzeroaicy/org/objectweb/asm/ConstantDynamic;

.field private final constantUtf8Values:[Ljava/lang/String;

.field private final cpInfoOffsets:[I

.field public final header:I

.field private final maxStringLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 167
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    .line 181
    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([BIZ)V

    return-void
.end method

.method constructor <init>([BIZ)V
    .registers 13

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 195
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->b:[B

    if-eqz p3, :cond_2d

    add-int/lit8 p3, p2, 0x6

    .line 198
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_14

    goto :goto_2d

    .line 199
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unsupported class file major version "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_2d
    :goto_2d
    add-int/lit8 p3, p2, 0x8

    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    .line 205
    new-array v0, p3, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    .line 206
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    add-int/lit8 p2, p2, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_42
    if-lt v4, p3, :cond_61

    .line 267
    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    .line 269
    iput p2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    const/4 p1, 0x0

    if-eqz v2, :cond_4e

    .line 272
    new-array p2, p3, [Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    goto :goto_52

    :cond_4e
    move-object p2, p1

    check-cast p2, [Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    move-object p2, p1

    :goto_52
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantDynamicValues:[Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    if-eqz v3, :cond_5b

    .line 275
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readBootstrapMethodsAttribute(I)[I

    move-result-object p1

    goto :goto_5e

    :cond_5b
    move-object p2, p1

    check-cast p2, [I

    :goto_5e
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    return-void

    .line 218
    :cond_61
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, p2, 0x1

    aput v7, v5, v4

    .line 220
    aget-byte v5, p1, p2

    const/4 v8, 0x3

    packed-switch v5, :pswitch_data_90

    .line 263
    :pswitch_6f  #0x2, 0xd, 0xe
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_75  #0x12
    goto :goto_77

    :pswitch_76  #0x11
    const/4 v2, 0x1

    :goto_77
    const/4 v3, 0x1

    goto :goto_80

    :pswitch_79  #0xf
    const/4 v8, 0x4

    goto :goto_8b

    :pswitch_7b  #0x5, 0x6
    add-int/lit8 v4, v4, 0x2

    const/16 v5, 0x9

    goto :goto_8d

    :goto_80
    :pswitch_80  #0x3, 0x4, 0x9, 0xa, 0xb, 0xc
    const/4 v5, 0x5

    move v4, v6

    goto :goto_8d

    .line 244
    :pswitch_83  #0x1
    invoke-virtual {p0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/2addr v8, v4

    if-le v8, v0, :cond_8b

    move v0, v8

    .line 263
    :cond_8b
    :goto_8b
    :pswitch_8b  #0x7, 0x8, 0x10, 0x13, 0x14
    move v4, v6

    move v5, v8

    .line 244
    :goto_8d
    add-int/2addr p2, v5

    goto :goto_42

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_83  #00000001
        :pswitch_6f  #00000002
        :pswitch_80  #00000003
        :pswitch_80  #00000004
        :pswitch_7b  #00000005
        :pswitch_7b  #00000006
        :pswitch_8b  #00000007
        :pswitch_8b  #00000008
        :pswitch_80  #00000009
        :pswitch_80  #0000000a
        :pswitch_80  #0000000b
        :pswitch_80  #0000000c
        :pswitch_6f  #0000000d
        :pswitch_6f  #0000000e
        :pswitch_79  #0000000f
        :pswitch_8b  #00000010
        :pswitch_76  #00000011
        :pswitch_75  #00000012
        :pswitch_8b  #00000013
        :pswitch_8b  #00000014
    .end packed-switch
.end method

.method private static computeBufferSize(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_b

    const/16 p0, 0x1000

    return p0

    .line 352
    :cond_b
    const/high16 v0, 0x100000

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeImplicitFrame(Lzeroaicy/org/objectweb/asm/Context;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Context;",
            ")V"
        }
    .end annotation

    .line 3202
    iget-object v0, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 3203
    iget-object v1, p1, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 3205
    iget v2, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_28

    .line 3206
    const-string v2, "<init>"

    iget-object v5, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3207
    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_27

    .line 3209
    :cond_1b
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v2, v2, 0x2

    iget-object v5, p1, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    invoke-virtual {p0, v2, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_27
    const/4 v4, 0x1

    :cond_28
    const/4 v2, 0x1

    :goto_29
    add-int/lit8 v5, v2, 0x1

    .line 3217
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    if-eq v6, v7, :cond_96

    const/16 v7, 0x3b

    const/16 v8, 0x4c

    if-eq v6, v8, :cond_81

    const/16 v9, 0x53

    if-eq v6, v9, :cond_7c

    const/16 v9, 0x49

    if-eq v6, v9, :cond_7c

    const/16 v9, 0x4a

    if-eq v6, v9, :cond_77

    const/16 v9, 0x5a

    if-eq v6, v9, :cond_7c

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_58

    packed-switch v6, :pswitch_data_9e

    .line 3257
    iput v4, p1, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    return-void

    .line 3232
    :pswitch_53  #0x44
    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_9a

    .line 3235
    :cond_58
    :goto_58
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_74

    .line 3238
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_6b

    :cond_64
    add-int/2addr v5, v3

    .line 3240
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_64

    :cond_6b
    add-int/2addr v5, v3

    .line 3244
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v2, v5

    goto :goto_9b

    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 3229
    :cond_77
    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_9a

    .line 3223
    :cond_7c
    :pswitch_7c  #0x42, 0x43
    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_9a

    :cond_81
    move v2, v5

    .line 3249
    :goto_82
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_93

    .line 3252
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 3226
    :cond_96
    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v2, v1, v4

    .line 3223
    :goto_9a
    move v2, v5

    :goto_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :pswitch_data_9e
    .packed-switch 0x42
        :pswitch_7c  #00000042
        :pswitch_7c  #00000043
        :pswitch_53  #00000044
    .end packed-switch
.end method

.method private createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 2713
    aget-object v0, p2, p1

    if-nez v0, :cond_f

    .line 2714
    invoke-virtual {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object p1

    iget-short p2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    iput-short p2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    :cond_f
    return-void
.end method

.method private createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;
    .registers 3

    .line 2699
    invoke-virtual {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object p1

    .line 2700
    iget-short p2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 p2, p2, -0x2

    int-to-short p2, p2

    iput-short p2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    return-object p1
.end method

.method private getTypeAnnotationBytecodeOffset([II)I
    .registers 5

    if-eqz p1, :cond_19

    .line 2841
    array-length v0, p1

    if-ge p2, v0, :cond_19

    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_10

    goto :goto_19

    .line 2846
    :cond_10
    aget p1, p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    return p1

    :cond_19
    :goto_19
    const/4 p1, -0x1

    return p1
.end method

.method private readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;
    .registers 19

    move-object v0, p1

    move-object v1, p2

    const/4 v2, 0x0

    .line 3535
    :goto_3
    array-length v3, v0

    if-lt v2, v3, :cond_1c

    .line 3539
    new-instance v4, Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-direct {v4, p2}, Lzeroaicy/org/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [C

    check-cast v0, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v4 .. v10}, Lzeroaicy/org/objectweb/asm/Attribute;->read(Lzeroaicy/org/objectweb/asm/ClassReader;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    return-object v0

    .line 3533
    :cond_1c
    aget-object v3, v0, v2

    .line 3534
    iget-object v4, v3, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3535
    move-object v1, v3

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lzeroaicy/org/objectweb/asm/Attribute;->read(Lzeroaicy/org/objectweb/asm/ClassReader;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    return-object v0

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private readBootstrapMethodsAttribute(I)[I
    .registers 8

    .line 3479
    new-array p1, p1, [C

    .line 3480
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v0

    .line 3481
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_c
    if-lez v1, :cond_43

    .line 3483
    invoke-virtual {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 3484
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x6

    .line 3486
    sget-object v5, Lzeroaicy/org/objectweb/asm/Constants;->BOOTSTRAP_METHODS:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3488
    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v5, v2, [I

    add-int/lit8 v0, v0, 0x8

    const/4 p1, 0x0

    :goto_2b
    if-lt p1, v2, :cond_2e

    return-object v5

    .line 3492
    :cond_2e
    aput v0, v5, p1

    .line 3495
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    :cond_3e
    add-int v0, v4, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3502
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_4a

    :goto_49
    throw p1

    :goto_4a
    goto :goto_49
.end method

.method private readCode(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;I)V
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/MethodVisitor;",
            "Lzeroaicy/org/objectweb/asm/Context;",
            "I)V"
        }
    .end annotation

    .line 1543
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v12, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 1544
    iget-object v13, v10, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 1545
    invoke-virtual {v8, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    .line 1546
    add-int/lit8 v0, v11, 0x2

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    .line 1547
    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v16, v11, 0x8

    .line 1549
    iget-object v0, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    array-length v0, v0

    sub-int v0, v0, v16

    if-gt v7, v0, :cond_9c0

    add-int v6, v16, v7

    .line 1556
    add-int/lit8 v0, v7, 0x1

    new-array v5, v0, [Lzeroaicy/org/objectweb/asm/Label;

    iput-object v5, v10, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    move/from16 v0, v16

    :goto_2f
    const/16 v2, 0x8

    if-lt v0, v6, :cond_8f1

    .line 1853
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_39
    if-gtz v1, :cond_8a5

    .line 1881
    const/4 v1, 0x0

    move-object/from16 v17, v1

    check-cast v17, [I

    .line 1887
    move-object/from16 v17, v1

    check-cast v17, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1889
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x1

    :goto_5a
    if-gtz v17, :cond_757

    .line 1985
    iget v0, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/2addr v0, v2

    if-nez v0, :cond_63

    const/4 v11, 0x0

    goto :goto_64

    :cond_63
    const/4 v11, 0x1

    :goto_64
    const/4 v0, -0x1

    if-eqz v21, :cond_a7

    .line 1990
    iput v0, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    .line 1991
    iput v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 1992
    iput v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 1993
    iput v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 1994
    new-array v0, v15, [Ljava/lang/Object;

    iput-object v0, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 1995
    iput v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    .line 1996
    new-array v0, v14, [Ljava/lang/Object;

    iput-object v0, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    if-eqz v11, :cond_7e

    .line 1998
    invoke-direct {v8, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->computeImplicitFrame(Lzeroaicy/org/objectweb/asm/Context;)V

    :cond_7e
    move/from16 v0, v21

    :goto_80
    add-int/lit8 v4, v3, -0x2

    if-lt v0, v4, :cond_85

    goto :goto_a7

    .line 2008
    :cond_85
    aget-byte v4, v12, v0

    if-ne v4, v2, :cond_a0

    .line 2009
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v8, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    if-ltz v4, :cond_a0

    if-ge v4, v7, :cond_a0

    .line 2010
    add-int v17, v16, v4

    aget-byte v2, v12, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v1, 0xbb

    if-ne v2, v1, :cond_a0

    .line 2014
    invoke-direct {v8, v4, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    :cond_a0
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    goto :goto_80

    :cond_a7
    :goto_a7
    if-eqz v11, :cond_d5

    .line 2019
    iget v0, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_cd

    .line 2026
    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move v1, v2

    const/16 v28, 0x8

    move v2, v15

    move/from16 v31, v3

    move-object v3, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v5

    move-object/from16 v5, v29

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_dc

    .line 2019
    :cond_cd
    move/from16 v31, v3

    move-object/from16 v18, v12

    const/16 v28, 0x8

    move-object v12, v5

    goto :goto_dc

    .line 2014
    :cond_d5
    move/from16 v31, v3

    move-object/from16 v18, v12

    const/16 v28, 0x8

    move-object v12, v5

    .line 2036
    :goto_dc
    move-object/from16 v5, v24

    const/4 v4, 0x0

    invoke-direct {v8, v5, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v0

    .line 2042
    move-object/from16 v3, v23

    invoke-direct {v8, v3, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v1

    .line 2051
    iget v2, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_f4

    const/16 v2, 0x21

    const/16 v17, 0x21

    goto :goto_f6

    :cond_f4
    const/16 v17, 0x0

    :goto_f6
    move/from16 v22, v1

    move-object v4, v9

    move/from16 v2, v16

    move/from16 v1, v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v21, v0

    const/4 v0, 0x0

    :goto_104
    if-lt v2, v6, :cond_27f

    .line 2560
    aget-object v0, v12, v7

    if-eqz v0, :cond_10d

    .line 2561
    invoke-virtual {v4, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_10d
    move/from16 v0, v20

    if-eqz v0, :cond_1c9

    .line 2565
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1c6

    move/from16 v1, v19

    if-eqz v1, :cond_146

    .line 2569
    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    new-array v4, v2, [I

    add-int/lit8 v19, v1, 0x2

    move/from16 v1, v19

    :goto_127
    if-gtz v2, :cond_12b

    move-object v7, v4

    goto :goto_147

    .line 2574
    :cond_12b
    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v1, 0x6

    aput v7, v4, v6

    .line 2575
    add-int/lit8 v6, v2, -0x2

    add-int/lit8 v7, v1, 0x8

    invoke-virtual {v8, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v2, v2, -0x3

    .line 2576
    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aput v6, v4, v2

    add-int/lit8 v1, v1, 0xa

    goto :goto_127

    :cond_146
    const/4 v7, 0x0

    .line 2580
    :goto_147
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v20, v0, 0x2

    move v11, v1

    move/from16 v6, v20

    :goto_150
    if-gtz v11, :cond_156

    move-object v9, v3

    move-object v7, v5

    goto/16 :goto_1cb

    .line 2583
    :cond_156
    invoke-virtual {v8, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2584
    add-int/lit8 v1, v6, 0x2

    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 2585
    add-int/lit8 v2, v6, 0x4

    invoke-virtual {v8, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 2586
    add-int/lit8 v4, v6, 0x6

    invoke-virtual {v8, v4, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 2587
    move-object/from16 v19, v3

    add-int/lit8 v3, v6, 0x8

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 2589
    const/4 v9, 0x0

    move-object/from16 v16, v9

    check-cast v16, Ljava/lang/String;

    if-eqz v7, :cond_19a

    const/4 v9, 0x0

    .line 2591
    :goto_17c
    move-object/from16 v20, v5

    array-length v5, v7

    if-lt v9, v5, :cond_182

    goto :goto_19c

    .line 2592
    :cond_182
    aget v5, v7, v9

    if-ne v5, v0, :cond_195

    add-int/lit8 v5, v9, 0x1

    aget v5, v7, v5

    if-ne v5, v3, :cond_195

    .line 2593
    add-int/lit8 v9, v9, 0x2

    aget v5, v7, v9

    invoke-virtual {v8, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    goto :goto_19d

    :cond_195
    add-int/lit8 v9, v9, 0x3

    move-object/from16 v5, v20

    goto :goto_17c

    .line 2589
    :cond_19a
    move-object/from16 v20, v5

    .line 2593
    :goto_19c
    const/4 v5, 0x0

    .line 2598
    :goto_19d
    aget-object v9, v12, v0

    add-int/2addr v0, v1

    aget-object v16, v12, v0

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v4

    move/from16 v17, v3

    move-object/from16 v4, v19

    move-object v3, v5

    move-object v5, v4

    move-object v4, v9

    move-object v9, v5

    move-object/from16 p3, v7

    move-object/from16 v7, v20

    move-object/from16 v5, v16

    move/from16 v20, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V

    add-int/lit8 v6, v20, 0xa

    add-int/lit8 v11, v11, -0x1

    move-object v5, v7

    move-object v3, v9

    move-object/from16 v9, p1

    move-object/from16 v7, p3

    goto :goto_150

    .line 2565
    :cond_1c6
    move-object v9, v3

    move-object v7, v5

    goto :goto_1cb

    .line 2561
    :cond_1c9
    move-object v9, v3

    move-object v7, v5

    .line 2580
    :goto_1cb
    nop

    .line 2598
    const/16 v11, 0x41

    const/16 v12, 0x40

    if-eqz v7, :cond_21c

    const/4 v6, 0x0

    .line 2615
    :goto_1d3
    array-length v0, v7

    if-lt v6, v0, :cond_1d8

    const/4 v7, 0x1

    goto :goto_21d

    .line 2605
    :cond_1d8
    aget v0, v7, v6

    .line 2606
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    if-eq v1, v12, :cond_1e9

    if-ne v1, v11, :cond_1e3

    goto :goto_1e9

    :cond_1e3
    move/from16 v18, v6

    move-object/from16 v34, v7

    const/4 v7, 0x1

    goto :goto_217

    .line 2610
    :cond_1e9
    :goto_1e9
    invoke-direct {v8, v10, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v5

    .line 2612
    invoke-virtual {v8, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    .line 2615
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v2, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v3, v10, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    iget-object v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v10, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/16 v17, 0x1

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v19, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v34, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    add-int/lit8 v5, v19, 0x2

    const/4 v7, 0x1

    invoke-direct {v8, v0, v5, v7, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    :goto_217
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v7, v34

    goto :goto_1d3

    .line 2598
    :cond_21c
    const/4 v7, 0x1

    .line 2615
    :goto_21d
    if-eqz v9, :cond_269

    const/4 v6, 0x0

    .line 2643
    :goto_220
    array-length v0, v9

    if-lt v6, v0, :cond_224

    goto :goto_269

    .line 2633
    :cond_224
    aget v0, v9, v6

    .line 2634
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    if-eq v1, v12, :cond_235

    if-ne v1, v11, :cond_22f

    goto :goto_235

    :cond_22f
    move/from16 v33, v6

    move-object/from16 v20, v9

    const/4 v9, 0x1

    goto :goto_263

    .line 2638
    :cond_235
    :goto_235
    invoke-direct {v8, v10, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v5

    .line 2640
    invoke-virtual {v8, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    .line 2643
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v2, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v3, v10, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    iget-object v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v10, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v19, v5

    move-object/from16 v5, v18

    move/from16 v33, v6

    move-object/from16 v6, v16

    move-object/from16 v20, v9

    const/4 v9, 0x1

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    add-int/lit8 v5, v19, 0x2

    invoke-direct {v8, v0, v5, v9, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    :goto_263
    add-int/lit8 v6, v33, 0x1

    move-object/from16 v9, v20

    const/4 v7, 0x1

    goto :goto_220

    :cond_269
    :goto_269
    move-object/from16 v0, v25

    :goto_26b
    if-nez v0, :cond_273

    .line 2669
    move-object/from16 v5, p1

    invoke-virtual {v5, v14, v15}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    .line 2662
    :cond_273
    move-object/from16 v5, p1

    const/4 v3, 0x0

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 2663
    iput-object v3, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 2664
    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object v0, v1

    goto :goto_26b

    :cond_27f
    move-object/from16 v34, v5

    move-object v5, v9

    move/from16 v27, v20

    const/4 v9, 0x1

    move-object/from16 v20, v3

    const/4 v3, 0x0

    sub-int v9, v2, v16

    .line 2059
    aget-object v3, v12, v9

    if-eqz v3, :cond_29d

    .line 2061
    move/from16 p3, v0

    iget v0, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_298

    const/4 v0, 0x0

    goto :goto_299

    :cond_298
    const/4 v0, 0x1

    :goto_299
    invoke-virtual {v3, v4, v0}, Lzeroaicy/org/objectweb/asm/Label;->accept(Lzeroaicy/org/objectweb/asm/MethodVisitor;Z)V

    goto :goto_29f

    .line 2059
    :cond_29d
    move/from16 p3, v0

    .line 2061
    :goto_29f
    move/from16 v0, p3

    move-object v3, v4

    move v4, v1

    :goto_2a3
    if-eqz v4, :cond_34e

    .line 2065
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    if-eq v1, v9, :cond_2c2

    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    move/from16 v29, v6

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2c5

    move/from16 v35, v2

    move-object/from16 v37, v3

    move v6, v4

    move/from16 v32, v14

    move/from16 v30, v15

    move/from16 v14, v26

    const/16 v26, 0x0

    move-object v15, v5

    move/from16 v5, v31

    goto/16 :goto_360

    :cond_2c2
    move/from16 v29, v6

    const/4 v6, -0x1

    .line 2070
    :cond_2c5
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    if-eq v1, v6, :cond_327

    move/from16 v1, v26

    if-eqz v1, :cond_301

    if-eqz v11, :cond_2db

    move/from16 v35, v2

    move v6, v4

    move/from16 v32, v14

    move/from16 v30, v15

    const/16 v26, 0x0

    move v14, v1

    move-object v15, v5

    goto :goto_30c

    .line 2079
    :cond_2db
    iget v3, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    iget v0, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    iget-object v6, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move/from16 p3, v4

    iget v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    iget-object v5, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v32, v14

    move v14, v1

    move v1, v3

    move/from16 v35, v2

    move/from16 v2, v26

    const/16 v26, 0x0

    move-object v3, v6

    move/from16 v6, p3

    move/from16 v30, v15

    move-object/from16 v15, p1

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move-object v5, v15

    goto :goto_324

    .line 2070
    :cond_301
    move/from16 v35, v2

    move v6, v4

    move/from16 v32, v14

    move/from16 v30, v15

    const/16 v26, 0x0

    move v14, v1

    move-object v15, v5

    .line 2072
    :goto_30c
    const/4 v1, -0x1

    iget v2, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    iget-object v4, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    iget v5, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    iget-object v0, v10, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v37, v3

    move-object v3, v4

    move v4, v5

    move-object/from16 v5, v36

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move-object/from16 v5, v37

    :goto_324
    move-object v3, v5

    const/4 v0, 0x0

    goto :goto_335

    .line 2070
    :cond_327
    move/from16 v35, v2

    move-object/from16 v37, v3

    move v6, v4

    move/from16 v32, v14

    move/from16 v30, v15

    move/from16 v14, v26

    const/16 v26, 0x0

    move-object v15, v5

    .line 2072
    :goto_335
    move/from16 v5, v31

    if-ge v6, v5, :cond_33e

    .line 2091
    invoke-direct {v8, v6, v14, v11, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStackMapFrame(IZZLzeroaicy/org/objectweb/asm/Context;)I

    move-result v4

    goto :goto_33f

    :cond_33e
    const/4 v4, 0x0

    :goto_33f
    move/from16 v31, v5

    move/from16 v26, v14

    move-object v5, v15

    move/from16 v6, v29

    move/from16 v15, v30

    move/from16 v14, v32

    move/from16 v2, v35

    goto/16 :goto_2a3

    .line 2061
    :cond_34e
    move/from16 v35, v2

    move-object/from16 v37, v3

    move/from16 v29, v6

    move/from16 v32, v14

    move/from16 v30, v15

    move/from16 v14, v26

    const/16 v26, 0x0

    move v6, v4

    move-object v15, v5

    move/from16 v5, v31

    .line 2091
    :goto_360
    if-eqz v0, :cond_382

    .line 2101
    iget v0, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_37d

    .line 2102
    move-object/from16 v1, v26

    check-cast v1, [Ljava/lang/Object;

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v36, v5

    move-object/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_37f

    .line 2101
    :cond_37d
    move/from16 v36, v5

    .line 2102
    :goto_37f
    const/16 v31, 0x0

    goto :goto_386

    .line 2091
    :cond_382
    move/from16 v36, v5

    move/from16 v31, v0

    .line 2108
    :goto_386
    aget-byte v0, v18, v35

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0xc8

    packed-switch v5, :pswitch_data_9c8

    .line 2501
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2347
    :pswitch_395  #0xdc
    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/2addr v1, v9

    aget-object v1, v12, v1

    move-object/from16 v4, v37

    invoke-virtual {v4, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v2, v35, 0x5

    move/from16 p3, v6

    move/from16 v37, v7

    move/from16 v38, v11

    move/from16 v1, v21

    move/from16 v3, v24

    const/4 v0, 0x1

    move-object v11, v4

    goto/16 :goto_6a0

    :pswitch_3b3  #0xca, 0xcb, 0xcc, 0xcd, 0xce, 0xcf, 0xd0, 0xd1, 0xd2, 0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xdb
    move-object/from16 v4, v37

    const/16 v1, 0xda

    if-ge v5, v1, :cond_3bc

    add-int/lit8 v5, v5, -0x31

    goto :goto_3be

    :cond_3bc
    add-int/lit8 v5, v5, -0x14

    .line 2326
    :goto_3be
    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/2addr v1, v9

    aget-object v1, v12, v1

    const/16 v2, 0xa7

    if-eq v5, v2, :cond_3e9

    const/16 v3, 0xa8

    if-ne v5, v3, :cond_3d0

    goto :goto_3e9

    :cond_3d0
    if-ge v5, v2, :cond_3d9

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    xor-int/lit8 v3, v5, 0x1

    sub-int/2addr v3, v2

    goto :goto_3db

    :cond_3d9
    xor-int/lit8 v3, v5, 0x1

    .line 2335
    :goto_3db
    add-int/lit8 v2, v9, 0x3

    invoke-direct {v8, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v2

    .line 2336
    invoke-virtual {v4, v3, v2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 2337
    invoke-virtual {v4, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    const/4 v3, 0x1

    goto :goto_3f0

    .line 2329
    :cond_3e9
    :goto_3e9
    add-int/lit8 v5, v5, 0x21

    invoke-virtual {v4, v5, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    move/from16 v3, v31

    :goto_3f0
    add-int/lit8 v2, v35, 0x3

    move v0, v3

    move/from16 p3, v6

    move/from16 v37, v7

    move/from16 v38, v11

    move/from16 v1, v21

    move/from16 v3, v24

    move-object v11, v4

    goto/16 :goto_6a0

    .line 2292
    :pswitch_400  #0xc8, 0xc9
    move-object/from16 v4, v37

    sub-int v5, v5, v17

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v12, v0

    invoke-virtual {v4, v5, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v2, v35, 0x5

    move/from16 p3, v6

    move/from16 v37, v7

    goto/16 :goto_4bc

    .line 2496
    :pswitch_418  #0xc5
    move-object/from16 v4, v37

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v35, 0x3

    aget-byte v1, v18, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v4, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    const/16 v3, 0x84

    goto :goto_457

    .line 2356
    :pswitch_42c  #0xc4
    move-object/from16 v4, v37

    add-int/lit8 v2, v35, 0x1

    aget-byte v0, v18, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x84

    if-ne v0, v3, :cond_44e

    .line 2358
    add-int/lit8 v2, v35, 0x2

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v2, v35, 0x4

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v1

    invoke-virtual {v4, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v2, v35, 0x6

    move/from16 p3, v6

    move/from16 v37, v7

    goto :goto_4bc

    .line 2362
    :cond_44e
    add-int/lit8 v2, v35, 0x2

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2496
    :goto_457
    add-int/lit8 v2, v35, 0x4

    move/from16 p3, v6

    move/from16 v37, v7

    goto :goto_4bc

    .line 2487
    :pswitch_45e  #0xbb, 0xbd, 0xc0, 0xc1
    move-object/from16 v4, v37

    const/16 v3, 0x84

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    add-int/lit8 v2, v35, 0x3

    move/from16 p3, v6

    move/from16 v37, v7

    goto :goto_4bc

    .line 2463
    :pswitch_472  #0xba
    move-object/from16 v4, v37

    const/16 v3, 0x84

    iget-object v0, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    .line 2464
    iget-object v1, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    .line 2465
    invoke-virtual {v8, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 2466
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 2467
    iget-object v5, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget v0, v5, v0

    .line 2468
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v8, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzeroaicy/org/objectweb/asm/Handle;

    .line 2470
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move/from16 p3, v6

    new-array v6, v3, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x4

    move/from16 v37, v7

    const/4 v7, 0x0

    :goto_4b5
    if-lt v7, v3, :cond_4c7

    .line 2478
    invoke-virtual {v4, v2, v1, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V

    add-int/lit8 v2, v35, 0x5

    .line 2487
    :goto_4bc
    move/from16 v38, v11

    move/from16 v1, v21

    move/from16 v3, v24

    move/from16 v0, v31

    move-object v11, v4

    goto/16 :goto_6a0

    .line 2474
    :cond_4c7
    move-object/from16 v38, v1

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v8, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v7

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v38

    goto :goto_4b5

    .line 2442
    :pswitch_4da  #0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9
    move/from16 p3, v6

    move-object/from16 v4, v37

    move/from16 v37, v7

    iget-object v0, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    .line 2443
    iget-object v1, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    .line 2444
    invoke-virtual {v8, v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    .line 2445
    invoke-virtual {v8, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 2446
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xb6

    if-ge v5, v1, :cond_50e

    .line 2448
    invoke-virtual {v4, v5, v2, v3, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move/from16 v38, v11

    move-object v11, v4

    goto :goto_527

    .line 2450
    :cond_50e
    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v18, v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_518

    const/4 v7, 0x0

    goto :goto_519

    :cond_518
    const/4 v7, 0x1

    .line 2452
    :goto_519
    move-object/from16 v0, p1

    move v1, v5

    move/from16 v38, v11

    const/16 v11, 0x84

    move-object v11, v4

    move-object v4, v6

    move v6, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_527
    const/16 v0, 0xb9

    if-ne v6, v0, :cond_66a

    add-int/lit8 v2, v35, 0x5

    move/from16 v1, v21

    move/from16 v3, v24

    move/from16 v0, v31

    goto/16 :goto_6a0

    :pswitch_535  #0xab
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move/from16 v37, v7

    and-int/lit8 v0, v9, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int v2, v35, v0

    .line 2388
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v12, v0

    .line 2389
    add-int/lit8 v1, v2, 0x4

    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x8

    .line 2391
    new-array v3, v1, [I

    .line 2392
    new-array v4, v1, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v5, 0x0

    :goto_557
    if-lt v5, v1, :cond_564

    .line 2398
    invoke-virtual {v11, v0, v3, v4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[I[Lzeroaicy/org/objectweb/asm/Label;)V

    move/from16 v1, v21

    move/from16 v3, v24

    move/from16 v0, v31

    goto/16 :goto_6a0

    .line 2394
    :cond_564
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    aput v6, v3, v5

    .line 2395
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v8, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v9

    aget-object v6, v12, v6

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_557

    :pswitch_57a  #0xaa
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move/from16 v37, v7

    and-int/lit8 v0, v9, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int v2, v35, v0

    .line 2371
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v12, v0

    .line 2372
    add-int/lit8 v1, v2, 0x4

    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 2373
    add-int/lit8 v3, v2, 0x8

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v2, v2, 0xc

    sub-int v4, v3, v1

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 2375
    new-array v5, v4, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v6, 0x0

    :goto_5a4
    if-lt v6, v4, :cond_5b1

    .line 2380
    invoke-virtual {v11, v1, v3, v0, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    move/from16 v1, v21

    move/from16 v3, v24

    move/from16 v0, v31

    goto/16 :goto_6a0

    .line 2377
    :cond_5b1
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/2addr v7, v9

    aget-object v7, v12, v7

    aput-object v7, v5, v6

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_5a4

    .line 2286
    :pswitch_5bf  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xc6, 0xc7
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move v6, v5

    move/from16 v37, v7

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v0

    add-int/2addr v0, v9

    aget-object v0, v12, v0

    invoke-virtual {v11, v6, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    goto/16 :goto_66a

    .line 2491
    :pswitch_5d6  #0x84
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move/from16 v37, v7

    add-int/lit8 v2, v35, 0x1

    aget-byte v0, v18, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v35, 0x2

    aget-byte v1, v18, v2

    invoke-virtual {v11, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    goto/16 :goto_66a

    :pswitch_5ed  #0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move v6, v5

    move/from16 v37, v7

    add-int/lit8 v5, v6, -0x3b

    .line 2265
    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x36

    and-int/lit8 v1, v5, 0x3

    invoke-virtual {v11, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_698

    :pswitch_603  #0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move v6, v5

    move/from16 v37, v7

    add-int/lit8 v5, v6, -0x1a

    .line 2241
    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v5, 0x3

    invoke-virtual {v11, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_698

    .line 2412
    :pswitch_619  #0x15, 0x16, 0x17, 0x18, 0x19, 0x36, 0x37, 0x38, 0x39, 0x3a, 0xa9
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move v6, v5

    move/from16 v37, v7

    add-int/lit8 v2, v35, 0x1

    aget-byte v0, v18, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v11, v6, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_683

    .line 2430
    :pswitch_62c  #0x13, 0x14
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move/from16 v37, v7

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v8, v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_66a

    .line 2425
    :pswitch_642  #0x12
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move/from16 v37, v7

    add-int/lit8 v2, v35, 0x1

    aget-byte v0, v18, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v8, v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_683

    .line 2421
    :pswitch_658  #0x11
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move v6, v5

    move/from16 v37, v7

    add-int/lit8 v2, v35, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v11, v6, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_66a
    :goto_66a
    add-int/lit8 v2, v35, 0x3

    move/from16 v1, v21

    move/from16 v3, v24

    move/from16 v0, v31

    goto :goto_6a0

    .line 2417
    :pswitch_673  #0x10, 0xbc
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move v6, v5

    move/from16 v37, v7

    add-int/lit8 v2, v35, 0x1

    aget-byte v0, v18, v2

    invoke-virtual {v11, v6, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :goto_683
    add-int/lit8 v2, v35, 0x2

    move/from16 v1, v21

    move/from16 v3, v24

    move/from16 v0, v31

    goto :goto_6a0

    .line 2217
    :pswitch_68c  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xbe, 0xbf, 0xc2, 0xc3
    move/from16 p3, v6

    move/from16 v38, v11

    move-object/from16 v11, v37

    move v6, v5

    move/from16 v37, v7

    invoke-virtual {v11, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_698
    add-int/lit8 v2, v35, 0x1

    move/from16 v1, v21

    move/from16 v3, v24

    move/from16 v0, v31

    :goto_6a0
    move-object/from16 v7, v34

    if-eqz v7, :cond_6d9

    .line 2505
    array-length v4, v7

    if-ge v3, v4, :cond_6d6

    if-le v1, v9, :cond_6ac

    move/from16 v21, v0

    goto :goto_6db

    :cond_6ac
    if-ne v1, v9, :cond_6c9

    .line 2510
    aget v1, v7, v3

    invoke-direct {v8, v10, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v1

    .line 2514
    invoke-virtual {v8, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 2517
    iget v5, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v6, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    move/from16 v21, v0

    const/4 v0, 0x1

    invoke-virtual {v11, v5, v6, v4, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v8, v4, v1, v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    goto :goto_6cb

    .line 2505
    :cond_6c9
    move/from16 v21, v0

    .line 2517
    :goto_6cb
    add-int/lit8 v3, v3, 0x1

    .line 2527
    invoke-direct {v8, v7, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v1

    move-object/from16 v34, v7

    move/from16 v0, v21

    goto :goto_6a0

    .line 2505
    :cond_6d6
    move/from16 v21, v0

    goto :goto_6db

    .line 2217
    :cond_6d9
    move/from16 v21, v0

    .line 2527
    :goto_6db
    move/from16 v0, v22

    move/from16 v4, v23

    :goto_6df
    if-eqz v20, :cond_72c

    .line 2533
    move-object/from16 v6, v20

    array-length v5, v6

    if-ge v4, v5, :cond_726

    if-le v0, v9, :cond_6ee

    move/from16 v20, v1

    move/from16 v22, v2

    const/4 v9, 0x0

    goto :goto_72b

    :cond_6ee
    if-ne v0, v9, :cond_710

    .line 2538
    aget v0, v6, v4

    invoke-direct {v8, v10, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v0

    .line 2542
    invoke-virtual {v8, v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 2545
    move/from16 v20, v1

    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v22, v2

    iget-object v2, v10, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    move/from16 v23, v9

    const/4 v9, 0x0

    invoke-virtual {v11, v1, v2, v5, v9}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    invoke-direct {v8, v1, v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    goto :goto_717

    .line 2533
    :cond_710
    move/from16 v20, v1

    move/from16 v22, v2

    move/from16 v23, v9

    const/4 v9, 0x0

    .line 2545
    :goto_717
    add-int/lit8 v4, v4, 0x1

    .line 2555
    invoke-direct {v8, v6, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v0

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v9, v23

    move-object/from16 v20, v6

    goto :goto_6df

    .line 2533
    :cond_726
    move/from16 v20, v1

    move/from16 v22, v2

    const/4 v9, 0x0

    .line 2555
    :goto_72b
    goto :goto_733

    .line 2527
    :cond_72c
    move/from16 v22, v2

    move-object/from16 v6, v20

    const/4 v9, 0x0

    move/from16 v20, v1

    .line 2555
    :goto_733
    move/from16 v1, p3

    move/from16 v24, v3

    move/from16 v23, v4

    move-object v3, v6

    move-object v5, v7

    move-object v4, v11

    move/from16 v26, v14

    move-object v9, v15

    move/from16 v2, v22

    move/from16 v6, v29

    move/from16 v15, v30

    move/from16 v14, v32

    move/from16 v31, v36

    move/from16 v7, v37

    move/from16 v11, v38

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v21, v20

    move/from16 v20, v27

    goto/16 :goto_104

    .line 1893
    :cond_757
    move/from16 v36, v3

    move/from16 v29, v6

    move/from16 v37, v7

    move-object/from16 v18, v12

    move/from16 v32, v14

    move/from16 v30, v15

    move/from16 v27, v20

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v14, v26

    const/16 v28, 0x8

    move-object/from16 v26, v1

    move-object v12, v5

    move-object v15, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1894
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v11

    add-int/lit8 v5, v0, 0x6

    .line 1896
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->LOCAL_VARIABLE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7ad

    .line 1897
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7f3

    .line 1901
    invoke-virtual {v8, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_792
    if-gtz v1, :cond_797

    move/from16 v20, v5

    goto :goto_7f5

    .line 1904
    :cond_797
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1905
    invoke-direct {v8, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V

    .line 1906
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1907
    add-int/2addr v2, v3

    invoke-direct {v8, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x1

    goto :goto_792

    .line 1912
    :cond_7ad
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->LOCAL_VARIABLE_TYPE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c5

    move/from16 v19, v5

    move/from16 v20, v19

    move-object/from16 v23, v6

    move/from16 v22, v29

    move/from16 v3, v36

    move/from16 v24, v37

    move-object/from16 v29, v7

    goto/16 :goto_886

    .line 1916
    :cond_7c5
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->LINE_NUMBER_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7fd

    .line 1917
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7f3

    .line 1920
    invoke-virtual {v8, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_7d9
    if-gtz v1, :cond_7dc

    goto :goto_7f3

    .line 1923
    :cond_7dc
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1924
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x4

    .line 1926
    invoke-direct {v8, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V

    .line 1927
    aget-object v2, v12, v2

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/Label;->addLineNumber(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7d9

    .line 1907
    :cond_7f3
    :goto_7f3
    move/from16 v20, v27

    :goto_7f5
    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v3, v36

    goto/16 :goto_85b

    .line 1930
    :cond_7fd
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_811

    .line 1931
    const/4 v0, 0x1

    invoke-direct {v8, v15, v10, v5, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)[I

    move-result-object v24

    move-object/from16 v23, v6

    move/from16 v20, v27

    move/from16 v3, v36

    goto :goto_85b

    .line 1939
    :cond_811
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_824

    .line 1940
    invoke-direct {v8, v15, v10, v5, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)[I

    move-result-object v23

    move-object/from16 v24, v7

    move/from16 v20, v27

    move/from16 v3, v36

    goto :goto_85b

    .line 1943
    :cond_824
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->STACK_MAP_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83d

    .line 1944
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_83a

    add-int/lit8 v0, v0, 0x8

    add-int v1, v5, v11

    move/from16 v21, v0

    move v3, v1

    goto :goto_855

    :cond_83a
    move/from16 v3, v36

    goto :goto_855

    .line 1957
    :cond_83d
    const-string v1, "StackMap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_866

    .line 1958
    iget v1, v10, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_851

    add-int/lit8 v21, v0, 0x8

    add-int v3, v5, v11

    const/4 v4, 0x0

    goto :goto_854

    :cond_851
    move v4, v14

    move/from16 v3, v36

    :goto_854
    move v14, v4

    .line 1944
    :goto_855
    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v20, v27

    .line 1907
    :goto_85b
    move/from16 v27, v20

    move/from16 v22, v29

    move/from16 v20, v5

    move-object/from16 v29, v24

    move/from16 v24, v37

    goto :goto_886

    .line 1968
    :cond_866
    iget-object v1, v10, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v0, p0

    move v3, v5

    move v4, v11

    move/from16 v20, v5

    move-object v5, v13

    move-object/from16 v23, v6

    move/from16 v22, v29

    move/from16 v6, p3

    move-object/from16 v29, v7

    move/from16 v24, v37

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    .line 1977
    move-object/from16 v1, v25

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v25, v0

    move/from16 v3, v36

    :goto_886
    add-int v0, v20, v11

    add-int/lit8 v17, v17, -0x1

    move/from16 v11, p3

    move-object v5, v12

    move-object v9, v15

    move-object/from16 v12, v18

    move/from16 v6, v22

    move/from16 v7, v24

    move-object/from16 v1, v26

    move/from16 v20, v27

    move-object/from16 v24, v29

    move/from16 v15, v30

    const/16 v2, 0x8

    const/4 v4, 0x0

    move/from16 v26, v14

    move/from16 v14, v32

    goto/16 :goto_5a

    .line 1856
    :cond_8a5
    move/from16 v22, v6

    move/from16 v24, v7

    move-object/from16 v18, v12

    move/from16 v32, v14

    move/from16 v30, v15

    const/16 v28, 0x8

    move-object v12, v5

    move-object v15, v9

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-direct {v8, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v2

    .line 1857
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-direct {v8, v3, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v3

    .line 1858
    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v8, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {v8, v4, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v4

    .line 1859
    iget-object v5, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {v8, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v8, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x8

    .line 1861
    invoke-virtual {v15, v2, v3, v4, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    move/from16 v11, p3

    move-object v5, v12

    move-object/from16 v12, v18

    move/from16 v6, v22

    move/from16 v15, v30

    const/16 v2, 0x8

    goto/16 :goto_39

    :cond_8f1
    move/from16 v22, v6

    move/from16 v24, v7

    move-object/from16 v18, v12

    move/from16 v32, v14

    move/from16 v30, v15

    const/16 v28, 0x8

    move-object v12, v5

    move-object v15, v9

    sub-int v1, v0, v16

    .line 1559
    aget-byte v2, v18, v0

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_b86

    .line 1847
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1749
    :pswitch_90e  #0xca, 0xcb, 0xcc, 0xcd, 0xce, 0xcf, 0xd0, 0xd1, 0xd2, 0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xdb
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    goto/16 :goto_9a8

    .line 1755
    :pswitch_91a  #0xc8, 0xc9, 0xdc
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_946

    .line 1759
    :pswitch_925  #0xc4
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, v18, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x84

    if-eq v1, v2, :cond_943

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_93f

    packed-switch v1, :pswitch_data_d44

    packed-switch v1, :pswitch_data_d52

    .line 1777
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1755
    :cond_93f
    :pswitch_93f  #0xc5, 0x15, 0x16, 0x17, 0x18, 0x19, 0x36, 0x37, 0x38, 0x39, 0x3a
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_9b0

    .line 1777
    :cond_943
    add-int/lit8 v0, v0, 0x6

    goto :goto_9b0

    :goto_946
    :pswitch_946  #0xb9, 0xba
    add-int/lit8 v0, v0, 0x5

    goto :goto_9b0

    :pswitch_949  #0xab
    and-int/lit8 v2, v1, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 1797
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 1798
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x8

    :goto_95e
    if-gtz v2, :cond_961

    goto :goto_990

    .line 1802
    :cond_961
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, -0x1

    goto :goto_95e

    :pswitch_970  #0xaa
    and-int/lit8 v2, v1, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 1784
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 1785
    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0xc

    :goto_98e
    if-gtz v2, :cond_991

    :goto_990
    goto :goto_9b0

    .line 1789
    :cond_991
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v8, v3, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, -0x1

    goto :goto_98e

    .line 1728
    :pswitch_99e  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xc6, 0xc7
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    :goto_9a8
    :pswitch_9a8  #0x11, 0x13, 0x14, 0x84, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xbb, 0xbd, 0xc0, 0xc1
    add-int/lit8 v0, v0, 0x3

    goto :goto_9b0

    :pswitch_9ab  #0x10, 0x12, 0x15, 0x16, 0x17, 0x18, 0x19, 0x36, 0x37, 0x38, 0x39, 0x3a, 0xa9, 0xbc
    add-int/lit8 v0, v0, 0x2

    goto :goto_9b0

    :pswitch_9ae  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xbe, 0xbf, 0xc2, 0xc3
    add-int/lit8 v0, v0, 0x1

    :goto_9b0
    move/from16 v11, p3

    move-object v5, v12

    move-object v9, v15

    move-object/from16 v12, v18

    move/from16 v6, v22

    move/from16 v7, v24

    move/from16 v15, v30

    move/from16 v14, v32

    goto/16 :goto_2f

    .line 1550
    :cond_9c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_9c7

    :goto_9c6
    throw v0

    :goto_9c7
    goto :goto_9c6

    :pswitch_data_9c8
    .packed-switch 0x0
        :pswitch_68c  #00000000
        :pswitch_68c  #00000001
        :pswitch_68c  #00000002
        :pswitch_68c  #00000003
        :pswitch_68c  #00000004
        :pswitch_68c  #00000005
        :pswitch_68c  #00000006
        :pswitch_68c  #00000007
        :pswitch_68c  #00000008
        :pswitch_68c  #00000009
        :pswitch_68c  #0000000a
        :pswitch_68c  #0000000b
        :pswitch_68c  #0000000c
        :pswitch_68c  #0000000d
        :pswitch_68c  #0000000e
        :pswitch_68c  #0000000f
        :pswitch_673  #00000010
        :pswitch_658  #00000011
        :pswitch_642  #00000012
        :pswitch_62c  #00000013
        :pswitch_62c  #00000014
        :pswitch_619  #00000015
        :pswitch_619  #00000016
        :pswitch_619  #00000017
        :pswitch_619  #00000018
        :pswitch_619  #00000019
        :pswitch_603  #0000001a
        :pswitch_603  #0000001b
        :pswitch_603  #0000001c
        :pswitch_603  #0000001d
        :pswitch_603  #0000001e
        :pswitch_603  #0000001f
        :pswitch_603  #00000020
        :pswitch_603  #00000021
        :pswitch_603  #00000022
        :pswitch_603  #00000023
        :pswitch_603  #00000024
        :pswitch_603  #00000025
        :pswitch_603  #00000026
        :pswitch_603  #00000027
        :pswitch_603  #00000028
        :pswitch_603  #00000029
        :pswitch_603  #0000002a
        :pswitch_603  #0000002b
        :pswitch_603  #0000002c
        :pswitch_603  #0000002d
        :pswitch_68c  #0000002e
        :pswitch_68c  #0000002f
        :pswitch_68c  #00000030
        :pswitch_68c  #00000031
        :pswitch_68c  #00000032
        :pswitch_68c  #00000033
        :pswitch_68c  #00000034
        :pswitch_68c  #00000035
        :pswitch_619  #00000036
        :pswitch_619  #00000037
        :pswitch_619  #00000038
        :pswitch_619  #00000039
        :pswitch_619  #0000003a
        :pswitch_5ed  #0000003b
        :pswitch_5ed  #0000003c
        :pswitch_5ed  #0000003d
        :pswitch_5ed  #0000003e
        :pswitch_5ed  #0000003f
        :pswitch_5ed  #00000040
        :pswitch_5ed  #00000041
        :pswitch_5ed  #00000042
        :pswitch_5ed  #00000043
        :pswitch_5ed  #00000044
        :pswitch_5ed  #00000045
        :pswitch_5ed  #00000046
        :pswitch_5ed  #00000047
        :pswitch_5ed  #00000048
        :pswitch_5ed  #00000049
        :pswitch_5ed  #0000004a
        :pswitch_5ed  #0000004b
        :pswitch_5ed  #0000004c
        :pswitch_5ed  #0000004d
        :pswitch_5ed  #0000004e
        :pswitch_68c  #0000004f
        :pswitch_68c  #00000050
        :pswitch_68c  #00000051
        :pswitch_68c  #00000052
        :pswitch_68c  #00000053
        :pswitch_68c  #00000054
        :pswitch_68c  #00000055
        :pswitch_68c  #00000056
        :pswitch_68c  #00000057
        :pswitch_68c  #00000058
        :pswitch_68c  #00000059
        :pswitch_68c  #0000005a
        :pswitch_68c  #0000005b
        :pswitch_68c  #0000005c
        :pswitch_68c  #0000005d
        :pswitch_68c  #0000005e
        :pswitch_68c  #0000005f
        :pswitch_68c  #00000060
        :pswitch_68c  #00000061
        :pswitch_68c  #00000062
        :pswitch_68c  #00000063
        :pswitch_68c  #00000064
        :pswitch_68c  #00000065
        :pswitch_68c  #00000066
        :pswitch_68c  #00000067
        :pswitch_68c  #00000068
        :pswitch_68c  #00000069
        :pswitch_68c  #0000006a
        :pswitch_68c  #0000006b
        :pswitch_68c  #0000006c
        :pswitch_68c  #0000006d
        :pswitch_68c  #0000006e
        :pswitch_68c  #0000006f
        :pswitch_68c  #00000070
        :pswitch_68c  #00000071
        :pswitch_68c  #00000072
        :pswitch_68c  #00000073
        :pswitch_68c  #00000074
        :pswitch_68c  #00000075
        :pswitch_68c  #00000076
        :pswitch_68c  #00000077
        :pswitch_68c  #00000078
        :pswitch_68c  #00000079
        :pswitch_68c  #0000007a
        :pswitch_68c  #0000007b
        :pswitch_68c  #0000007c
        :pswitch_68c  #0000007d
        :pswitch_68c  #0000007e
        :pswitch_68c  #0000007f
        :pswitch_68c  #00000080
        :pswitch_68c  #00000081
        :pswitch_68c  #00000082
        :pswitch_68c  #00000083
        :pswitch_5d6  #00000084
        :pswitch_68c  #00000085
        :pswitch_68c  #00000086
        :pswitch_68c  #00000087
        :pswitch_68c  #00000088
        :pswitch_68c  #00000089
        :pswitch_68c  #0000008a
        :pswitch_68c  #0000008b
        :pswitch_68c  #0000008c
        :pswitch_68c  #0000008d
        :pswitch_68c  #0000008e
        :pswitch_68c  #0000008f
        :pswitch_68c  #00000090
        :pswitch_68c  #00000091
        :pswitch_68c  #00000092
        :pswitch_68c  #00000093
        :pswitch_68c  #00000094
        :pswitch_68c  #00000095
        :pswitch_68c  #00000096
        :pswitch_68c  #00000097
        :pswitch_68c  #00000098
        :pswitch_5bf  #00000099
        :pswitch_5bf  #0000009a
        :pswitch_5bf  #0000009b
        :pswitch_5bf  #0000009c
        :pswitch_5bf  #0000009d
        :pswitch_5bf  #0000009e
        :pswitch_5bf  #0000009f
        :pswitch_5bf  #000000a0
        :pswitch_5bf  #000000a1
        :pswitch_5bf  #000000a2
        :pswitch_5bf  #000000a3
        :pswitch_5bf  #000000a4
        :pswitch_5bf  #000000a5
        :pswitch_5bf  #000000a6
        :pswitch_5bf  #000000a7
        :pswitch_5bf  #000000a8
        :pswitch_619  #000000a9
        :pswitch_57a  #000000aa
        :pswitch_535  #000000ab
        :pswitch_68c  #000000ac
        :pswitch_68c  #000000ad
        :pswitch_68c  #000000ae
        :pswitch_68c  #000000af
        :pswitch_68c  #000000b0
        :pswitch_68c  #000000b1
        :pswitch_4da  #000000b2
        :pswitch_4da  #000000b3
        :pswitch_4da  #000000b4
        :pswitch_4da  #000000b5
        :pswitch_4da  #000000b6
        :pswitch_4da  #000000b7
        :pswitch_4da  #000000b8
        :pswitch_4da  #000000b9
        :pswitch_472  #000000ba
        :pswitch_45e  #000000bb
        :pswitch_673  #000000bc
        :pswitch_45e  #000000bd
        :pswitch_68c  #000000be
        :pswitch_68c  #000000bf
        :pswitch_45e  #000000c0
        :pswitch_45e  #000000c1
        :pswitch_68c  #000000c2
        :pswitch_68c  #000000c3
        :pswitch_42c  #000000c4
        :pswitch_418  #000000c5
        :pswitch_5bf  #000000c6
        :pswitch_5bf  #000000c7
        :pswitch_400  #000000c8
        :pswitch_400  #000000c9
        :pswitch_3b3  #000000ca
        :pswitch_3b3  #000000cb
        :pswitch_3b3  #000000cc
        :pswitch_3b3  #000000cd
        :pswitch_3b3  #000000ce
        :pswitch_3b3  #000000cf
        :pswitch_3b3  #000000d0
        :pswitch_3b3  #000000d1
        :pswitch_3b3  #000000d2
        :pswitch_3b3  #000000d3
        :pswitch_3b3  #000000d4
        :pswitch_3b3  #000000d5
        :pswitch_3b3  #000000d6
        :pswitch_3b3  #000000d7
        :pswitch_3b3  #000000d8
        :pswitch_3b3  #000000d9
        :pswitch_3b3  #000000da
        :pswitch_3b3  #000000db
        :pswitch_395  #000000dc
    .end packed-switch

    :pswitch_data_b86
    .packed-switch 0x0
        :pswitch_9ae  #00000000
        :pswitch_9ae  #00000001
        :pswitch_9ae  #00000002
        :pswitch_9ae  #00000003
        :pswitch_9ae  #00000004
        :pswitch_9ae  #00000005
        :pswitch_9ae  #00000006
        :pswitch_9ae  #00000007
        :pswitch_9ae  #00000008
        :pswitch_9ae  #00000009
        :pswitch_9ae  #0000000a
        :pswitch_9ae  #0000000b
        :pswitch_9ae  #0000000c
        :pswitch_9ae  #0000000d
        :pswitch_9ae  #0000000e
        :pswitch_9ae  #0000000f
        :pswitch_9ab  #00000010
        :pswitch_9a8  #00000011
        :pswitch_9ab  #00000012
        :pswitch_9a8  #00000013
        :pswitch_9a8  #00000014
        :pswitch_9ab  #00000015
        :pswitch_9ab  #00000016
        :pswitch_9ab  #00000017
        :pswitch_9ab  #00000018
        :pswitch_9ab  #00000019
        :pswitch_9ae  #0000001a
        :pswitch_9ae  #0000001b
        :pswitch_9ae  #0000001c
        :pswitch_9ae  #0000001d
        :pswitch_9ae  #0000001e
        :pswitch_9ae  #0000001f
        :pswitch_9ae  #00000020
        :pswitch_9ae  #00000021
        :pswitch_9ae  #00000022
        :pswitch_9ae  #00000023
        :pswitch_9ae  #00000024
        :pswitch_9ae  #00000025
        :pswitch_9ae  #00000026
        :pswitch_9ae  #00000027
        :pswitch_9ae  #00000028
        :pswitch_9ae  #00000029
        :pswitch_9ae  #0000002a
        :pswitch_9ae  #0000002b
        :pswitch_9ae  #0000002c
        :pswitch_9ae  #0000002d
        :pswitch_9ae  #0000002e
        :pswitch_9ae  #0000002f
        :pswitch_9ae  #00000030
        :pswitch_9ae  #00000031
        :pswitch_9ae  #00000032
        :pswitch_9ae  #00000033
        :pswitch_9ae  #00000034
        :pswitch_9ae  #00000035
        :pswitch_9ab  #00000036
        :pswitch_9ab  #00000037
        :pswitch_9ab  #00000038
        :pswitch_9ab  #00000039
        :pswitch_9ab  #0000003a
        :pswitch_9ae  #0000003b
        :pswitch_9ae  #0000003c
        :pswitch_9ae  #0000003d
        :pswitch_9ae  #0000003e
        :pswitch_9ae  #0000003f
        :pswitch_9ae  #00000040
        :pswitch_9ae  #00000041
        :pswitch_9ae  #00000042
        :pswitch_9ae  #00000043
        :pswitch_9ae  #00000044
        :pswitch_9ae  #00000045
        :pswitch_9ae  #00000046
        :pswitch_9ae  #00000047
        :pswitch_9ae  #00000048
        :pswitch_9ae  #00000049
        :pswitch_9ae  #0000004a
        :pswitch_9ae  #0000004b
        :pswitch_9ae  #0000004c
        :pswitch_9ae  #0000004d
        :pswitch_9ae  #0000004e
        :pswitch_9ae  #0000004f
        :pswitch_9ae  #00000050
        :pswitch_9ae  #00000051
        :pswitch_9ae  #00000052
        :pswitch_9ae  #00000053
        :pswitch_9ae  #00000054
        :pswitch_9ae  #00000055
        :pswitch_9ae  #00000056
        :pswitch_9ae  #00000057
        :pswitch_9ae  #00000058
        :pswitch_9ae  #00000059
        :pswitch_9ae  #0000005a
        :pswitch_9ae  #0000005b
        :pswitch_9ae  #0000005c
        :pswitch_9ae  #0000005d
        :pswitch_9ae  #0000005e
        :pswitch_9ae  #0000005f
        :pswitch_9ae  #00000060
        :pswitch_9ae  #00000061
        :pswitch_9ae  #00000062
        :pswitch_9ae  #00000063
        :pswitch_9ae  #00000064
        :pswitch_9ae  #00000065
        :pswitch_9ae  #00000066
        :pswitch_9ae  #00000067
        :pswitch_9ae  #00000068
        :pswitch_9ae  #00000069
        :pswitch_9ae  #0000006a
        :pswitch_9ae  #0000006b
        :pswitch_9ae  #0000006c
        :pswitch_9ae  #0000006d
        :pswitch_9ae  #0000006e
        :pswitch_9ae  #0000006f
        :pswitch_9ae  #00000070
        :pswitch_9ae  #00000071
        :pswitch_9ae  #00000072
        :pswitch_9ae  #00000073
        :pswitch_9ae  #00000074
        :pswitch_9ae  #00000075
        :pswitch_9ae  #00000076
        :pswitch_9ae  #00000077
        :pswitch_9ae  #00000078
        :pswitch_9ae  #00000079
        :pswitch_9ae  #0000007a
        :pswitch_9ae  #0000007b
        :pswitch_9ae  #0000007c
        :pswitch_9ae  #0000007d
        :pswitch_9ae  #0000007e
        :pswitch_9ae  #0000007f
        :pswitch_9ae  #00000080
        :pswitch_9ae  #00000081
        :pswitch_9ae  #00000082
        :pswitch_9ae  #00000083
        :pswitch_9a8  #00000084
        :pswitch_9ae  #00000085
        :pswitch_9ae  #00000086
        :pswitch_9ae  #00000087
        :pswitch_9ae  #00000088
        :pswitch_9ae  #00000089
        :pswitch_9ae  #0000008a
        :pswitch_9ae  #0000008b
        :pswitch_9ae  #0000008c
        :pswitch_9ae  #0000008d
        :pswitch_9ae  #0000008e
        :pswitch_9ae  #0000008f
        :pswitch_9ae  #00000090
        :pswitch_9ae  #00000091
        :pswitch_9ae  #00000092
        :pswitch_9ae  #00000093
        :pswitch_9ae  #00000094
        :pswitch_9ae  #00000095
        :pswitch_9ae  #00000096
        :pswitch_9ae  #00000097
        :pswitch_9ae  #00000098
        :pswitch_99e  #00000099
        :pswitch_99e  #0000009a
        :pswitch_99e  #0000009b
        :pswitch_99e  #0000009c
        :pswitch_99e  #0000009d
        :pswitch_99e  #0000009e
        :pswitch_99e  #0000009f
        :pswitch_99e  #000000a0
        :pswitch_99e  #000000a1
        :pswitch_99e  #000000a2
        :pswitch_99e  #000000a3
        :pswitch_99e  #000000a4
        :pswitch_99e  #000000a5
        :pswitch_99e  #000000a6
        :pswitch_99e  #000000a7
        :pswitch_99e  #000000a8
        :pswitch_9ab  #000000a9
        :pswitch_970  #000000aa
        :pswitch_949  #000000ab
        :pswitch_9ae  #000000ac
        :pswitch_9ae  #000000ad
        :pswitch_9ae  #000000ae
        :pswitch_9ae  #000000af
        :pswitch_9ae  #000000b0
        :pswitch_9ae  #000000b1
        :pswitch_9a8  #000000b2
        :pswitch_9a8  #000000b3
        :pswitch_9a8  #000000b4
        :pswitch_9a8  #000000b5
        :pswitch_9a8  #000000b6
        :pswitch_9a8  #000000b7
        :pswitch_9a8  #000000b8
        :pswitch_946  #000000b9
        :pswitch_946  #000000ba
        :pswitch_9a8  #000000bb
        :pswitch_9ab  #000000bc
        :pswitch_9a8  #000000bd
        :pswitch_9ae  #000000be
        :pswitch_9ae  #000000bf
        :pswitch_9a8  #000000c0
        :pswitch_9a8  #000000c1
        :pswitch_9ae  #000000c2
        :pswitch_9ae  #000000c3
        :pswitch_925  #000000c4
        :pswitch_93f  #000000c5
        :pswitch_99e  #000000c6
        :pswitch_99e  #000000c7
        :pswitch_91a  #000000c8
        :pswitch_91a  #000000c9
        :pswitch_90e  #000000ca
        :pswitch_90e  #000000cb
        :pswitch_90e  #000000cc
        :pswitch_90e  #000000cd
        :pswitch_90e  #000000ce
        :pswitch_90e  #000000cf
        :pswitch_90e  #000000d0
        :pswitch_90e  #000000d1
        :pswitch_90e  #000000d2
        :pswitch_90e  #000000d3
        :pswitch_90e  #000000d4
        :pswitch_90e  #000000d5
        :pswitch_90e  #000000d6
        :pswitch_90e  #000000d7
        :pswitch_90e  #000000d8
        :pswitch_90e  #000000d9
        :pswitch_90e  #000000da
        :pswitch_90e  #000000db
        :pswitch_91a  #000000dc
    .end packed-switch

    :pswitch_data_d44
    .packed-switch 0x15
        :pswitch_93f  #00000015
        :pswitch_93f  #00000016
        :pswitch_93f  #00000017
        :pswitch_93f  #00000018
        :pswitch_93f  #00000019
    .end packed-switch

    :pswitch_data_d52
    .packed-switch 0x36
        :pswitch_93f  #00000036
        :pswitch_93f  #00000037
        :pswitch_93f  #00000038
        :pswitch_93f  #00000039
        :pswitch_93f  #0000003a
    .end packed-switch
.end method

.method private readConstantDynamic(I[C)Lzeroaicy/org/objectweb/asm/ConstantDynamic;
    .registers 11

    .line 3789
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantDynamicValues:[Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    return-object v0

    .line 3793
    :cond_7
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v1, v0, p1

    .line 3794
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    .line 3795
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 3796
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 3797
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v3, v1

    .line 3798
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzeroaicy/org/objectweb/asm/Handle;

    .line 3799
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    const/4 v6, 0x0

    :goto_3a
    if-lt v6, v4, :cond_46

    .line 3805
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantDynamicValues:[Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    new-instance v1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    invoke-direct {v1, v2, v0, v3, v5}, Lzeroaicy/org/objectweb/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V

    aput-object v1, p2, p1

    return-object v1

    .line 3802
    :cond_46
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    invoke-virtual {p0, v7, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a
.end method

.method private readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I
    .registers 15

    const/16 v0, 0x65

    const/16 v1, 0x5b

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_30

    .line 3029
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x0

    if-eq p1, v2, :cond_26

    if-eq p1, v1, :cond_1d

    if-eq p1, v0, :cond_1a

    add-int/lit8 p2, p2, 0x3

    return p2

    :cond_1a
    add-int/lit8 p2, p2, 0x5

    return p2

    .line 3035
    :cond_1d
    move-object p1, p3

    check-cast p1, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    add-int/2addr p2, v3

    invoke-direct {p0, p3, p2, v4, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    .line 3033
    :cond_26
    move-object p1, p3

    check-cast p1, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    add-int/lit8 p2, p2, 0x3

    invoke-direct {p0, p3, p2, v3, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    .line 3040
    :cond_30
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte v5, v5, p2

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v2, :cond_21d

    const/16 v2, 0x46

    if-eq v5, v2, :cond_20f

    const/16 v7, 0x53

    if-eq v5, v7, :cond_1f9

    const/16 v8, 0x63

    if-eq v5, v8, :cond_1ed

    if-eq v5, v0, :cond_1dd

    const/16 v0, 0x73

    if-eq v5, v0, :cond_1d5

    const/16 v0, 0x49

    if-eq v5, v0, :cond_20f

    const/16 v8, 0x4a

    if-eq v5, v8, :cond_20f

    const/16 v9, 0x5a

    if-eq v5, v9, :cond_1be

    if-eq v5, v1, :cond_91

    packed-switch v5, :pswitch_data_22c

    .line 3186
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3047
    :pswitch_63  #0x43
    new-instance p4, Ljava/lang/Character;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-char v0, v0

    invoke-direct {p4, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_21a

    .line 3042
    :pswitch_7a  #0x42
    new-instance p4, Ljava/lang/Byte;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-direct {p4, v0}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_21a

    .line 3097
    :cond_91
    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x3

    if-nez v1, :cond_a2

    .line 3100
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    invoke-direct {p0, p1, v6, v4, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    .line 3106
    :cond_a2
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte v5, v5, p2

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v2, :cond_19b

    if-eq v5, v7, :cond_17d

    if-eq v5, v9, :cond_15a

    if-eq v5, v0, :cond_13d

    if-eq v5, v8, :cond_11f

    packed-switch v5, :pswitch_data_236

    .line 3176
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    invoke-direct {p0, p1, v6, v4, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    goto/16 :goto_22b

    .line 3166
    :pswitch_bf  #0x44
    new-array p4, v1, [D

    :goto_c1
    if-lt v4, v1, :cond_c8

    .line 3173
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a2

    .line 3168
    :cond_c8
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    aput-wide v2, p4, v4

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    .line 3132
    :pswitch_e1  #0x43
    new-array p4, v1, [C

    :goto_e3
    if-lt v4, v1, :cond_ea

    .line 3137
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a2

    .line 3134
    :cond_ea
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p4, v4

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_e3

    .line 3108
    :pswitch_100  #0x42
    new-array v0, v1, [B

    :goto_102
    if-lt v4, v1, :cond_109

    .line 3113
    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a2

    .line 3110
    :cond_109
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget p4, p4, v2

    invoke-virtual {p0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-byte p4, p4

    aput-byte p4, v0, v4

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_102

    .line 3148
    :cond_11f
    new-array p4, v1, [J

    :goto_121
    if-lt v4, v1, :cond_128

    .line 3153
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a2

    .line 3150
    :cond_128
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v4

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_121

    .line 3140
    :cond_13d
    new-array p4, v1, [I

    :goto_13f
    if-lt v4, v1, :cond_145

    .line 3145
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a2

    .line 3142
    :cond_145
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    aput v0, p4, v4

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    .line 3116
    :cond_15a
    new-array p4, v1, [Z

    const/4 v0, 0x0

    :goto_15d
    if-lt v0, v1, :cond_163

    .line 3121
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a2

    .line 3118
    :cond_163
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    if-nez v2, :cond_175

    const/4 v2, 0x0

    goto :goto_176

    :cond_175
    const/4 v2, 0x1

    :goto_176
    aput-boolean v2, p4, v0

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_15d

    .line 3124
    :cond_17d
    new-array p4, v1, [S

    :goto_17f
    if-lt v4, v1, :cond_185

    .line 3129
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a2

    .line 3126
    :cond_185
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v4

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_17f

    .line 3156
    :cond_19b
    new-array p4, v1, [F

    :goto_19d
    if-lt v4, v1, :cond_1a5

    .line 3163
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3113
    :goto_1a2
    move p1, p2

    goto/16 :goto_22b

    .line 3158
    :cond_1a5
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p4, v4

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_19d

    .line 3066
    :cond_1be
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result p4

    if-nez p4, :cond_1cf

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1d1

    :cond_1cf
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1d1
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21a

    .line 3074
    :cond_1d5
    invoke-virtual {p0, v6, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21a

    .line 3078
    :cond_1dd
    invoke-virtual {p0, v6, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x3

    invoke-virtual {p0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, v0, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p2, 0x5

    goto :goto_22b

    .line 3085
    :cond_1ed
    invoke-virtual {p0, v6, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21a

    .line 3060
    :cond_1f9
    new-instance p4, Ljava/lang/Short;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-short v0, v0

    invoke-direct {p4, v0}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21a

    .line 3055
    :cond_20f
    :pswitch_20f  #0x44
    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3042
    :goto_21a
    add-int/lit8 p1, p2, 0x3

    goto :goto_22b

    .line 3089
    :cond_21d
    invoke-virtual {p0, v6, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    add-int/lit8 p2, p2, 0x3

    invoke-direct {p0, p1, p2, v3, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    :goto_22b
    return p1

    :pswitch_data_22c
    .packed-switch 0x42
        :pswitch_7a  #00000042
        :pswitch_63  #00000043
        :pswitch_20f  #00000044
    .end packed-switch

    :pswitch_data_236
    .packed-switch 0x42
        :pswitch_100  #00000042
        :pswitch_e1  #00000043
        :pswitch_bf  #00000044
    .end packed-switch
.end method

.method private readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I
    .registers 7

    .line 2990
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-eqz p3, :cond_18

    :goto_8
    if-gtz v0, :cond_b

    goto :goto_1a

    .line 2995
    :cond_b
    invoke-virtual {p0, p2, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p3

    .line 2996
    add-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    :goto_18
    if-gtz v0, :cond_20

    :goto_1a
    if-eqz p1, :cond_1f

    .line 3007
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_1f
    return p2

    .line 3002
    :cond_20
    const/4 p3, 0x0

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_18
.end method

.method private readField(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I
    .registers 30

    .line 1070
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 1074
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1075
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 1076
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 1082
    const/4 v7, 0x0

    move-object v2, v7

    check-cast v2, Ljava/lang/Object;

    .line 1084
    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    .line 1095
    move-object v2, v7

    check-cast v2, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1097
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x8

    const/4 v6, 0x0

    move v12, v1

    move v11, v2

    move-object v1, v7

    move-object v15, v1

    move-object/from16 v16, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_35
    if-gtz v11, :cond_d0

    .line 1140
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;

    move-result-object v11

    if-nez v11, :cond_40

    return v0

    :cond_40
    const/4 v12, 0x1

    if-eqz v5, :cond_5d

    .line 1148
    invoke-virtual {v8, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    add-int/lit8 v5, v5, 0x2

    :goto_49
    if-gtz v13, :cond_4c

    goto :goto_5d

    .line 1152
    :cond_4c
    invoke-virtual {v8, v5, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 1155
    invoke-virtual {v11, v14, v12}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v14

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v8, v14, v5, v12, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v5

    add-int/lit8 v13, v13, -0x1

    goto :goto_49

    :cond_5d
    :goto_5d
    if-eqz v4, :cond_79

    .line 1166
    invoke-virtual {v8, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v4, 0x2

    :goto_65
    if-gtz v5, :cond_68

    goto :goto_79

    .line 1170
    :cond_68
    invoke-virtual {v8, v4, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 1173
    invoke-virtual {v11, v13, v6}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v13

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v8, v13, v4, v12, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_65

    :cond_79
    :goto_79
    if-eqz v3, :cond_9d

    .line 1184
    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v3, 0x2

    :goto_81
    if-gtz v4, :cond_84

    goto :goto_9d

    .line 1188
    :cond_84
    invoke-direct {v8, v9, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 1190
    invoke-virtual {v8, v3, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1193
    iget v13, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v14, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    invoke-virtual {v11, v13, v14, v5, v12}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v8, v5, v3, v12, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_81

    :cond_9d
    :goto_9d
    if-eqz v2, :cond_c1

    .line 1208
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    :goto_a5
    if-gtz v3, :cond_a8

    goto :goto_c1

    .line 1212
    :cond_a8
    invoke-direct {v8, v9, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v2

    .line 1214
    invoke-virtual {v8, v2, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1217
    iget v5, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v13, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    invoke-virtual {v11, v5, v13, v4, v6}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v8, v4, v2, v12, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_a5

    :cond_c1
    :goto_c1
    if-nez v1, :cond_c7

    .line 1240
    invoke-virtual {v11}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitEnd()V

    return v0

    .line 1233
    :cond_c7
    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1234
    iput-object v7, v1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1235
    invoke-virtual {v11, v1}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object v1, v2

    goto :goto_c1

    .line 1101
    :cond_d0
    invoke-virtual {v8, v0, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1102
    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v8, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v18

    add-int/lit8 v7, v0, 0x6

    .line 1106
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->CONSTANT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1107
    invoke-virtual {v8, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-nez v0, :cond_ed

    const/16 v16, 0x0

    goto :goto_142

    .line 1108
    :cond_ed
    invoke-virtual {v8, v0, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_142

    .line 1109
    :cond_f4
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1110
    invoke-virtual {v8, v7, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_142

    .line 1111
    :cond_102
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->DEPRECATED:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    const/high16 v0, 0x20000

    or-int/2addr v0, v12

    move v12, v0

    goto :goto_11a

    .line 1113
    :cond_10f
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->SYNTHETIC:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    or-int/lit16 v0, v12, 0x1000

    move v12, v0

    .line 1111
    :goto_11a
    goto :goto_142

    .line 1115
    :cond_11b
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    move v5, v7

    goto :goto_142

    .line 1117
    :cond_125
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    move v3, v7

    goto :goto_142

    .line 1119
    :cond_12f
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    move v4, v7

    goto :goto_142

    .line 1121
    :cond_139
    sget-object v0, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    move v2, v7

    .line 1110
    :goto_142
    move/from16 v17, v7

    const/16 v19, 0x0

    const/16 v25, 0x0

    goto :goto_182

    .line 1124
    :cond_149
    iget-object v0, v9, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    const/16 v17, 0x0

    move-object/from16 v19, v17

    check-cast v19, [Lzeroaicy/org/objectweb/asm/Label;

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object v8, v1

    move-object/from16 v1, v21

    move/from16 v21, v2

    move-object v2, v6

    move/from16 v22, v3

    move v3, v7

    move/from16 v23, v4

    move/from16 v4, v18

    move/from16 v24, v5

    move-object v5, v10

    const/16 v25, 0x0

    move/from16 v6, v19

    move-object/from16 v19, v17

    move/from16 v17, v7

    move-object/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    .line 1133
    iput-object v8, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object v1, v0

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    :goto_182
    add-int v0, v17, v18

    add-int/lit8 v11, v11, -0x1

    const/4 v6, 0x0

    move-object/from16 v8, p0

    move-object/from16 v7, v19

    goto/16 :goto_35
.end method

.method private readMethod(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I
    .registers 37

    .line 1254
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    iget-object v11, v9, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 1258
    invoke-virtual {v8, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    iput v0, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    .line 1259
    add-int/lit8 v0, v10, 0x2

    invoke-virtual {v8, v0, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    add-int/lit8 v12, v10, 0x4

    .line 1260
    invoke-virtual {v8, v12, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 1270
    const/4 v13, 0x0

    move-object v0, v13

    check-cast v0, [Ljava/lang/String;

    .line 1293
    move-object v0, v13

    check-cast v0, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1295
    add-int/lit8 v0, v10, 0x6

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v10, 0x8

    move v15, v0

    move v7, v1

    move-object/from16 v18, v13

    move-object/from16 v19, v18

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_44
    const/high16 v23, 0x20000

    if-gtz v15, :cond_199

    .line 1356
    iget v15, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    iget-object v14, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    iget-object v13, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    if-nez v6, :cond_59

    const/16 v26, 0x0

    move-object/from16 v27, v26

    check-cast v27, Ljava/lang/String;

    const/16 v27, 0x0

    goto :goto_5d

    :cond_59
    invoke-virtual {v8, v6, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v27

    :goto_5d
    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v29, v1

    move v1, v15

    move v15, v2

    move-object v2, v14

    move v14, v3

    move-object v3, v13

    move v13, v4

    move-object/from16 v4, v27

    move/from16 v30, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move-result-object v5

    if-nez v5, :cond_76

    return v7

    .line 1371
    :cond_76
    instance-of v0, v5, Lzeroaicy/org/objectweb/asm/MethodWriter;

    if-eqz v0, :cond_a3

    .line 1372
    move-object v4, v5

    check-cast v4, Lzeroaicy/org/objectweb/asm/MethodWriter;

    .line 1373
    iget v0, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    and-int v0, v0, v23

    if-nez v0, :cond_85

    const/4 v3, 0x0

    goto :goto_86

    :cond_85
    const/4 v3, 0x1

    :goto_86
    invoke-virtual {v8, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 p1, v15

    move-object v15, v4

    move v4, v12

    move-object v12, v5

    move v5, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/MethodWriter;->canCopyMethodAttributes(Lzeroaicy/org/objectweb/asm/ClassReader;ZZIII)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1380
    sub-int v0, v7, v10

    invoke-virtual {v15, v10, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->setMethodAttributesSource(II)V

    return v7

    .line 1371
    :cond_a3
    move-object v12, v5

    move/from16 p1, v15

    .line 1380
    :cond_a6
    if-eqz v13, :cond_ca

    .line 1386
    iget v0, v9, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_ca

    .line 1387
    invoke-virtual {v8, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v4, v13, 0x1

    :goto_b5
    if-gtz v0, :cond_b8

    goto :goto_ca

    .line 1391
    :cond_b8
    invoke-virtual {v8, v4, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v4, 0x2

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_b5

    :cond_ca
    :goto_ca
    if-eqz v14, :cond_dc

    .line 1400
    invoke-virtual {v12}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 1401
    const/4 v1, 0x0

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    invoke-direct {v8, v0, v14, v1, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    if-eqz v0, :cond_dc

    .line 1403
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_dc
    if-eqz p1, :cond_fb

    .line 1409
    move/from16 v14, p1

    invoke-virtual {v8, v14}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v2, v14, 0x2

    :goto_e6
    if-gtz v0, :cond_e9

    goto :goto_fb

    .line 1413
    :cond_e9
    invoke-virtual {v8, v2, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 1416
    const/4 v3, 0x1

    invoke-virtual {v12, v1, v3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v8, v1, v2, v3, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_e6

    :cond_fb
    :goto_fb
    move/from16 v5, v29

    if-eqz v5, :cond_11b

    .line 1427
    invoke-virtual {v8, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v5, 0x2

    :goto_105
    if-gtz v0, :cond_108

    goto :goto_11b

    .line 1431
    :cond_108
    invoke-virtual {v8, v1, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1434
    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    invoke-direct {v8, v2, v1, v3, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_105

    :cond_11b
    :goto_11b
    move/from16 v4, v28

    if-eqz v4, :cond_142

    .line 1445
    invoke-virtual {v8, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v4, 0x2

    :goto_125
    if-gtz v0, :cond_128

    goto :goto_142

    .line 1449
    :cond_128
    invoke-direct {v8, v9, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v1

    .line 1451
    invoke-virtual {v8, v1, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1454
    iget v3, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v5, 0x1

    invoke-virtual {v12, v3, v4, v2, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v8, v2, v1, v5, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_125

    :cond_142
    :goto_142
    move/from16 v3, v30

    if-eqz v3, :cond_16b

    .line 1469
    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, v3, 0x2

    :goto_14c
    if-gtz v0, :cond_150

    const/4 v3, 0x1

    goto :goto_16c

    .line 1473
    :cond_150
    invoke-direct {v8, v9, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v1

    .line 1475
    invoke-virtual {v8, v1, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1478
    iget v3, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v5, 0x0

    invoke-virtual {v12, v3, v4, v2, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    invoke-direct {v8, v2, v1, v3, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_14c

    .line 1454
    :cond_16b
    const/4 v3, 0x1

    .line 1478
    :goto_16c
    move/from16 v2, v20

    if-eqz v2, :cond_173

    .line 1493
    invoke-direct {v8, v12, v9, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readParameterAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)V

    :cond_173
    move/from16 v1, v21

    if-eqz v1, :cond_17b

    .line 1499
    const/4 v0, 0x0

    invoke-direct {v8, v12, v9, v1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readParameterAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)V

    :cond_17b
    move-object/from16 v0, v19

    :goto_17d
    if-nez v0, :cond_18d

    move/from16 v1, v22

    if-eqz v1, :cond_189

    .line 1517
    invoke-virtual {v12}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 1518
    invoke-direct {v8, v12, v9, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readCode(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;I)V

    .line 1522
    :cond_189
    invoke-virtual {v12}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitEnd()V

    return v7

    .line 1509
    :cond_18d
    move/from16 v1, v22

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1510
    const/4 v3, 0x0

    iput-object v3, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1511
    invoke-virtual {v12, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object v0, v2

    goto :goto_17d

    .line 1299
    :cond_199
    move v14, v3

    move v13, v4

    move v3, v5

    move v4, v0

    move v5, v1

    move/from16 v1, v21

    const/4 v0, 0x0

    move/from16 v21, v2

    move/from16 v2, v20

    invoke-virtual {v8, v7, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1300
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v27

    add-int/lit8 v0, v7, 0x6

    .line 1304
    move/from16 v28, v1

    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 1305
    iget v1, v9, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    const/16 v25, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1c5

    move/from16 v22, v0

    :cond_1c5
    move/from16 v24, v0

    move v0, v4

    move v1, v5

    move v4, v13

    move/from16 v2, v21

    move/from16 v21, v28

    const/16 v23, 0x0

    const/16 v26, 0x0

    move v5, v3

    move v3, v14

    goto/16 :goto_306

    .line 1308
    :cond_1d6
    const/16 v25, 0x1

    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->EXCEPTIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 1310
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    add-int/lit8 v7, v7, 0x8

    move/from16 v30, v3

    move v3, v7

    const/4 v7, 0x0

    :goto_1ec
    if-lt v7, v1, :cond_1f6

    move/from16 v17, v0

    move-object/from16 v18, v2

    move v1, v5

    move v3, v14

    goto/16 :goto_298

    .line 1313
    :cond_1f6
    invoke-virtual {v8, v3, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v7

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1ec

    .line 1316
    :cond_201
    move/from16 v30, v3

    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 1317
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    move v1, v5

    move v3, v14

    goto/16 :goto_298

    .line 1318
    :cond_213
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->DEPRECATED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_225

    .line 1319
    iget v1, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    or-int v1, v1, v23

    iput v1, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    move v1, v5

    move v3, v14

    goto/16 :goto_298

    .line 1320
    :cond_225
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23d

    move v2, v0

    move/from16 v24, v2

    move v0, v4

    move v1, v5

    move v3, v14

    move/from16 v21, v28

    move/from16 v29, v30

    const/16 v23, 0x0

    const/16 v26, 0x0

    goto/16 :goto_303

    .line 1322
    :cond_23d
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_249

    move v4, v0

    move v1, v5

    move v3, v14

    goto :goto_298

    .line 1324
    :cond_249
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->ANNOTATION_DEFAULT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_254

    move v3, v0

    move v1, v5

    goto :goto_298

    .line 1326
    :cond_254
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->SYNTHETIC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_267

    .line 1328
    iget v1, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v9, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    move v1, v5

    move v3, v14

    const/16 v16, 0x1

    goto :goto_2a5

    .line 1329
    :cond_267
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_272

    move v1, v0

    move v3, v14

    goto :goto_298

    .line 1331
    :cond_272
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28c

    move/from16 v24, v0

    move v1, v5

    move v3, v14

    move/from16 v2, v21

    move/from16 v21, v28

    const/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v5, v24

    move v0, v4

    move v4, v13

    goto/16 :goto_306

    .line 1333
    :cond_28c
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_299

    move/from16 v20, v0

    move v1, v5

    move v3, v14

    .line 1317
    :goto_298
    goto :goto_2a5

    .line 1335
    :cond_299
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b3

    move/from16 v28, v0

    move v1, v5

    move v3, v14

    .line 1317
    :goto_2a5
    move/from16 v24, v0

    move v0, v4

    move/from16 v2, v21

    move/from16 v21, v28

    move/from16 v29, v30

    const/16 v23, 0x0

    const/16 v26, 0x0

    goto :goto_303

    .line 1337
    :cond_2b3
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->METHOD_PARAMETERS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2cd

    move/from16 v24, v0

    move v1, v5

    move v3, v14

    move/from16 v2, v21

    move/from16 v21, v28

    move/from16 v5, v30

    const/16 v23, 0x0

    const/16 v26, 0x0

    move v0, v4

    move/from16 v4, v24

    goto :goto_306

    .line 1340
    :cond_2cd
    iget-object v1, v9, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    const/16 v23, 0x0

    move-object/from16 v3, v23

    check-cast v3, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v7, -0x1

    const/16 v25, 0x0

    move/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v29, v30

    move/from16 v3, v24

    move/from16 v30, v4

    move/from16 v4, v27

    move/from16 v31, v5

    move-object v5, v11

    move/from16 v32, v6

    move v6, v7

    move-object/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    .line 1349
    move-object/from16 v1, v19

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v19, v0

    move v3, v14

    move/from16 v2, v21

    move/from16 v21, v28

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v6, v32

    .line 1317
    :goto_303
    move v4, v13

    move/from16 v5, v29

    .line 1349
    :goto_306
    add-int v7, v24, v27

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v13, v23

    goto/16 :goto_44
.end method

.method private readModuleAttributes(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;IILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ClassVisitor;",
            "Lzeroaicy/org/objectweb/asm/Context;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 777
    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 781
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v0

    .line 782
    add-int/lit8 v1, p3, 0x2

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 783
    add-int/lit8 v2, p3, 0x4

    invoke-virtual {p0, v2, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-virtual {p1, v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    move-result-object p1

    if-nez p1, :cond_19

    return-void

    :cond_19
    if-eqz p5, :cond_1e

    .line 792
    invoke-virtual {p1, p5}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    :cond_1e
    if-eqz p4, :cond_35

    .line 797
    invoke-virtual {p0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p5

    add-int/lit8 p4, p4, 0x2

    :goto_26
    if-gtz p5, :cond_29

    goto :goto_35

    .line 800
    :cond_29
    invoke-virtual {p0, p4, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 p5, p5, -0x1

    goto :goto_26

    .line 806
    :cond_35
    :goto_35
    add-int/lit8 p4, p3, 0x6

    invoke-virtual {p0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x8

    :goto_3d
    if-gtz p4, :cond_f2

    .line 818
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_45
    const/4 p5, 0x0

    const/4 v0, 0x0

    if-gtz p4, :cond_c3

    .line 839
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_4f
    if-gtz p4, :cond_94

    .line 859
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_57
    if-gtz p4, :cond_88

    .line 867
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    move v0, p4

    :goto_60
    if-gtz v0, :cond_66

    .line 883
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitEnd()V

    return-void

    .line 871
    :cond_66
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    .line 872
    add-int/lit8 p4, p3, 0x2

    invoke-virtual {p0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 p3, p3, 0x4

    .line 874
    new-array v3, v2, [Ljava/lang/String;

    const/4 p4, 0x0

    :goto_75
    if-lt p4, v2, :cond_7d

    .line 879
    invoke-virtual {p1, v1, v3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_60

    .line 876
    :cond_7d
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p4

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p4, p4, 0x1

    goto :goto_75

    .line 862
    :cond_88
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p4, p4, -0x1

    goto :goto_57

    .line 843
    :cond_94
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v1

    .line 844
    add-int/lit8 v2, p3, 0x2

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 845
    add-int/lit8 v3, p3, 0x4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x6

    .line 847
    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    if-eqz v3, :cond_bc

    .line 849
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_ae
    if-lt v5, v3, :cond_b1

    goto :goto_bd

    .line 851
    :cond_b1
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    :cond_bc
    move-object v4, v0

    .line 855
    :goto_bd
    invoke-virtual {p1, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_4f

    .line 823
    :cond_c3
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v1

    .line 824
    add-int/lit8 v2, p3, 0x2

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 825
    add-int/lit8 v3, p3, 0x4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x6

    .line 827
    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    if-eqz v3, :cond_eb

    .line 829
    new-array v4, v3, [Ljava/lang/String;

    :goto_dc
    if-lt p5, v3, :cond_e0

    move-object v0, v4

    goto :goto_eb

    .line 831
    :cond_e0
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p5

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p5, p5, 0x1

    goto :goto_dc

    .line 835
    :cond_eb
    :goto_eb
    invoke-virtual {p1, v1, v2, v0}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_45

    .line 810
    :cond_f2
    invoke-virtual {p0, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object p5

    .line 811
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 812
    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p0, v1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p3, p3, 0x6

    .line 814
    invoke-virtual {p1, p5, v0, v1}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_3d
.end method

.method private readParameterAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/MethodVisitor;",
            "Lzeroaicy/org/objectweb/asm/Context;",
            "IZ)V"
        }
    .end annotation

    .line 2948
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 2949
    invoke-virtual {p1, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    .line 2950
    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    const/4 v0, 0x0

    :goto_e
    if-lt v0, p3, :cond_11

    return-void

    .line 2952
    :cond_11
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_17
    if-gtz v2, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2956
    :cond_1c
    invoke-virtual {p0, v1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 2959
    invoke-virtual {p1, v0, v3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_17
.end method

.method private readRecordComponent(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I
    .registers 28

    .line 896
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 899
    invoke-virtual {v8, v0, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 900
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 908
    const/4 v13, 0x0

    move-object v1, v13

    check-cast v1, Ljava/lang/String;

    .line 919
    move-object v1, v13

    check-cast v1, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 921
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x6

    const/4 v14, 0x0

    move v15, v1

    move-object v4, v13

    move-object v7, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_29
    if-gtz v15, :cond_c4

    .line 956
    move-object/from16 v1, p1

    invoke-virtual {v1, v11, v12, v7}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    move-result-object v1

    if-nez v1, :cond_34

    return v0

    :cond_34
    const/4 v7, 0x1

    if-eqz v6, :cond_51

    .line 964
    invoke-virtual {v8, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    add-int/lit8 v6, v6, 0x2

    :goto_3d
    if-gtz v11, :cond_40

    goto :goto_51

    .line 968
    :cond_40
    invoke-virtual {v8, v6, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 971
    invoke-virtual {v1, v12, v7}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v12

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v8, v12, v6, v7, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v6

    add-int/lit8 v11, v11, -0x1

    goto :goto_3d

    :cond_51
    :goto_51
    if-eqz v5, :cond_6d

    .line 982
    invoke-virtual {v8, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v5, 0x2

    :goto_59
    if-gtz v6, :cond_5c

    goto :goto_6d

    .line 986
    :cond_5c
    invoke-virtual {v8, v5, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 989
    invoke-virtual {v1, v11, v14}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v11

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v8, v11, v5, v7, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_59

    :cond_6d
    :goto_6d
    if-eqz v3, :cond_91

    .line 1000
    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x2

    :goto_75
    if-gtz v5, :cond_78

    goto :goto_91

    .line 1004
    :cond_78
    invoke-direct {v8, v9, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 1006
    invoke-virtual {v8, v3, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1009
    iget v11, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v12, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    invoke-virtual {v1, v11, v12, v6, v7}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v8, v6, v3, v7, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v5, v5, -0x1

    goto :goto_75

    :cond_91
    :goto_91
    if-eqz v2, :cond_b5

    .line 1024
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    :goto_99
    if-gtz v3, :cond_9c

    goto :goto_b5

    .line 1028
    :cond_9c
    invoke-direct {v8, v9, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v2

    .line 1030
    invoke-virtual {v8, v2, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1033
    iget v6, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v11, v9, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    invoke-virtual {v1, v6, v11, v5, v14}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v8, v5, v2, v7, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_99

    :cond_b5
    :goto_b5
    if-nez v4, :cond_bb

    .line 1056
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitEnd()V

    return v0

    .line 1049
    :cond_bb
    iget-object v2, v4, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1050
    iput-object v13, v4, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1051
    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object v4, v2

    goto :goto_b5

    .line 925
    :cond_c4
    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 926
    add-int/lit8 v13, v0, 0x2

    invoke-virtual {v8, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v13

    add-int/lit8 v0, v0, 0x6

    .line 930
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 931
    invoke-virtual {v8, v0, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_107

    .line 932
    :cond_e0
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    move v6, v0

    goto :goto_107

    .line 934
    :cond_ea
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    move v3, v0

    goto :goto_107

    .line 936
    :cond_f4
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    move v5, v0

    goto :goto_107

    .line 938
    :cond_fe
    sget-object v1, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c

    move v2, v0

    .line 931
    :goto_107
    move/from16 v19, v0

    const/16 v16, 0x0

    goto :goto_141

    .line 941
    :cond_10c
    iget-object v1, v9, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    const/16 v16, 0x0

    move-object/from16 v17, v16

    check-cast v17, [Lzeroaicy/org/objectweb/asm/Label;

    const/16 v17, -0x1

    const/16 v18, 0x0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v2

    move-object v2, v14

    move v14, v3

    move/from16 v3, v19

    move-object/from16 v21, v4

    move v4, v13

    move/from16 v22, v5

    move-object v5, v10

    move/from16 v23, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v4

    .line 950
    move-object/from16 v0, v21

    iput-object v0, v4, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move v3, v14

    move-object/from16 v7, v17

    move/from16 v2, v20

    move/from16 v5, v22

    move/from16 v6, v23

    :goto_141
    add-int v0, v19, v13

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v13, v16

    const/4 v14, 0x0

    goto/16 :goto_29
.end method

.method private readStackMapFrame(IZZLzeroaicy/org/objectweb/asm/Context;)I
    .registers 21

    .line 3283
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    iget-object v8, v7, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 3284
    iget-object v9, v7, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    const/16 v0, 0xff

    if-eqz p2, :cond_16

    .line 3288
    iget-object v1, v6, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte v1, v1, p1

    and-int/2addr v1, v0

    add-int/lit8 v2, p1, 0x1

    move v10, v1

    move v1, v2

    goto :goto_1d

    .line 3291
    :cond_16
    const/4 v1, -0x1

    iput v1, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    move/from16 v1, p1

    const/16 v10, 0xff

    :goto_1d
    nop

    .line 3294
    const/4 v11, 0x0

    iput v11, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    const/4 v2, 0x3

    const/16 v3, 0x40

    const/4 v12, 0x1

    if-ge v10, v3, :cond_2d

    .line 3297
    iput v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3298
    iput v11, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    goto/16 :goto_ca

    :cond_2d
    const/16 v3, 0x80

    const/4 v13, 0x4

    if-ge v10, v3, :cond_45

    .line 3301
    iget-object v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    .line 3304
    iput v13, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3305
    iput v12, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    add-int/lit8 v10, v10, -0x40

    goto/16 :goto_ca

    :cond_45
    const/16 v3, 0xf7

    if-lt v10, v3, :cond_f2

    .line 3307
    invoke-virtual {v6, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    add-int/lit8 v4, v1, 0x2

    if-ne v10, v3, :cond_64

    .line 3310
    iget-object v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v0

    .line 3313
    iput v13, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3314
    iput v12, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    move v1, v0

    goto/16 :goto_c9

    :cond_64
    const/16 v3, 0xf8

    const/4 v13, 0x2

    const/16 v5, 0xfb

    if-lt v10, v3, :cond_7d

    if-ge v10, v5, :cond_7d

    .line 3316
    iput v13, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3317
    rsub-int v0, v10, 0xfb

    iput v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3318
    iget v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    iget v1, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    sub-int/2addr v0, v1

    iput v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 3319
    iput v11, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    goto :goto_83

    :cond_7d
    if-ne v10, v5, :cond_85

    .line 3321
    iput v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3322
    iput v11, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    :goto_83
    move v1, v4

    goto :goto_c9

    :cond_85
    if-ge v10, v0, :cond_b1

    if-eqz p3, :cond_8c

    .line 3324
    iget v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    goto :goto_8d

    :cond_8c
    const/4 v0, 0x0

    :goto_8d
    add-int/lit16 v10, v10, -0xfb

    move v13, v0

    move v1, v4

    move v15, v10

    :goto_92
    if-gtz v15, :cond_a2

    .line 3330
    iput v12, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3331
    iput v10, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3332
    iget v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    iget v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    add-int/2addr v0, v2

    iput v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 3333
    iput v11, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    goto :goto_c9

    .line 3326
    :cond_a2
    iget-object v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v13, v12

    goto :goto_92

    .line 3335
    :cond_b1
    invoke-virtual {v6, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    .line 3337
    iput v11, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3338
    iput v10, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3339
    iput v10, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    add-int/lit8 v1, v1, 0x4

    const/4 v15, 0x0

    :goto_be
    if-lt v15, v10, :cond_e4

    .line 3345
    invoke-virtual {v6, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/2addr v1, v13

    .line 3347
    iput v10, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    :goto_c7
    if-lt v11, v10, :cond_d6

    :goto_c9
    move v10, v14

    .line 3357
    :goto_ca
    iget v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    add-int/2addr v10, v12

    add-int/2addr v0, v10

    iput v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    .line 3358
    iget v0, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    invoke-direct {v6, v0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    return v1

    .line 3349
    :cond_d6
    iget-object v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move v3, v11

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_c7

    .line 3341
    :cond_e4
    iget-object v2, v7, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move v3, v15

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v15, v15, 0x1

    goto :goto_be

    .line 3355
    :cond_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_f9

    :goto_f8
    throw v0

    :goto_f9
    goto :goto_f8
.end method

.method private static readStream(Ljava/io/InputStream;Z)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "PMD.UseTryWithResources"
    .end annotation

    if-eqz p0, :cond_4b

    .line 318
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/ClassReader;->computeBufferSize(Ljava/io/InputStream;)I

    move-result v0

    .line 319
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .line 321
    :try_start_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_3f

    .line 322
    :try_start_f
    new-array v1, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 325
    :goto_13
    invoke-virtual {p0, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    .line 329
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    const/4 v0, 0x1

    if-ne v4, v0, :cond_29

    if-eqz p1, :cond_25

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 338
    :cond_25
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1

    .line 333
    :cond_29
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz p1, :cond_32

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 338
    :cond_32
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    .line 326
    :cond_36
    invoke-virtual {v2, v1, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_3c

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :catchall_3c
    move-exception v0

    move-object v1, v2

    goto :goto_40

    :catchall_3f
    move-exception v0

    :goto_40
    if-eqz p1, :cond_45

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_45
    if-eqz v1, :cond_4a

    .line 338
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4a
    throw v0

    .line 316
    :cond_4b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Class not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :goto_53
    throw p0

    :goto_54
    goto :goto_53
.end method

.method private readStringish(I[C)Ljava/lang/String;
    .registers 4

    .line 3730
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I
    .registers 13

    .line 2862
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_71

    if-eq v1, v2, :cond_71

    const/high16 v3, -0x1000000

    packed-switch v1, :pswitch_data_92

    packed-switch v1, :pswitch_data_a6

    .line 2920
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2893
    :pswitch_19  #0x13, 0x14, 0x15
    and-int/2addr v0, v3

    add-int/2addr p2, v2

    goto :goto_76

    .line 2920
    :pswitch_1c  #0x47, 0x48, 0x49, 0x4a, 0x4b
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_76

    :pswitch_23  #0x43, 0x44, 0x45, 0x46
    and-int/2addr v0, v3

    goto :goto_27

    .line 2893
    :pswitch_25  #0x10, 0x11, 0x12, 0x17, 0x42
    and-int/lit16 v0, v0, -0x100

    :goto_27
    add-int/lit8 p2, p2, 0x3

    goto :goto_76

    .line 2879
    :pswitch_2a  #0x40, 0x41
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x3

    .line 2881
    new-array v4, v1, [Lzeroaicy/org/objectweb/asm/Label;

    iput-object v4, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    .line 2882
    new-array v4, v1, [Lzeroaicy/org/objectweb/asm/Label;

    iput-object v4, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    .line 2883
    new-array v4, v1, [I

    iput-object v4, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/4 v4, 0x0

    :goto_3f
    if-lt v4, v1, :cond_43

    and-int/2addr v0, v3

    goto :goto_76

    .line 2885
    :cond_43
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 2886
    add-int/lit8 v6, p2, 0x2

    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 2887
    add-int/lit8 v7, p2, 0x4

    invoke-virtual {p0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 p2, p2, 0x6

    .line 2889
    iget-object v8, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    iget-object v9, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v5, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v9

    aput-object v9, v8, v4

    .line 2891
    iget-object v8, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    add-int/2addr v5, v6

    iget-object v6, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v5, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v5

    aput-object v5, v8, v4

    .line 2893
    iget-object v5, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_71
    :pswitch_71  #0x16
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    .line 2922
    :goto_76
    iput v0, p1, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    .line 2924
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v0

    if-nez v0, :cond_83

    .line 2925
    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Lzeroaicy/org/objectweb/asm/TypePath;

    goto :goto_8a

    :cond_83
    new-instance v1, Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v1, v3, p2}, Lzeroaicy/org/objectweb/asm/TypePath;-><init>([BI)V

    :goto_8a
    iput-object v1, p1, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    add-int/2addr p2, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    return p2

    nop

    :pswitch_data_92
    .packed-switch 0x10
        :pswitch_25  #00000010
        :pswitch_25  #00000011
        :pswitch_25  #00000012
        :pswitch_19  #00000013
        :pswitch_19  #00000014
        :pswitch_19  #00000015
        :pswitch_71  #00000016
        :pswitch_25  #00000017
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x40
        :pswitch_2a  #00000040
        :pswitch_2a  #00000041
        :pswitch_25  #00000042
        :pswitch_23  #00000043
        :pswitch_23  #00000044
        :pswitch_23  #00000045
        :pswitch_23  #00000046
        :pswitch_1c  #00000047
        :pswitch_1c  #00000048
        :pswitch_1c  #00000049
        :pswitch_1c  #0000004a
        :pswitch_1c  #0000004b
    .end packed-switch
.end method

.method private readTypeAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)[I
    .registers 15

    .line 2741
    iget-object v0, p2, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 2744
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_b
    if-lt v3, v1, :cond_e

    return-object v2

    .line 2748
    :cond_e
    aput p3, v2, v3

    .line 2751
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/16 v6, 0x17

    if-eq v5, v6, :cond_4e

    packed-switch v5, :pswitch_data_8c

    packed-switch v5, :pswitch_data_96

    .line 2794
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_26  #0x47, 0x48, 0x49, 0x4a, 0x4b
    add-int/lit8 p3, p3, 0x4

    goto :goto_50

    .line 2757
    :pswitch_29  #0x40, 0x41
    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 p3, p3, 0x3

    :goto_31
    if-gtz v6, :cond_34

    goto :goto_50

    .line 2760
    :cond_34
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 2761
    add-int/lit8 v8, p3, 0x2

    invoke-virtual {p0, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 p3, p3, 0x6

    .line 2764
    iget-object v9, p2, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v7, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 2765
    add-int/2addr v7, v8

    iget-object v8, p2, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v7, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    add-int/lit8 v6, v6, -0x1

    goto :goto_31

    :cond_4e
    :pswitch_4e  #0x10, 0x11, 0x12, 0x42, 0x43, 0x44, 0x45, 0x46
    add-int/lit8 p3, p3, 0x3

    .line 2798
    :goto_50
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v6

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v7, :cond_7c

    if-nez v6, :cond_60

    .line 2801
    move-object v5, v8

    check-cast v5, Lzeroaicy/org/objectweb/asm/TypePath;

    goto :goto_67

    :cond_60
    new-instance v8, Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v8, v5, p3}, Lzeroaicy/org/objectweb/asm/TypePath;-><init>([BI)V

    :goto_67
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    add-int/2addr p3, v6

    .line 2804
    invoke-virtual {p0, p3, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 2807
    and-int/lit16 v4, v4, -0x100

    invoke-virtual {p1, v4, v8, v5, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    add-int/lit8 p3, p3, 0x2

    invoke-direct {p0, v4, p3, v9, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p3

    goto :goto_88

    .line 2821
    :cond_7c
    move-object v4, v8

    check-cast v4, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    add-int/2addr p3, v6

    invoke-direct {p0, v8, p3, v9, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result p3

    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    nop

    :pswitch_data_8c
    .packed-switch 0x10
        :pswitch_4e  #00000010
        :pswitch_4e  #00000011
        :pswitch_4e  #00000012
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x40
        :pswitch_29  #00000040
        :pswitch_29  #00000041
        :pswitch_4e  #00000042
        :pswitch_4e  #00000043
        :pswitch_4e  #00000044
        :pswitch_4e  #00000045
        :pswitch_4e  #00000046
        :pswitch_26  #00000047
        :pswitch_26  #00000048
        :pswitch_26  #00000049
        :pswitch_26  #0000004a
        :pswitch_26  #0000004b
    .end packed-switch
.end method

.method private readUtf(II[C)Ljava/lang/String;
    .registers 12

    .line 3695
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    const/4 v1, 0x0

    move v2, p1

    const/4 v3, 0x0

    :goto_5
    add-int v4, p2, p1

    if-lt v2, v4, :cond_f

    .line 3711
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_f
    add-int/lit8 v4, v2, 0x1

    .line 3697
    aget-byte v5, v0, v2

    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_20

    and-int/lit8 v2, v5, 0x7f

    int-to-char v2, v2

    .line 3699
    aput-char v2, p3, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_5

    :cond_20
    and-int/lit16 v6, v5, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_37

    .line 3701
    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v5, v4

    int-to-char v4, v5

    aput-char v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 3704
    :cond_37
    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v5, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v5, v4

    int-to-char v4, v5

    aput-char v4, p3, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I
    .registers 8

    .line 3383
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_48

    .line 3415
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3411
    :pswitch_11  #0x8
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    invoke-direct {p0, p4, p5}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object p4

    aput-object p4, p2, p3

    goto :goto_22

    .line 3407
    :pswitch_1c  #0x7
    invoke-virtual {p0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    :goto_22
    add-int/lit8 v1, p1, 0x3

    goto :goto_47

    .line 3404
    :pswitch_25  #0x6
    sget-object p1, Lzeroaicy/org/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_47

    .line 3401
    :pswitch_2a  #0x5
    sget-object p1, Lzeroaicy/org/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_47

    .line 3398
    :pswitch_2f  #0x4
    sget-object p1, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_47

    .line 3395
    :pswitch_34  #0x3
    sget-object p1, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_47

    .line 3392
    :pswitch_39  #0x2
    sget-object p1, Lzeroaicy/org/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_47

    .line 3389
    :pswitch_3e  #0x1
    sget-object p1, Lzeroaicy/org/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_47

    .line 3386
    :pswitch_43  #0x0
    sget-object p1, Lzeroaicy/org/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object p1, p2, p3

    :goto_47
    return v1

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_43  #00000000
        :pswitch_3e  #00000001
        :pswitch_39  #00000002
        :pswitch_34  #00000003
        :pswitch_2f  #00000004
        :pswitch_2a  #00000005
        :pswitch_25  #00000006
        :pswitch_1c  #00000007
        :pswitch_11  #00000008
    .end packed-switch
.end method


# virtual methods
.method public accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ClassVisitor;",
            "I)V"
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;[Lzeroaicy/org/objectweb/asm/Attribute;I)V

    return-void
.end method

.method public accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;[Lzeroaicy/org/objectweb/asm/Attribute;I)V
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ClassVisitor;",
            "[",
            "Lzeroaicy/org/objectweb/asm/Attribute;",
            "I)V"
        }
    .end annotation

    .line 449
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    new-instance v11, Lzeroaicy/org/objectweb/asm/Context;

    invoke-direct {v11}, Lzeroaicy/org/objectweb/asm/Context;-><init>()V

    .line 450
    move-object/from16 v12, p2

    iput-object v12, v11, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    .line 451
    iput v10, v11, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    .line 452
    iget v0, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    iput-object v0, v11, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 455
    iget-object v13, v11, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 456
    iget v0, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    .line 457
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 458
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    .line 459
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    .line 460
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x8

    const/4 v6, 0x0

    move v5, v0

    const/4 v0, 0x0

    :goto_38
    if-lt v0, v2, :cond_480

    .line 474
    const/4 v4, 0x0

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 503
    move-object v0, v4

    check-cast v0, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v0

    .line 506
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v3, v1

    move/from16 v16, v2

    move-object v1, v4

    move-object v2, v1

    move-object v12, v2

    move-object/from16 v18, v12

    move-object/from16 v20, v18

    move-object/from16 v27, v20

    move-object/from16 v21, v13

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_6e
    if-gtz v16, :cond_229

    .line 573
    iget-object v0, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    move/from16 v31, v13

    const/4 v13, 0x1

    aget v0, v0, v13

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    move-object/from16 v0, p1

    move-object v13, v1

    move/from16 v1, v16

    move-object v8, v2

    move v2, v3

    move-object v3, v14

    move-object v14, v4

    move-object/from16 v4, v18

    move v14, v5

    move-object v5, v15

    const/4 v15, 0x0

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_9a

    if-nez v8, :cond_97

    if-eqz v13, :cond_9a

    .line 579
    :cond_97
    invoke-virtual {v9, v8, v13}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    if-eqz v17, :cond_aa

    .line 584
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move/from16 v3, v17

    move/from16 v4, v19

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModuleAttributes(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;IILjava/lang/String;)V

    :cond_aa
    if-eqz v12, :cond_af

    .line 590
    invoke-virtual {v9, v12}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_af
    if-eqz v31, :cond_df

    .line 595
    move-object/from16 v8, p0

    move-object/from16 v6, v21

    move/from16 v5, v31

    invoke-virtual {v8, v5, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    .line 596
    add-int/lit8 v13, v5, 0x2

    invoke-virtual {v8, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-nez v1, :cond_c5

    const/4 v4, 0x0

    goto :goto_cd

    .line 597
    :cond_c5
    iget-object v2, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    :goto_cd
    if-nez v1, :cond_d1

    const/4 v1, 0x0

    goto :goto_db

    .line 598
    :cond_d1
    iget-object v2, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v1, v2, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 599
    :goto_db
    invoke-virtual {v9, v0, v4, v1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    .line 590
    :cond_df
    move-object/from16 v8, p0

    move-object/from16 v6, v21

    .line 599
    :goto_e3
    move/from16 v4, v23

    if-eqz v4, :cond_104

    .line 604
    invoke-virtual {v8, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v23, v4, 0x2

    move/from16 v1, v23

    :goto_ef
    if-gtz v0, :cond_f2

    goto :goto_104

    .line 608
    :cond_f2
    invoke-virtual {v8, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 611
    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v8, v2, v1, v3, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_ef

    :cond_104
    :goto_104
    move/from16 v2, v24

    if-eqz v2, :cond_125

    .line 622
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v24, v2, 0x2

    move/from16 v1, v24

    :goto_110
    if-gtz v0, :cond_113

    goto :goto_125

    .line 626
    :cond_113
    invoke-virtual {v8, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual {v9, v2, v15}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    invoke-direct {v8, v2, v1, v3, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_110

    :cond_125
    :goto_125
    move/from16 v1, v22

    if-eqz v1, :cond_14e

    .line 640
    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v22, v1, 0x2

    move/from16 v1, v22

    :goto_131
    if-gtz v0, :cond_134

    goto :goto_14e

    .line 644
    :cond_134
    invoke-direct {v8, v11, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v1

    .line 646
    invoke-virtual {v8, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 649
    iget v3, v11, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v11, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v2, v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v8, v2, v1, v5, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_131

    :cond_14e
    :goto_14e
    move/from16 v0, v25

    if-eqz v0, :cond_177

    .line 664
    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v25, v0, 0x2

    move/from16 v0, v25

    :goto_15a
    if-gtz v1, :cond_15d

    goto :goto_177

    .line 668
    :cond_15d
    invoke-direct {v8, v11, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v0

    .line 670
    invoke-virtual {v8, v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 673
    iget v3, v11, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v11, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    invoke-virtual {v9, v3, v4, v2, v15}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    invoke-direct {v8, v2, v0, v3, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_15a

    :cond_177
    :goto_177
    move-object/from16 v0, v27

    :goto_179
    if-nez v0, :cond_216

    move/from16 v1, v26

    if-eqz v1, :cond_196

    .line 697
    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v26, v1, 0x2

    move/from16 v1, v26

    :goto_187
    if-gtz v0, :cond_18a

    goto :goto_196

    .line 700
    :cond_18a
    invoke-virtual {v8, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_187

    :cond_196
    :goto_196
    move/from16 v2, v28

    if-eqz v2, :cond_1b1

    .line 707
    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v28, v2, 0x2

    move/from16 v1, v28

    :goto_1a2
    if-gtz v0, :cond_1a5

    goto :goto_1b1

    .line 710
    :cond_1a5
    invoke-virtual {v8, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a2

    :cond_1b1
    :goto_1b1
    move/from16 v3, v29

    if-eqz v3, :cond_1de

    .line 718
    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v29, v3, 0x2

    move/from16 v1, v29

    :goto_1bd
    if-gtz v0, :cond_1c0

    goto :goto_1de

    .line 721
    :cond_1c0
    invoke-virtual {v8, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v8, v3, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v8, v4, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v8, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v9, v2, v3, v4, v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1bd

    :cond_1de
    :goto_1de
    move/from16 v4, v30

    if-eqz v4, :cond_1f4

    .line 732
    invoke-virtual {v8, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v30, v4, 0x2

    move/from16 v1, v30

    :goto_1ea
    if-gtz v0, :cond_1ed

    goto :goto_1f4

    .line 735
    :cond_1ed
    invoke-direct {v8, v9, v11, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readRecordComponent(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1ea

    .line 740
    :cond_1f4
    :goto_1f4
    invoke-virtual {v8, v14}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, v14, 0x2

    :goto_1fa
    if-gtz v0, :cond_20f

    .line 745
    invoke-virtual {v8, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    :goto_202
    if-gtz v0, :cond_208

    .line 752
    invoke-virtual/range {p1 .. p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void

    .line 748
    :cond_208
    invoke-direct {v8, v9, v11, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readMethod(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_202

    .line 743
    :cond_20f
    invoke-direct {v8, v9, v11, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readField(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1fa

    .line 689
    :cond_216
    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 690
    const/4 v7, 0x0

    iput-object v7, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 691
    invoke-virtual {v9, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object v0, v5

    goto/16 :goto_179

    .line 508
    :cond_229
    move-object/from16 v6, v21

    move-object/from16 v21, v14

    move v14, v5

    move v5, v13

    move-object v13, v1

    move/from16 v1, v22

    move-object/from16 v22, v2

    move/from16 v2, v24

    move/from16 v24, v26

    move/from16 v26, v29

    move-object/from16 v29, v4

    move/from16 v4, v23

    move/from16 v23, v25

    move/from16 v25, v28

    move/from16 v28, v30

    const/16 v30, 0x0

    move/from16 v31, v2

    invoke-virtual {v8, v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 509
    move/from16 v32, v1

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x6

    .line 513
    move/from16 v33, v4

    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->SOURCE_FILE:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26c

    .line 514
    invoke-virtual {v8, v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto/16 :goto_3de

    .line 515
    :cond_26c
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->INNER_CLASSES:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27d

    move v4, v0

    move-object/from16 v2, v22

    move/from16 v26, v24

    move/from16 v22, v32

    goto/16 :goto_3de

    .line 517
    :cond_27d
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->ENCLOSING_METHOD:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_290

    move v5, v0

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto/16 :goto_3de

    .line 519
    :cond_290
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->NEST_HOST:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a6

    .line 520
    invoke-virtual {v8, v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto/16 :goto_3de

    .line 521
    :cond_2a6
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->NEST_MEMBERS:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b8

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v0

    goto/16 :goto_3de

    .line 523
    :cond_2b8
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->PERMITTED_SUBCLASSES:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cc

    move/from16 v25, v0

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto/16 :goto_3de

    .line 525
    :cond_2cc
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2da

    .line 526
    invoke-virtual {v8, v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3c3

    .line 527
    :cond_2da
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ee

    move/from16 v33, v0

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto/16 :goto_3de

    .line 529
    :cond_2ee
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_300

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v0

    move/from16 v26, v24

    goto/16 :goto_3de

    .line 531
    :cond_300
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->DEPRECATED:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30d

    const/high16 v2, 0x20000

    or-int/2addr v3, v2

    goto/16 :goto_3c3

    .line 533
    :cond_30d
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->SYNTHETIC:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_319

    or-int/lit16 v3, v3, 0x1000

    goto/16 :goto_3c3

    .line 535
    :cond_319
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->SOURCE_DEBUG_EXTENSION:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33e

    .line 536
    iget-object v2, v8, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_338

    .line 539
    new-array v2, v1, [C

    invoke-direct {v8, v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto/16 :goto_3de

    .line 537
    :cond_338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 541
    :cond_33e
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_359

    move/from16 v31, v0

    move/from16 v36, v31

    move/from16 v38, v3

    move/from16 v39, v5

    move-object v9, v6

    move-object/from16 v34, v7

    move-object/from16 v4, v27

    move/from16 v37, v32

    move/from16 v32, v1

    goto/16 :goto_44e

    .line 543
    :cond_359
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37e

    move/from16 v36, v0

    move-object v9, v6

    move-object/from16 v34, v7

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v23, v33

    move/from16 v32, v1

    move-object v1, v13

    move/from16 v26, v24

    move/from16 v0, v28

    move/from16 v24, v31

    move v13, v5

    move/from16 v28, v25

    move/from16 v25, v36

    goto/16 :goto_467

    .line 545
    :cond_37e
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->RECORD:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a4

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    move/from16 v36, v0

    move-object v9, v6

    move-object/from16 v34, v7

    move-object/from16 v2, v22

    move/from16 v28, v25

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v32, v1

    move-object v1, v13

    move/from16 v25, v23

    move/from16 v26, v24

    move/from16 v24, v31

    move/from16 v23, v33

    move v13, v5

    goto/16 :goto_467

    .line 548
    :cond_3a4
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->MODULE:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b7

    move/from16 v17, v0

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto :goto_3de

    .line 550
    :cond_3b7
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->MODULE_MAIN_CLASS:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3cc

    .line 551
    invoke-virtual {v8, v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v20

    .line 526
    :goto_3c3
    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    goto :goto_3de

    .line 552
    :cond_3cc
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->MODULE_PACKAGES:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f3

    move/from16 v19, v0

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v22, v32

    move/from16 v26, v24

    .line 514
    :goto_3de
    move/from16 v36, v0

    move/from16 v32, v1

    move-object v9, v6

    move-object/from16 v34, v7

    move-object v1, v13

    move/from16 v0, v28

    move/from16 v24, v31

    move v13, v5

    move/from16 v28, v25

    move/from16 v25, v23

    move/from16 v23, v33

    goto/16 :goto_467

    .line 554
    :cond_3f3
    sget-object v4, Lzeroaicy/org/objectweb/asm/Constants;->BOOTSTRAP_METHODS:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43f

    .line 556
    move-object/from16 v4, v29

    check-cast v4, [Lzeroaicy/org/objectweb/asm/Label;

    const/16 v34, -0x1

    const/16 v35, 0x0

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v37, v32

    move/from16 v32, v1

    move-object/from16 v1, p2

    move/from16 v38, v3

    move/from16 v3, v36

    move/from16 v4, v32

    move/from16 v39, v5

    move-object v5, v6

    move-object v9, v6

    move/from16 v6, v34

    move-object/from16 v34, v7

    move-object/from16 v7, v35

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    .line 565
    move-object/from16 v4, v27

    iput-object v4, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v27, v0

    move-object v1, v13

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v0, v28

    move/from16 v22, v37

    move/from16 v3, v38

    move/from16 v13, v39

    move/from16 v26, v24

    move/from16 v28, v25

    move/from16 v24, v31

    move/from16 v25, v23

    move/from16 v23, v33

    goto :goto_467

    :cond_43f
    move/from16 v36, v0

    move/from16 v38, v3

    move/from16 v39, v5

    move-object v9, v6

    move-object/from16 v34, v7

    move-object/from16 v4, v27

    move/from16 v37, v32

    move/from16 v32, v1

    .line 541
    :goto_44e
    move-object/from16 v27, v4

    move-object v1, v13

    move-object/from16 v2, v22

    move/from16 v4, v26

    move/from16 v0, v28

    move/from16 v22, v37

    move/from16 v3, v38

    move/from16 v13, v39

    move/from16 v26, v24

    move/from16 v28, v25

    move/from16 v24, v31

    move/from16 v25, v23

    move/from16 v23, v33

    .line 565
    :goto_467
    add-int/lit8 v16, v16, -0x1

    add-int v5, v36, v32

    move/from16 v30, v0

    move v0, v5

    move v5, v14

    move-object/from16 v14, v21

    move-object/from16 v7, v34

    const/4 v6, 0x0

    move-object/from16 v21, v9

    move-object/from16 v9, p1

    move-object/from16 v40, v29

    move/from16 v29, v4

    move-object/from16 v4, v40

    goto/16 :goto_6e

    .line 463
    :cond_480
    move-object/from16 v34, v7

    move-object v9, v13

    move-object/from16 v21, v14

    const/16 v30, 0x0

    move v14, v5

    invoke-virtual {v8, v14, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v0

    add-int/lit8 v5, v14, 0x2

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, p2

    move-object/from16 v14, v21

    const/4 v6, 0x0

    move-object/from16 v9, p1

    goto/16 :goto_38
.end method

.method public getAccess()I
    .registers 2

    .line 367
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 3

    .line 378
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getFirstAttributeOffset()I
    .registers 5

    .line 3434
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 3437
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_13
    if-gtz v0, :cond_3a

    .line 3457
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    move v2, v0

    :goto_1c
    if-gtz v2, :cond_21

    add-int/lit8 v1, v1, 0x2

    return v1

    .line 3460
    :cond_21
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_29
    if-gtz v0, :cond_2e

    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 3463
    :cond_2e
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 3444
    :cond_3a
    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x8

    :goto_42
    if-gtz v2, :cond_47

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 3452
    :cond_47
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_42
.end method

.method public getInterfaces()[Ljava/lang/String;
    .registers 7

    .line 402
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 403
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 404
    new-array v2, v1, [Ljava/lang/String;

    if-lez v1, :cond_1f

    .line 406
    iget v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v3, v3, [C

    const/4 v4, 0x0

    :goto_11
    if-lt v4, v1, :cond_14

    goto :goto_1f

    :cond_14
    add-int/lit8 v0, v0, 0x2

    .line 409
    invoke-virtual {p0, v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    :goto_1f
    return-object v2
.end method

.method public getItem(I)I
    .registers 3

    .line 3566
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget p1, v0, p1

    return p1
.end method

.method public getItemCount()I
    .registers 2

    .line 3552
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .registers 2

    .line 3577
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .registers 3

    .line 390
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .registers 3

    .line 3588
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public readClass(I[C)Ljava/lang/String;
    .registers 3

    .line 3745
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .registers 9

    .line 3824
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v0, v0, p1

    .line 3825
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    packed-switch v1, :pswitch_data_a0

    packed-switch v1, :pswitch_data_b0

    .line 3853
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3837
    :pswitch_16  #0x8
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3835
    :pswitch_1b  #0x7
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzeroaicy/org/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p1

    return-object p1

    .line 3833
    :pswitch_24  #0x6
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1

    .line 3831
    :pswitch_32  #0x5
    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    .line 3829
    :pswitch_3c  #0x4
    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Float;-><init>(F)V

    return-object p1

    .line 3827
    :pswitch_4a  #0x3
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    .line 3851
    :pswitch_54  #0x11
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConstantDynamic(I[C)Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    move-result-object p1

    return-object p1

    .line 3839
    :pswitch_59  #0x10
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzeroaicy/org/objectweb/asm/Type;->getMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p1

    return-object p1

    .line 3841
    :pswitch_62  #0xf
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    .line 3842
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    .line 3843
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v0, v0, v3

    .line 3844
    invoke-virtual {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 3845
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 3846
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p2

    .line 3847
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    sub-int/2addr p1, v2

    aget-byte p1, v0, p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_94

    const/4 p1, 0x0

    const/4 v5, 0x0

    goto :goto_95

    :cond_94
    const/4 v5, 0x1

    .line 3849
    :goto_95
    new-instance p1, Lzeroaicy/org/objectweb/asm/Handle;

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    nop

    :pswitch_data_a0
    .packed-switch 0x3
        :pswitch_4a  #00000003
        :pswitch_3c  #00000004
        :pswitch_32  #00000005
        :pswitch_24  #00000006
        :pswitch_1b  #00000007
        :pswitch_16  #00000008
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0xf
        :pswitch_62  #0000000f
        :pswitch_59  #00000010
        :pswitch_54  #00000011
    .end packed-switch
.end method

.method public readInt(I)I
    .registers 6

    .line 3623
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3624
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v0, v3

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1
.end method

.method protected readLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;
    .registers 4

    .line 2683
    aget-object v0, p2, p1

    if-nez v0, :cond_b

    .line 2684
    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2686
    :cond_b
    aget-object p1, p2, p1

    return-object p1
.end method

.method public readLong(I)J
    .registers 8

    .line 3638
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 3639
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readModule(I[C)Ljava/lang/String;
    .registers 3

    .line 3760
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readPackage(I[C)Ljava/lang/String;
    .registers 3

    .line 3775
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readShort(I)S
    .registers 4

    .line 3611
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3612
    aget-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .registers 4

    .line 3656
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-eqz p1, :cond_e

    if-nez v0, :cond_9

    goto :goto_e

    .line 3660
    :cond_9
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3658
    :cond_e
    :goto_e
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    return-object p1
.end method

.method public readUnsignedShort(I)I
    .registers 4

    .line 3599
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3600
    aget-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method final readUtf(I[C)Ljava/lang/String;
    .registers 6

    .line 3673
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-eqz v1, :cond_7

    return-object v1

    .line 3677
    :cond_7
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v1, v1, p1

    .line 3678
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p2
.end method
