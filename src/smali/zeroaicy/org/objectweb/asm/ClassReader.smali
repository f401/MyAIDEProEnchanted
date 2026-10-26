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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
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

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 167
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([BIZ)V

    return-void
.end method

.method constructor <init>([BIZ)V
    .locals 12

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 195
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->b:[B

    if-eqz p3, :cond_0

    add-int/lit8 v0, p2, 0x6

    .line 198
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v3

    const/16 v4, 0x40

    if-gt v3, v4, :cond_1

    .line 204
    :cond_0
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    .line 205
    new-array v0, v9, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    .line 206
    new-array v0, v9, [Ljava/lang/String;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    add-int/lit8 v5, p2, 0xa

    move v6, v2

    move v8, v5

    move v4, v7

    move v3, v7

    move v0, v7

    :goto_0
    if-lt v6, v9, :cond_4

    .line 267
    iput v4, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    .line 269
    iput v8, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    if-eqz v0, :cond_2

    .line 272
    new-array v0, v9, [Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    :goto_1
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantDynamicValues:[Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    if-eqz v3, :cond_3

    .line 275
    invoke-direct {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readBootstrapMethodsAttribute(I)[I

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    return-void

    .line 199
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unsupported class file major version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, v1

    .line 272
    check-cast v0, [Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 275
    check-cast v0, [I

    goto :goto_2

    .line 218
    :cond_4
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    aput v10, v5, v6

    .line 220
    aget-byte v11, p1, v8

    const/4 v5, 0x3

    packed-switch v11, :pswitch_data_0

    .line 263
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    move v0, v2

    :pswitch_2
    move v3, v2

    :pswitch_3
    const/4 v6, 0x5

    move v5, v7

    .line 244
    :goto_3
    add-int v7, v8, v6

    move v6, v5

    move v8, v7

    goto :goto_0

    .line 263
    :pswitch_4
    const/4 v5, 0x4

    move v6, v5

    :goto_4
    move v5, v7

    goto :goto_3

    :pswitch_5
    add-int/lit8 v5, v6, 0x2

    const/16 v6, 0x9

    goto :goto_3

    .line 244
    :pswitch_6
    invoke-virtual {p0, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    if-le v5, v4, :cond_5

    move v4, v5

    move v6, v5

    goto :goto_4

    :cond_5
    :pswitch_7
    move v6, v5

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static computeBufferSize(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1000

    .line 352
    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private computeImplicitFrame(Lzeroaicy/org/objectweb/asm/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Context;",
            ")V"
        }
    .end annotation

    const/16 v9, 0x5b

    const/16 v8, 0x4c

    const/16 v7, 0x3b

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3202
    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 3203
    iget-object v4, p1, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 3205
    iget v2, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 3206
    const-string v2, "<init>"

    iget-object v5, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3207
    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v2, v4, v0

    :goto_0
    move v0, v1

    .line 3209
    :cond_0
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 3217
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x46

    if-eq v5, v6, :cond_a

    if-eq v5, v8, :cond_8

    const/16 v6, 0x53

    if-eq v5, v6, :cond_7

    const/16 v6, 0x49

    if-eq v5, v6, :cond_7

    const/16 v6, 0x4a

    if-eq v5, v6, :cond_6

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_7

    if-eq v5, v9, :cond_3

    packed-switch v5, :pswitch_data_0

    .line 3257
    iput v0, p1, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    return-void

    .line 3209
    :cond_1
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v2, v2, 0x2

    iget-object v5, p1, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    invoke-virtual {p0, v2, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    goto :goto_0

    .line 3232
    :pswitch_0
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v1, v4, v0

    :goto_2
    move v1, v2

    .line 3223
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3244
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 3235
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_2

    .line 3238
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 3240
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 3244
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    move v1, v2

    goto :goto_3

    .line 3229
    :cond_6
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v1, v4, v0

    goto :goto_2

    .line 3223
    :cond_7
    :pswitch_1
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v1, v4, v0

    goto :goto_2

    :cond_8
    move v1, v2

    .line 3249
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_9

    .line 3252
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3226
    :cond_a
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v1, v4, v0

    goto :goto_2

    .line 3217
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 2713
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2714
    invoke-virtual {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    :cond_0
    return-void
.end method

.method private createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;
    .locals 2

    .line 2699
    invoke-virtual {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    .line 2700
    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v1, v1, -0x2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    return-object v0
.end method

.method private getTypeAnnotationBytecodeOffset([II)I
    .locals 2

    if-eqz p1, :cond_0

    .line 2841
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_1

    .line 2846
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    goto :goto_0
.end method

.method private readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 3535
    :goto_0
    array-length v0, p1

    if-lt v1, v0, :cond_0

    .line 3539
    new-instance v0, Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-direct {v0, p2}, Lzeroaicy/org/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    check-cast v1, [C

    move-object v1, v4

    check-cast v1, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v5, -0x1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/Attribute;->read(Lzeroaicy/org/objectweb/asm/ClassReader;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    :goto_1
    return-object v0

    .line 3533
    :cond_0
    aget-object v0, p1, v1

    .line 3534
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    .line 3535
    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/Attribute;->read(Lzeroaicy/org/objectweb/asm/ClassReader;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private readBootstrapMethodsAttribute(I)[I
    .locals 7

    .line 3479
    new-array v2, p1, [C

    .line 3480
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v1

    .line 3481
    add-int/lit8 v0, v1, -0x2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    .line 3483
    invoke-virtual {p0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 3484
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v5, v1, 0x6

    .line 3486
    sget-object v6, Lzeroaicy/org/objectweb/asm/Constants;->BOOTSTRAP_METHODS:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3488
    invoke-virtual {p0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v3, v2, [I

    add-int/lit8 v0, v1, 0x8

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_0

    return-object v3

    .line 3492
    :cond_0
    aput v0, v3, v1

    .line 3495
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int v1, v5, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3502
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private readCode(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;I)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/MethodVisitor;",
            "Lzeroaicy/org/objectweb/asm/Context;",
            "I)V"
        }
    .end annotation

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    move-object/from16 v34, v0

    .line 1544
    move-object/from16 v0, p2

    iget-object v13, v0, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 1545
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v35

    .line 1546
    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 1547
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v36

    add-int/lit8 v32, p3, 0x8

    .line 1549
    move-object/from16 v0, p0

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    array-length v5, v5

    sub-int v5, v5, v32

    move/from16 v0, v36

    if-gt v0, v5, :cond_43

    add-int v30, v32, v36

    .line 1556
    add-int/lit8 v5, v36, 0x1

    new-array v15, v5, [Lzeroaicy/org/objectweb/asm/Label;

    move-object/from16 v0, p2

    iput-object v15, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    move/from16 v6, v32

    :goto_0
    move/from16 v0, v30

    if-lt v6, v0, :cond_3f

    .line 1853
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v6, v6, 0x2

    :goto_1
    if-gtz v5, :cond_3e

    .line 1881
    const/4 v5, 0x0

    check-cast v5, [I

    .line 1887
    const/4 v5, 0x0

    check-cast v5, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1889
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 v6, v6, 0x2

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move-object/from16 v16, v5

    move-object/from16 v17, v5

    move/from16 v24, v6

    move/from16 v25, v8

    :goto_2
    if-gtz v25, :cond_33

    .line 1985
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_6

    const/4 v5, 0x0

    move/from16 v33, v5

    :goto_3
    if-eqz v22, :cond_1

    .line 1990
    const/4 v5, -0x1

    move-object/from16 v0, p2

    iput v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    .line 1991
    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 1992
    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 1993
    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 1994
    new-array v5, v7, [Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 1995
    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    .line 1996
    move/from16 v0, v35

    new-array v5, v0, [Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    if-eqz v33, :cond_0

    .line 1998
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->computeImplicitFrame(Lzeroaicy/org/objectweb/asm/Context;)V

    :cond_0
    move/from16 v5, v22

    :goto_4
    add-int/lit8 v6, v23, -0x2

    if-lt v5, v6, :cond_7

    .line 2014
    :cond_1
    if-eqz v33, :cond_2

    .line 2019
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2

    .line 2026
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 2014
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v27

    .line 2042
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v25

    .line 2051
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit16 v5, v5, 0x100

    if-nez v5, :cond_9

    const/16 v5, 0x21

    move v11, v5

    :goto_5
    const/16 v24, 0x0

    const/16 v26, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    move-object/from16 v28, v18

    move/from16 v29, v7

    move/from16 v31, v32

    :goto_6
    move/from16 v0, v31

    move/from16 v1, v30

    if-lt v0, v1, :cond_18

    .line 2560
    aget-object v5, v15, v36

    if-eqz v5, :cond_3

    .line 2561
    invoke-virtual {v12, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_3
    if-eqz v21, :cond_45

    .line 2565
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_10

    if-eqz v20, :cond_b

    .line 2569
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x3

    new-array v5, v6, [I

    add-int/lit8 v7, v20, 0x2

    :goto_7
    if-gtz v6, :cond_a

    move-object v12, v5

    .line 2580
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v21, 0x2

    move-object/from16 v9, v17

    move/from16 v18, v5

    move/from16 v19, v6

    :goto_9
    if-gtz v19, :cond_c

    move-object/from16 v17, v9

    move-object/from16 v15, v28

    .line 2561
    :goto_a
    if-eqz v17, :cond_4

    const/4 v5, 0x0

    move v14, v5

    .line 2615
    :goto_b
    move-object/from16 v0, v17

    array-length v5, v0

    if-lt v14, v5, :cond_11

    .line 2598
    :cond_4
    if-eqz v15, :cond_5

    const/4 v5, 0x0

    move v14, v5

    .line 2643
    :goto_c
    array-length v5, v15

    if-lt v14, v5, :cond_14

    :cond_5
    :goto_d
    if-nez v16, :cond_17

    .line 2669
    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    .line 1985
    :cond_6
    const/4 v5, 0x1

    move/from16 v33, v5

    goto/16 :goto_3

    .line 2008
    :cond_7
    aget-byte v6, v34, v5

    const/16 v8, 0x8

    if-ne v6, v8, :cond_8

    .line 2009
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    if-ltz v6, :cond_8

    move/from16 v0, v36

    if-ge v6, v0, :cond_8

    .line 2010
    add-int v8, v32, v6

    aget-byte v8, v34, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_8

    .line 2014
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 2051
    :cond_9
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_5

    .line 2574
    :cond_a
    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v7, 0x6

    aput v9, v5, v8

    .line 2575
    add-int/lit8 v8, v6, -0x2

    add-int/lit8 v9, v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v6, v6, -0x3

    .line 2576
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aput v8, v5, v6

    add-int/lit8 v7, v7, 0xa

    goto/16 :goto_7

    :cond_b
    const/4 v5, 0x0

    move-object v12, v5

    goto/16 :goto_8

    .line 2583
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    .line 2584
    add-int/lit8 v5, v18, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    .line 2585
    add-int/lit8 v5, v18, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 2586
    add-int/lit8 v5, v18, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 2587
    add-int/lit8 v5, v18, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 2589
    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    if-eqz v12, :cond_f

    const/4 v5, 0x0

    .line 2591
    :goto_e
    array-length v8, v12

    if-lt v5, v8, :cond_d

    move-object v5, v9

    .line 2593
    :goto_f
    const/4 v8, 0x0

    move-object v14, v5

    .line 2598
    :goto_10
    aget-object v9, v15, v10

    add-int v5, v10, v17

    aget-object v10, v15, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V

    add-int/lit8 v5, v18, 0xa

    add-int/lit8 v6, v19, -0x1

    move-object v9, v14

    move/from16 v18, v5

    move/from16 v19, v6

    goto/16 :goto_9

    .line 2592
    :cond_d
    aget v8, v12, v5

    if-ne v8, v10, :cond_e

    add-int/lit8 v8, v5, 0x1

    aget v8, v12, v8

    if-ne v8, v11, :cond_e

    .line 2593
    add-int/lit8 v5, v5, 0x2

    aget v5, v12, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    move-object v14, v9

    goto :goto_10

    :cond_e
    add-int/lit8 v5, v5, 0x3

    goto :goto_e

    :cond_f
    move-object v5, v9

    .line 2589
    goto :goto_f

    :cond_10
    move-object/from16 v15, v28

    .line 2565
    goto/16 :goto_a

    .line 2605
    :cond_11
    aget v5, v17, v14

    .line 2606
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_12

    const/16 v7, 0x41

    if-ne v6, v7, :cond_13

    .line 2610
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v18

    .line 2612
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 2615
    move-object/from16 v0, p2

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    move-object/from16 v0, p2

    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v9, v0, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v10, v0, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v6, v18, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    :cond_13
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto/16 :goto_b

    .line 2633
    :cond_14
    aget v5, v15, v14

    .line 2634
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_15

    const/16 v7, 0x41

    if-ne v6, v7, :cond_16

    .line 2638
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v17

    .line 2640
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 2643
    move-object/from16 v0, p2

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    move-object/from16 v0, p2

    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v9, v0, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v10, v0, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v6, v17, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    :cond_16
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto/16 :goto_c

    .line 2662
    :cond_17
    move-object/from16 v0, v16

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 2663
    const/4 v6, 0x0

    move-object/from16 v0, v16

    iput-object v6, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 2664
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object/from16 v16, v5

    goto/16 :goto_d

    :cond_18
    sub-int v37, v31, v32

    .line 2059
    aget-object v6, v15, v37

    if-eqz v6, :cond_19

    .line 2061
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1c

    const/4 v5, 0x0

    :goto_11
    invoke-virtual {v6, v12, v5}, Lzeroaicy/org/objectweb/asm/Label;->accept(Lzeroaicy/org/objectweb/asm/MethodVisitor;Z)V

    :cond_19
    move/from16 v18, v22

    move v6, v14

    .line 2059
    :goto_12
    if-eqz v18, :cond_1a

    .line 2065
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    move/from16 v0, v37

    if-eq v5, v0, :cond_1d

    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1d

    .line 2061
    :cond_1a
    if-eqz v6, :cond_44

    .line 2101
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1b

    .line 2102
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    const/16 v6, 0x100

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 2101
    :cond_1b
    const/4 v5, 0x0

    move v14, v5

    .line 2091
    :goto_13
    aget-byte v5, v34, v31

    and-int/lit16 v6, v5, 0xff

    packed-switch v6, :pswitch_data_0

    .line 2501
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2061
    :cond_1c
    const/4 v5, 0x1

    goto :goto_11

    .line 2070
    :cond_1d
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1f

    if-eqz v19, :cond_1e

    if-eqz v33, :cond_20

    :cond_1e
    const/4 v6, -0x1

    move-object/from16 v0, p2

    iget v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move-object/from16 v0, p2

    iget v9, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move-object v5, v12

    :goto_14
    const/4 v6, 0x0

    move-object v12, v5

    .line 2072
    :cond_1f
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_21

    .line 2091
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v33

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStackMapFrame(IZZLzeroaicy/org/objectweb/asm/Context;)I

    move-result v5

    :goto_15
    move/from16 v18, v5

    goto :goto_12

    .line 2079
    :cond_20
    move-object/from16 v0, p2

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    move-object/from16 v0, p2

    iget v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move-object/from16 v0, p2

    iget v9, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_14

    .line 2091
    :cond_21
    const/4 v5, 0x0

    goto :goto_15

    .line 2347
    :pswitch_0
    const/16 v5, 0xc8

    add-int/lit8 v6, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v6, v6, v37

    aget-object v6, v15, v6

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v5, v31, 0x5

    const/4 v14, 0x1

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    .line 2217
    :goto_16
    if-eqz v7, :cond_22

    .line 2505
    array-length v5, v7

    if-ge v9, v5, :cond_22

    move/from16 v0, v37

    if-le v10, v0, :cond_2f

    :cond_22
    move/from16 v5, v24

    move/from16 v6, v25

    .line 2217
    :goto_17
    if-eqz v28, :cond_23

    .line 2533
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_23

    move/from16 v0, v37

    if-le v6, v0, :cond_31

    :cond_23
    move-object/from16 v17, v7

    move/from16 v22, v18

    move/from16 v25, v6

    move/from16 v24, v5

    move/from16 v31, v8

    move/from16 v27, v10

    move/from16 v26, v9

    .line 2527
    goto/16 :goto_6

    .line 2347
    :pswitch_1
    const/16 v5, 0xda

    if-ge v6, v5, :cond_25

    add-int/lit8 v5, v6, -0x31

    .line 2326
    :goto_18
    add-int/lit8 v6, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int v6, v6, v37

    aget-object v6, v15, v6

    const/16 v7, 0xa7

    if-eq v5, v7, :cond_24

    const/16 v7, 0xa8

    if-ne v5, v7, :cond_26

    .line 2329
    :cond_24
    add-int/lit8 v5, v5, 0x21

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    :goto_19
    add-int/lit8 v5, v31, 0x3

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    goto :goto_16

    .line 2347
    :cond_25
    add-int/lit8 v5, v6, -0x14

    goto :goto_18

    .line 2326
    :cond_26
    const/16 v7, 0xa7

    if-ge v5, v7, :cond_27

    add-int/lit8 v5, v5, 0x1

    xor-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 2335
    :goto_1a
    add-int/lit8 v7, v37, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v7

    .line 2336
    invoke-virtual {v12, v5, v7}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 2337
    const/16 v5, 0xc8

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    const/4 v14, 0x1

    goto :goto_19

    .line 2326
    :cond_27
    xor-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 2292
    :pswitch_2
    sub-int v5, v6, v11

    add-int/lit8 v6, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v6, v6, v37

    aget-object v6, v15, v6

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v5, v31, 0x5

    :goto_1b
    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    .line 2487
    goto/16 :goto_16

    .line 2496
    :pswitch_3
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v31, 0x3

    aget-byte v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :goto_1c
    add-int/lit8 v5, v31, 0x4

    goto :goto_1b

    .line 2356
    :pswitch_4
    add-int/lit8 v5, v31, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x84

    if-ne v5, v6, :cond_28

    .line 2358
    add-int/lit8 v5, v31, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v6, v31, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v6

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v5, v31, 0x6

    goto :goto_1b

    .line 2362
    :cond_28
    add-int/lit8 v6, v31, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1c

    .line 2487
    :pswitch_5
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v6, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    add-int/lit8 v5, v31, 0x3

    goto :goto_1b

    .line 2463
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v6, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v5, v5, v6

    .line 2464
    move-object/from16 v0, p0

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v6, v6, v7

    .line 2465
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    .line 2466
    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    .line 2467
    move-object/from16 v0, p0

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v6, v6, v5

    .line 2468
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzeroaicy/org/objectweb/asm/Handle;

    .line 2470
    add-int/lit8 v7, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    new-array v0, v10, [Ljava/lang/Object;

    move-object/from16 v22, v0

    add-int/lit8 v6, v6, 0x4

    const/4 v7, 0x0

    :goto_1d
    if-lt v7, v10, :cond_29

    .line 2478
    move-object/from16 v0, v22

    invoke-virtual {v12, v8, v9, v5, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V

    add-int/lit8 v5, v31, 0x5

    goto/16 :goto_1b

    .line 2474
    :cond_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v38

    aput-object v38, v22, v7

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 2442
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v7, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v5, v5, v7

    .line 2443
    move-object/from16 v0, p0

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v8, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget v9, v7, v8

    .line 2444
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    .line 2445
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    .line 2446
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb6

    if-ge v6, v10, :cond_2a

    .line 2448
    invoke-virtual {v12, v6, v7, v8, v9}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    :goto_1e
    const/16 v5, 0xb9

    if-ne v6, v5, :cond_2e

    add-int/lit8 v5, v31, 0x5

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_16

    .line 2450
    :cond_2a
    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v34, v5

    const/16 v10, 0xb

    if-eq v5, v10, :cond_2b

    const/4 v10, 0x0

    :goto_1f
    move-object/from16 v5, p1

    .line 2452
    invoke-virtual/range {v5 .. v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1e

    .line 2450
    :cond_2b
    const/4 v10, 0x1

    goto :goto_1f

    .line 2452
    :pswitch_8
    and-int/lit8 v5, v37, 0x3

    rsub-int/lit8 v5, v5, 0x4

    add-int v5, v5, v31

    .line 2388
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v6, v6, v37

    aget-object v7, v15, v6

    .line 2389
    add-int/lit8 v6, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/lit8 v5, v5, 0x8

    .line 2391
    new-array v9, v8, [I

    .line 2392
    new-array v10, v8, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v6, 0x0

    :goto_20
    if-lt v6, v8, :cond_2c

    .line 2398
    invoke-virtual {v12, v7, v9, v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[I[Lzeroaicy/org/objectweb/asm/Label;)V

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_16

    .line 2394
    :cond_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v22

    aput v22, v9, v6

    .line 2395
    add-int/lit8 v22, v5, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v22

    add-int v22, v22, v37

    aget-object v22, v15, v22

    aput-object v22, v10, v6

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :pswitch_9
    and-int/lit8 v5, v37, 0x3

    rsub-int/lit8 v5, v5, 0x4

    add-int v5, v5, v31

    .line 2371
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v6, v6, v37

    aget-object v7, v15, v6

    .line 2372
    add-int/lit8 v6, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    .line 2373
    add-int/lit8 v6, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v5, v5, 0xc

    sub-int v6, v9, v8

    add-int/lit8 v10, v6, 0x1

    .line 2375
    new-array v0, v10, [Lzeroaicy/org/objectweb/asm/Label;

    move-object/from16 v22, v0

    const/4 v6, 0x0

    :goto_21
    if-lt v6, v10, :cond_2d

    .line 2380
    move-object/from16 v0, v22

    invoke-virtual {v12, v8, v9, v7, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_16

    .line 2377
    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v31

    add-int v31, v31, v37

    aget-object v31, v15, v31

    aput-object v31, v22, v6

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 2286
    :pswitch_a
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v5

    add-int v5, v5, v37

    aget-object v5, v15, v5

    invoke-virtual {v12, v6, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 2421
    :cond_2e
    :goto_22
    add-int/lit8 v5, v31, 0x3

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_16

    .line 2491
    :pswitch_b
    add-int/lit8 v5, v31, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v31, 0x2

    aget-byte v6, v34, v6

    invoke-virtual {v12, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    goto :goto_22

    :pswitch_c
    add-int/lit8 v5, v6, -0x3b

    .line 2265
    shr-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x36

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {v12, v6, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2217
    :goto_23
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_16

    .line 2265
    :pswitch_d
    add-int/lit8 v5, v6, -0x1a

    .line 2241
    shr-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x15

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {v12, v6, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_23

    .line 2412
    :pswitch_e
    add-int/lit8 v5, v31, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v12, v6, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2417
    :goto_24
    add-int/lit8 v5, v31, 0x2

    move-object/from16 v7, v17

    move v8, v5

    move/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_16

    .line 2430
    :pswitch_f
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_22

    .line 2425
    :pswitch_10
    add-int/lit8 v5, v31, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_24

    .line 2421
    :pswitch_11
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v5

    invoke-virtual {v12, v6, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_22

    .line 2417
    :pswitch_12
    add-int/lit8 v5, v31, 0x1

    aget-byte v5, v34, v5

    invoke-virtual {v12, v6, v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_24

    .line 2217
    :pswitch_13
    invoke-virtual {v12, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_23

    .line 2505
    :cond_2f
    move/from16 v0, v37

    if-ne v10, v0, :cond_30

    .line 2510
    aget v5, v7, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v5

    .line 2514
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 2517
    move-object/from16 v0, p2

    iget v10, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    move-object/from16 v17, v0

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v12, v10, v0, v6, v1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    add-int/lit8 v5, v5, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v10, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    .line 2505
    :cond_30
    add-int/lit8 v5, v9, 0x1

    .line 2527
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v6

    move v9, v5

    move v10, v6

    goto/16 :goto_16

    .line 2533
    :cond_31
    move/from16 v0, v37

    if-ne v6, v0, :cond_32

    .line 2538
    aget v6, v28, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v6

    .line 2542
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    .line 2545
    move-object/from16 v0, p2

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v17

    add-int/lit8 v6, v6, 0x2

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v6, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    .line 2533
    :cond_32
    add-int/lit8 v5, v5, 0x1

    .line 2555
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v6

    goto/16 :goto_17

    .line 1893
    :cond_33
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    .line 1894
    add-int/lit8 v5, v24, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v12

    add-int/lit8 v11, v24, 0x6

    .line 1896
    sget-object v5, Lzeroaicy/org/objectweb/asm/Constants;->LOCAL_VARIABLE_TABLE:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1897
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_34

    .line 1901
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v24, 0x8

    :goto_25
    if-gtz v6, :cond_35

    move/from16 v21, v11

    :cond_34
    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v14, v21

    :goto_26
    move-object/from16 v5, v16

    move/from16 v10, v20

    .line 1977
    :goto_27
    add-int/2addr v11, v12

    add-int/lit8 v12, v25, -0x1

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move-object/from16 v17, v6

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v21, v14

    goto/16 :goto_2

    .line 1904
    :cond_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 1905
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V

    .line 1906
    add-int/lit8 v9, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    .line 1907
    add-int/2addr v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v6, -0x1

    goto :goto_25

    .line 1912
    :cond_36
    sget-object v5, Lzeroaicy/org/objectweb/asm/Constants;->LOCAL_VARIABLE_TYPE_TABLE:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move v10, v11

    move/from16 v14, v21

    goto :goto_27

    .line 1916
    :cond_37
    sget-object v5, Lzeroaicy/org/objectweb/asm/Constants;->LINE_NUMBER_TABLE:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1917
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_34

    .line 1920
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v24, 0x8

    :goto_28
    if-lez v6, :cond_34

    .line 1923
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 1924
    add-int/lit8 v9, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    add-int/lit8 v5, v5, 0x4

    .line 1926
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createDebugLabel(I[Lzeroaicy/org/objectweb/asm/Label;)V

    .line 1927
    aget-object v8, v15, v8

    invoke-virtual {v8, v9}, Lzeroaicy/org/objectweb/asm/Label;->addLineNumber(I)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_28

    .line 1930
    :cond_38
    sget-object v5, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1931
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)[I

    move-result-object v17

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v14, v21

    goto/16 :goto_26

    .line 1939
    :cond_39
    sget-object v5, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1940
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)[I

    move-result-object v18

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v14, v21

    goto/16 :goto_26

    .line 1943
    :cond_3a
    sget-object v5, Lzeroaicy/org/objectweb/asm/Constants;->STACK_MAP_TABLE:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1944
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3b

    add-int/lit8 v22, v24, 0x8

    add-int v23, v11, v12

    :cond_3b
    :goto_29
    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v14, v21

    goto/16 :goto_26

    .line 1957
    :cond_3c
    const-string v5, "StackMap"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1958
    move-object/from16 v0, p2

    iget v5, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3b

    add-int/lit8 v22, v24, 0x8

    add-int v23, v11, v12

    const/16 v19, 0x0

    goto :goto_29

    .line 1968
    :cond_3d
    move-object/from16 v0, p2

    iget-object v9, v0, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v8, p0

    move/from16 v14, p3

    invoke-direct/range {v8 .. v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v5

    .line 1977
    move-object/from16 v0, v16

    iput-object v0, v5, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v14, v21

    goto/16 :goto_27

    .line 1856
    :cond_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v8

    .line 1857
    add-int/lit8 v9, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v9

    .line 1858
    add-int/lit8 v10, v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v10

    .line 1859
    move-object/from16 v0, p0

    iget-object v11, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v12, v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    aget v11, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v6, v6, 0x8

    .line 1861
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v10, v11}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Ljava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    :cond_3f
    sub-int v8, v6, v32

    .line 1559
    aget-byte v5, v34, v6

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_1

    .line 1847
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1749
    :pswitch_14
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 1728
    :goto_2a
    :pswitch_15
    add-int/lit8 v5, v6, 0x3

    :cond_40
    :goto_2b
    move v6, v5

    goto/16 :goto_0

    .line 1755
    :pswitch_16
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 1777
    :pswitch_17
    add-int/lit8 v5, v6, 0x5

    goto :goto_2b

    .line 1759
    :pswitch_18
    add-int/lit8 v5, v6, 0x1

    aget-byte v5, v34, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0x84

    if-eq v5, v8, :cond_42

    const/16 v8, 0xa9

    if-eq v5, v8, :cond_41

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    .line 1777
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1755
    :cond_41
    :pswitch_19
    add-int/lit8 v5, v6, 0x4

    goto :goto_2b

    .line 1777
    :cond_42
    add-int/lit8 v5, v6, 0x6

    goto :goto_2b

    :pswitch_1a
    and-int/lit8 v5, v8, 0x3

    rsub-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    .line 1797
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 1798
    add-int/lit8 v6, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v5, v5, 0x8

    :goto_2c
    if-lez v6, :cond_40

    .line 1802
    add-int/lit8 v9, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/2addr v9, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, -0x1

    goto :goto_2c

    :pswitch_1b
    and-int/lit8 v5, v8, 0x3

    rsub-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    .line 1784
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 1785
    add-int/lit8 v6, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v9, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v9

    sub-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0xc

    :goto_2d
    if-lez v6, :cond_40

    .line 1789
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/2addr v9, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, -0x1

    goto :goto_2d

    .line 1728
    :pswitch_1c
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readShort(I)S

    move-result v5

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    goto/16 :goto_2a

    :pswitch_1d
    add-int/lit8 v5, v6, 0x2

    goto/16 :goto_2b

    :pswitch_1e
    add-int/lit8 v5, v6, 0x1

    goto/16 :goto_2b

    .line 1550
    :cond_43
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_44
    move v14, v6

    goto/16 :goto_13

    :cond_45
    move-object/from16 v15, v28

    goto/16 :goto_a

    .line 2091
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_b
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_8
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_5
        :pswitch_13
        :pswitch_13
        :pswitch_5
        :pswitch_5
        :pswitch_13
        :pswitch_13
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1559
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_15
        :pswitch_1d
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1b
        :pswitch_1a
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_1d
        :pswitch_15
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1e
        :pswitch_1e
        :pswitch_18
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_16
        :pswitch_16
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 1759
    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x36
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private readConstantDynamic(I[C)Lzeroaicy/org/objectweb/asm/ConstantDynamic;
    .locals 8

    .line 3789
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantDynamicValues:[Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 3805
    :goto_0
    return-object v0

    .line 3793
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v1, v0, p1

    .line 3794
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    .line 3795
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 3796
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 3797
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->bootstrapMethodOffsets:[I

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v0, v1

    .line 3798
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzeroaicy/org/objectweb/asm/Handle;

    .line 3799
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    new-array v6, v5, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_1

    .line 3805
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantDynamicValues:[Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    new-instance v1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    invoke-direct {v1, v3, v4, v0, v6}, Lzeroaicy/org/objectweb/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V

    aput-object v1, v2, p1

    move-object v0, v1

    goto :goto_0

    .line 3802
    :cond_1
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    invoke-virtual {p0, v7, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I
    .locals 8

    const/16 v6, 0x46

    const/16 v4, 0x40

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 3029
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v4, :cond_2

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x3

    .line 3100
    :goto_0
    return v0

    .line 3029
    :cond_0
    add-int/lit8 v0, p2, 0x5

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3035
    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, v2, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3033
    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    add-int/lit8 v0, p2, 0x3

    invoke-direct {p0, v1, v0, v3, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    goto :goto_0

    .line 3040
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v1, p2, 0x1

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v4, :cond_1b

    if-eq v0, v6, :cond_1a

    const/16 v4, 0x53

    if-eq v0, v4, :cond_19

    const/16 v4, 0x63

    if-eq v0, v4, :cond_18

    const/16 v4, 0x65

    if-eq v0, v4, :cond_17

    const/16 v4, 0x73

    if-eq v0, v4, :cond_16

    const/16 v4, 0x49

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x4a

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_14

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 3186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3047
    :pswitch_0
    new-instance v0, Ljava/lang/Character;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v2, v1

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-char v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3042
    :goto_1
    add-int/lit8 v0, p2, 0x3

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/Byte;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v2, v1

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 3097
    :cond_4
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v0, p2, 0x3

    if-nez v5, :cond_5

    .line 3100
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    goto/16 :goto_0

    .line 3106
    :cond_5
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v6, :cond_12

    const/16 v6, 0x53

    if-eq v4, v6, :cond_10

    const/16 v6, 0x5a

    if-eq v4, v6, :cond_d

    const/16 v3, 0x49

    if-eq v4, v3, :cond_b

    const/16 v3, 0x4a

    if-eq v4, v3, :cond_9

    packed-switch v4, :pswitch_data_1

    .line 3176
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    goto/16 :goto_0

    .line 3166
    :pswitch_2
    new-array v1, v5, [D

    :goto_2
    if-lt v2, v5, :cond_6

    .line 3173
    invoke-virtual {p1, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3168
    :cond_6
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    aput-wide v6, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3132
    :pswitch_3
    new-array v1, v5, [C

    :goto_3
    if-lt v2, v5, :cond_7

    .line 3137
    invoke-virtual {p1, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3134
    :cond_7
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3108
    :pswitch_4
    new-array v1, v5, [B

    :goto_4
    if-lt v2, v5, :cond_8

    .line 3113
    invoke-virtual {p1, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3110
    :cond_8
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3148
    :cond_9
    new-array v1, v5, [J

    :goto_5
    if-lt v2, v5, :cond_a

    .line 3153
    invoke-virtual {p1, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3150
    :cond_a
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v6

    aput-wide v6, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3140
    :cond_b
    new-array v1, v5, [I

    :goto_6
    if-lt v2, v5, :cond_c

    .line 3145
    invoke-virtual {p1, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3142
    :cond_c
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3116
    :cond_d
    new-array v6, v5, [Z

    move v4, v2

    move v1, v0

    :goto_7
    if-lt v4, v5, :cond_e

    .line 3121
    invoke-virtual {p1, p3, v6}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_0

    .line 3118
    :cond_e
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    :goto_8
    aput-boolean v0, v6, v4

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_f
    move v0, v3

    goto :goto_8

    .line 3124
    :cond_10
    new-array v1, v5, [S

    :goto_9
    if-lt v2, v5, :cond_11

    .line 3129
    invoke-virtual {p1, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3126
    :cond_11
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3156
    :cond_12
    new-array v1, v5, [F

    :goto_a
    if-lt v2, v5, :cond_13

    .line 3163
    invoke-virtual {p1, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3158
    :cond_13
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3066
    :cond_14
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    .line 3074
    :cond_16
    invoke-virtual {p0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3078
    :cond_17
    invoke-virtual {p0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x3

    invoke-virtual {p0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x5

    goto/16 :goto_0

    .line 3085
    :cond_18
    invoke-virtual {p0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3060
    :cond_19
    new-instance v0, Ljava/lang/Short;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v2, v1

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3055
    :cond_1a
    :pswitch_5
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3089
    :cond_1b
    invoke-virtual {p0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    add-int/lit8 v1, p2, 0x3

    invoke-direct {p0, v0, v1, v3, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    goto/16 :goto_0

    .line 3040
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3106
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I
    .locals 4

    const/4 v1, 0x0

    .line 2990
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, p2, 0x2

    if-eqz p3, :cond_3

    move v0, v2

    :goto_0
    if-gtz v3, :cond_1

    .line 2996
    :goto_1
    if-eqz p1, :cond_0

    .line 3007
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return v0

    .line 2995
    :cond_1
    invoke-virtual {p0, v0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 2996
    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3002
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result v2

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    .line 2996
    :cond_3
    if-gtz v3, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method private readField(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I
    .locals 22

    .line 1070
    move-object/from16 v0, p2

    iget-object v13, v0, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 1074
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1075
    add-int/lit8 v2, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1076
    add-int/lit8 v2, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1082
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    .line 1084
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    .line 1095
    const/4 v2, 0x0

    check-cast v2, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1097
    add-int/lit8 v2, p3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 v11, p3, 0x8

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    move-object v6, v2

    move-object v7, v2

    move/from16 v21, v8

    :goto_0
    if-gtz v21, :cond_a

    move-object/from16 v2, p1

    .line 1140
    invoke-virtual/range {v2 .. v7}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v11

    .line 1240
    :goto_1
    return v2

    .line 1140
    :cond_0
    if-eqz v17, :cond_1

    .line 1148
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v17, 0x2

    :goto_2
    if-gtz v3, :cond_5

    .line 1155
    :cond_1
    if-eqz v18, :cond_2

    .line 1166
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v18, 0x2

    :goto_3
    if-gtz v3, :cond_6

    .line 1173
    :cond_2
    if-eqz v19, :cond_3

    .line 1184
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v19, 0x2

    :goto_4
    if-gtz v3, :cond_7

    .line 1193
    :cond_3
    if-eqz v20, :cond_4

    .line 1208
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v20, 0x2

    :goto_5
    if-gtz v3, :cond_8

    .line 1217
    :cond_4
    :goto_6
    if-nez v16, :cond_9

    .line 1240
    invoke-virtual {v4}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitEnd()V

    move v2, v11

    goto :goto_1

    .line 1152
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1155
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1170
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1173
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1188
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v2

    .line 1190
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1193
    move-object/from16 v0, p2

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v5, v8}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1212
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v2

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1217
    move-object/from16 v0, p2

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v5, v8}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_5

    .line 1233
    :cond_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1234
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1235
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object/from16 v16, v2

    goto/16 :goto_6

    .line 1101
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    .line 1102
    add-int/lit8 v2, v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v12

    add-int/lit8 v11, v11, 0x6

    .line 1106
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->CONSTANT_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1107
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    if-nez v2, :cond_b

    const/4 v7, 0x0

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v14, v20

    :goto_7
    move-object/from16 v2, v16

    .line 1133
    :goto_8
    add-int/2addr v11, v12

    add-int/lit8 v12, v21, -0x1

    move-object/from16 v16, v2

    move/from16 v21, v12

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v14

    goto/16 :goto_0

    .line 1108
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v7

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v14, v20

    goto :goto_7

    .line 1109
    :cond_c
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1110
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v14, v20

    goto :goto_7

    .line 1111
    :cond_d
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->DEPRECATED:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x20000

    or-int/2addr v2, v3

    :goto_9
    move v3, v2

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v14, v20

    goto :goto_7

    .line 1113
    :cond_e
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->SYNTHETIC:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    or-int/lit16 v2, v3, 0x1000

    goto :goto_9

    .line 1115
    :cond_f
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v8, v11

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v14, v20

    goto :goto_7

    .line 1117
    :cond_10
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move/from16 v8, v17

    move/from16 v9, v18

    move v10, v11

    move/from16 v14, v20

    goto :goto_7

    .line 1119
    :cond_11
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move/from16 v8, v17

    move v9, v11

    move/from16 v10, v19

    move/from16 v14, v20

    goto/16 :goto_7

    .line 1121
    :cond_12
    sget-object v2, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move v14, v11

    goto/16 :goto_7

    .line 1124
    :cond_13
    move-object/from16 v0, p2

    iget-object v9, v0, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    const/4 v2, 0x0

    check-cast v2, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v2

    .line 1133
    move-object/from16 v0, v16

    iput-object v0, v2, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v14, v20

    goto/16 :goto_8
.end method

.method private readMethod(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I
    .locals 32

    .line 1254
    move-object/from16 v0, p2

    iget-object v15, v0, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 1258
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    .line 1259
    add-int/lit8 v3, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    add-int/lit8 v31, p3, 0x4

    .line 1260
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 1270
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    .line 1293
    const/4 v3, 0x0

    check-cast v3, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1295
    add-int/lit8 v3, p3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v11, p3, 0x8

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move/from16 v30, v3

    :goto_0
    if-gtz v30, :cond_13

    .line 1356
    move-object/from16 v0, p2

    iget v4, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    if-nez v22, :cond_0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move-result-object v10

    if-nez v10, :cond_1

    move v3, v11

    .line 1522
    :goto_2
    return v3

    .line 1356
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1371
    :cond_1
    instance-of v3, v10, Lzeroaicy/org/objectweb/asm/MethodWriter;

    if-eqz v3, :cond_3

    move-object v3, v10

    .line 1372
    check-cast v3, Lzeroaicy/org/objectweb/asm/MethodWriter;

    .line 1373
    move-object/from16 v0, p2

    iget v4, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    move-object/from16 v4, p0

    move/from16 v5, v19

    move/from16 v8, v22

    invoke-virtual/range {v3 .. v9}, Lzeroaicy/org/objectweb/asm/MethodWriter;->canCopyMethodAttributes(Lzeroaicy/org/objectweb/asm/ClassReader;ZZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1380
    sub-int v4, v11, p3

    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Lzeroaicy/org/objectweb/asm/MethodWriter;->setMethodAttributesSource(II)V

    move v3, v11

    goto :goto_2

    .line 1373
    :cond_2
    const/4 v6, 0x1

    goto :goto_3

    .line 1371
    :cond_3
    if-eqz v28, :cond_4

    .line 1386
    move-object/from16 v0, p2

    iget v3, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    .line 1387
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v4

    add-int/lit8 v3, v28, 0x1

    :goto_4
    if-gtz v4, :cond_d

    .line 1391
    :cond_4
    if-eqz v20, :cond_5

    .line 1400
    invoke-virtual {v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 1401
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValue(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    if-eqz v4, :cond_5

    .line 1403
    invoke-virtual {v4}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_5
    if-eqz v23, :cond_6

    .line 1409
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v23, 0x2

    :goto_5
    if-gtz v4, :cond_e

    .line 1416
    :cond_6
    if-eqz v25, :cond_7

    .line 1427
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v25, 0x2

    :goto_6
    if-gtz v3, :cond_f

    .line 1434
    :cond_7
    if-eqz v26, :cond_8

    .line 1445
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v26, 0x2

    :goto_7
    if-gtz v4, :cond_10

    .line 1454
    :cond_8
    if-eqz v29, :cond_9

    .line 1469
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v29, 0x2

    :goto_8
    if-gtz v4, :cond_11

    .line 1454
    :cond_9
    if-eqz v21, :cond_a

    .line 1493
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v10, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readParameterAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)V

    :cond_a
    if-eqz v24, :cond_b

    .line 1499
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v10, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readParameterAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)V

    :cond_b
    :goto_9
    if-nez v18, :cond_12

    if-eqz v27, :cond_c

    .line 1517
    invoke-virtual {v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitCode()V

    .line 1518
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v0, v10, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readCode(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;I)V

    .line 1522
    :cond_c
    invoke-virtual {v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitEnd()V

    move v3, v11

    goto/16 :goto_2

    .line 1391
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_4

    .line 1413
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1416
    const/4 v6, 0x1

    invoke-virtual {v10, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_5

    .line 1431
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1434
    const/4 v6, 0x0

    invoke-virtual {v10, v5, v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_6

    .line 1449
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 1451
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1454
    move-object/from16 v0, p2

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v8, 0x1

    invoke-virtual {v10, v6, v7, v5, v8}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_7

    .line 1473
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 1475
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1478
    move-object/from16 v0, p2

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v8, 0x0

    invoke-virtual {v10, v6, v7, v5, v8}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_8

    .line 1509
    :cond_12
    move-object/from16 v0, v18

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1510
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-object v4, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1511
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object/from16 v18, v3

    goto/16 :goto_9

    .line 1299
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 1300
    add-int/lit8 v3, v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v14

    add-int/lit8 v13, v11, 0x6

    .line 1304
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->CODE:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1305
    move-object/from16 v0, p2

    iget v3, v0, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_22

    move v3, v13

    :goto_a
    move/from16 v17, v3

    .line 1349
    :goto_b
    add-int v11, v13, v14

    add-int/lit8 v3, v30, -0x1

    move/from16 v30, v3

    move/from16 v27, v17

    goto/16 :goto_0

    .line 1308
    :cond_14
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->EXCEPTIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1310
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    new-array v8, v5, [Ljava/lang/String;

    add-int/lit8 v3, v11, 0x8

    const/4 v4, 0x0

    :goto_c
    if-lt v4, v5, :cond_15

    move v9, v13

    :goto_d
    move/from16 v4, v19

    move/from16 v12, v25

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v11, v24

    move/from16 v16, v26

    :goto_e
    move-object/from16 v3, v18

    move/from16 v10, v23

    :goto_f
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v17, v27

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v20, v5

    move/from16 v25, v12

    move/from16 v26, v16

    .line 1317
    goto :goto_b

    .line 1313
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1316
    :cond_16
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1317
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v22

    goto :goto_d

    .line 1318
    :cond_17
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->DEPRECATED:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1319
    move-object/from16 v0, p2

    iget v3, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    goto :goto_d

    .line 1320
    :cond_18
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move v10, v13

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v16, v26

    goto :goto_f

    .line 1322
    :cond_19
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move/from16 v26, v13

    goto :goto_d

    .line 1324
    :cond_1a
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->ANNOTATION_DEFAULT:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move/from16 v20, v13

    goto/16 :goto_d

    .line 1326
    :cond_1b
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->SYNTHETIC:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1328
    move-object/from16 v0, p2

    iget v3, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    or-int/lit16 v3, v3, 0x1000

    move-object/from16 v0, p2

    iput v3, v0, Lzeroaicy/org/objectweb/asm/Context;->currentMethodAccessFlags:I

    const/16 v19, 0x1

    move/from16 v4, v19

    move/from16 v12, v25

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v11, v24

    move/from16 v16, v26

    goto/16 :goto_e

    .line 1329
    :cond_1c
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move/from16 v25, v13

    goto/16 :goto_d

    .line 1331
    :cond_1d
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move/from16 v17, v27

    move/from16 v29, v13

    goto/16 :goto_b

    .line 1333
    :cond_1e
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move/from16 v21, v13

    goto/16 :goto_d

    .line 1335
    :cond_1f
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move/from16 v4, v19

    move/from16 v12, v25

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move v11, v13

    move/from16 v16, v26

    goto/16 :goto_e

    .line 1337
    :cond_20
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->METHOD_PARAMETERS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move/from16 v17, v27

    move/from16 v28, v13

    goto/16 :goto_b

    .line 1340
    :cond_21
    move-object/from16 v0, p2

    iget-object v11, v0, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    const/4 v3, 0x0

    check-cast v3, [Lzeroaicy/org/objectweb/asm/Label;

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v3

    .line 1349
    move-object/from16 v0, v18

    iput-object v0, v3, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v16, v26

    goto/16 :goto_f

    :cond_22
    move/from16 v3, v27

    goto/16 :goto_a
.end method

.method private readModuleAttributes(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;IILjava/lang/String;)V
    .locals 12
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
    iget-object v7, p2, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 781
    invoke-virtual {p0, p3, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v1

    .line 782
    add-int/lit8 v2, p3, 0x2

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 783
    add-int/lit8 v3, p3, 0x4

    invoke-virtual {p0, v3, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-virtual {p1, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    move-result-object v8

    if-nez v8, :cond_0

    .line 883
    :goto_0
    return-void

    .line 785
    :cond_0
    if-eqz p5, :cond_1

    .line 792
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 797
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, p4, 0x2

    :goto_1
    if-gtz v2, :cond_3

    .line 806
    :cond_2
    add-int/lit8 v1, p3, 0x6

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, p3, 0x8

    :goto_2
    if-gtz v2, :cond_c

    .line 818
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    move v4, v2

    move v5, v1

    :goto_3
    const/4 v6, 0x0

    const/4 v3, 0x0

    if-gtz v4, :cond_a

    .line 839
    invoke-virtual {p0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v5, 0x2

    move v5, v1

    move v3, v2

    :goto_4
    if-gtz v5, :cond_7

    .line 859
    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v3, 0x2

    :goto_5
    if-gtz v1, :cond_6

    .line 867
    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    move v3, v1

    :goto_6
    if-gtz v3, :cond_4

    .line 883
    invoke-virtual {v8}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitEnd()V

    goto :goto_0

    .line 800
    :cond_3
    invoke-virtual {p0, v1, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 871
    :cond_4
    invoke-virtual {p0, v2, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    .line 872
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v2, v2, 0x4

    .line 874
    new-array v6, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v5, :cond_5

    .line 879
    invoke-virtual {v8, v4, v6}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_6

    .line 876
    :cond_5
    invoke-virtual {p0, v2, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 862
    :cond_6
    invoke-virtual {p0, v2, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 843
    :cond_7
    invoke-virtual {p0, v3, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v6

    .line 844
    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    .line 845
    add-int/lit8 v1, v3, 0x4

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/lit8 v2, v3, 0x6

    .line 847
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 849
    new-array v3, v10, [Ljava/lang/String;

    const/4 v4, 0x0

    move v1, v2

    :goto_8
    if-lt v4, v10, :cond_8

    .line 855
    :goto_9
    invoke-virtual {v8, v6, v9, v3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v3, v1

    goto :goto_4

    .line 851
    :cond_8
    invoke-virtual {p0, v1, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    move v1, v2

    goto :goto_9

    .line 823
    :cond_a
    invoke-virtual {p0, v5, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object v9

    .line 824
    add-int/lit8 v1, v5, 0x2

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    .line 825
    add-int/lit8 v1, v5, 0x4

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    add-int/lit8 v2, v5, 0x6

    .line 827
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    if-eqz v11, :cond_d

    .line 829
    new-array v3, v11, [Ljava/lang/String;

    move v5, v6

    move v1, v2

    :goto_a
    if-lt v5, v11, :cond_b

    .line 835
    :goto_b
    invoke-virtual {v8, v9, v10, v3}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move v5, v1

    goto/16 :goto_3

    .line 831
    :cond_b
    invoke-virtual {p0, v1, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_a

    .line 810
    :cond_c
    invoke-virtual {p0, v1, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v3

    .line 811
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 812
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, v5, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x6

    .line 814
    invoke-virtual {v8, v3, v4, v5}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    :cond_d
    move v1, v2

    goto :goto_b
.end method

.method private readParameterAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)V
    .locals 7
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

    aget-byte v0, v0, p3

    and-int/lit16 v3, v0, 0xff

    .line 2949
    invoke-virtual {p1, v3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    .line 2950
    iget-object v4, p2, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    .line 2952
    :cond_0
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_1
    if-gtz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2956
    :cond_1
    invoke-virtual {p0, v1, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 2959
    invoke-virtual {p1, v0, v5, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v1, v1, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, v5, v1, v6, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private readRecordComponent(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I
    .locals 20

    .line 896
    move-object/from16 v0, p2

    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 899
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    .line 900
    add-int/lit8 v3, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v19

    .line 908
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    .line 919
    const/4 v3, 0x0

    check-cast v3, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 921
    add-int/lit8 v3, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v6, p3, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    move/from16 v17, v3

    :goto_0
    if-gtz v17, :cond_a

    .line 956
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    move-result-object v5

    if-nez v5, :cond_0

    move v3, v6

    .line 1056
    :goto_1
    return v3

    .line 956
    :cond_0
    if-eqz v13, :cond_1

    .line 964
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v13, 0x2

    :goto_2
    if-gtz v4, :cond_5

    .line 971
    :cond_1
    if-eqz v14, :cond_2

    .line 982
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v14, 0x2

    :goto_3
    if-gtz v4, :cond_6

    .line 989
    :cond_2
    if-eqz v15, :cond_3

    .line 1000
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v15, 0x2

    :goto_4
    if-gtz v4, :cond_7

    .line 1009
    :cond_3
    if-eqz v16, :cond_4

    .line 1024
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v16, 0x2

    :goto_5
    if-gtz v4, :cond_8

    .line 1033
    :cond_4
    :goto_6
    if-nez v11, :cond_9

    .line 1056
    invoke-virtual {v5}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitEnd()V

    move v3, v6

    goto :goto_1

    .line 968
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 971
    const/4 v9, 0x1

    invoke-virtual {v5, v7, v9}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    add-int/lit8 v3, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v9, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 986
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 989
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    add-int/lit8 v3, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v9, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1004
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 1006
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 1009
    move-object/from16 v0, p2

    iget v9, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v12, 0x1

    invoke-virtual {v5, v9, v10, v7, v12}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    add-int/lit8 v3, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v9, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 1028
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 1030
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 1033
    move-object/from16 v0, p2

    iget v9, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v7, v12}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    add-int/lit8 v3, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v9, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_5

    .line 1049
    :cond_9
    iget-object v3, v11, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1050
    const/4 v4, 0x0

    iput-object v4, v11, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 1051
    invoke-virtual {v5, v11}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object v11, v3

    goto/16 :goto_6

    .line 925
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 926
    add-int/lit8 v3, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v6, v6, 0x6

    .line 930
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 931
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move v5, v13

    move v9, v14

    move v10, v15

    :goto_7
    move-object v3, v11

    .line 950
    :goto_8
    add-int/2addr v6, v7

    add-int/lit8 v7, v17, -0x1

    move-object v11, v3

    move-object v12, v4

    move/from16 v17, v7

    move v13, v5

    move v14, v9

    move v15, v10

    goto/16 :goto_0

    .line 932
    :cond_b
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v4, v12

    move v5, v6

    move v9, v14

    move v10, v15

    goto :goto_7

    .line 934
    :cond_c
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v4, v12

    move v5, v13

    move v9, v14

    move v10, v6

    goto :goto_7

    .line 936
    :cond_d
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v4, v12

    move v5, v13

    move v9, v6

    move v10, v15

    goto :goto_7

    .line 938
    :cond_e
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v4, v12

    move v5, v13

    move v9, v14

    move v10, v15

    move/from16 v16, v6

    goto :goto_7

    .line 941
    :cond_f
    move-object/from16 v0, p2

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    const/4 v3, 0x0

    check-cast v3, [Lzeroaicy/org/objectweb/asm/Label;

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v3

    .line 950
    iput-object v11, v3, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object v4, v12

    move v5, v13

    move v9, v14

    move v10, v15

    goto :goto_8
.end method

.method private readStackMapFrame(IZZLzeroaicy/org/objectweb/asm/Context;)I
    .locals 10

    .line 3283
    iget-object v4, p4, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 3284
    iget-object v5, p4, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    if-eqz p2, :cond_0

    .line 3288
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    move v6, v0

    .line 3294
    :goto_0
    const/4 v9, 0x0

    const/4 v0, 0x0

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    const/16 v0, 0x40

    if-ge v6, v0, :cond_1

    .line 3297
    const/4 v0, 0x3

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3298
    const/4 v0, 0x0

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    .line 3357
    :goto_1
    iget v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v0, v2

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    .line 3358
    iget v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    invoke-direct {p0, v0, v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    return v1

    .line 3291
    :cond_0
    const/4 v0, -0x1

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameOffset:I

    const/16 v0, 0xff

    move v1, p1

    move v6, v0

    goto :goto_0

    .line 3298
    :cond_1
    const/16 v0, 0x80

    if-ge v6, v0, :cond_2

    .line 3301
    iget-object v2, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    .line 3304
    const/4 v0, 0x4

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3305
    const/4 v0, 0x1

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    add-int/lit8 v6, v6, -0x40

    goto :goto_1

    :cond_2
    const/16 v0, 0xf7

    if-lt v6, v0, :cond_b

    .line 3307
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 v7, v1, 0x2

    const/16 v0, 0xf7

    if-ne v6, v0, :cond_4

    .line 3310
    iget-object v2, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    .line 3313
    const/4 v0, 0x4

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3314
    const/4 v0, 0x1

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    :cond_3
    :goto_2
    move v6, v8

    .line 3347
    goto :goto_1

    .line 3314
    :cond_4
    const/16 v0, 0xf8

    if-lt v6, v0, :cond_5

    const/16 v0, 0xfb

    if-ge v6, v0, :cond_5

    .line 3316
    const/4 v0, 0x2

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3317
    rsub-int v0, v6, 0xfb

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3318
    iget v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    iget v1, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    sub-int/2addr v0, v1

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 3319
    const/4 v0, 0x0

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    :goto_3
    move v1, v7

    .line 3322
    goto :goto_2

    .line 3319
    :cond_5
    const/16 v0, 0xfb

    if-ne v6, v0, :cond_6

    .line 3321
    const/4 v0, 0x3

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3322
    const/4 v0, 0x0

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    goto :goto_3

    :cond_6
    const/16 v0, 0xff

    if-ge v6, v0, :cond_9

    if-eqz p3, :cond_7

    .line 3324
    iget v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    :goto_4
    add-int/lit16 v9, v6, -0xfb

    move v3, v0

    move v6, v9

    move v1, v7

    :goto_5
    if-gtz v6, :cond_8

    .line 3330
    const/4 v0, 0x1

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3331
    iput v9, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3332
    iget v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    iget v2, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    add-int/2addr v0, v2

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    .line 3333
    const/4 v0, 0x0

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    goto :goto_2

    .line 3324
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 3326
    :cond_8
    iget-object v2, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v0

    goto :goto_5

    .line 3335
    :cond_9
    invoke-virtual {p0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 3337
    const/4 v0, 0x0

    iput v0, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameType:I

    .line 3338
    iput v6, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCountDelta:I

    .line 3339
    iput v6, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalCount:I

    add-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    :goto_6
    if-lt v3, v6, :cond_a

    .line 3345
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v1, v1, 0x2

    .line 3347
    iput v6, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackCount:I

    move v3, v9

    :goto_7
    if-ge v3, v6, :cond_3

    .line 3349
    iget-object v2, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3341
    :cond_a
    iget-object v2, p4, Lzeroaicy/org/objectweb/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3355
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static readStream(Ljava/io/InputStream;Z)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "PMD.UseTryWithResources"
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    .line 318
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/ClassReader;->computeBufferSize(Ljava/io/InputStream;)I

    move-result v4

    move-object v0, v1

    .line 319
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 321
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    :try_start_1
    new-array v0, v4, [B

    move v1, v3

    .line 325
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 329
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 338
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_1
    return-object v0

    .line 333
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz p1, :cond_2

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 338
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 326
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz p1, :cond_3

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 338
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    throw v0

    .line 326
    :cond_5
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private readStringish(I[C)Ljava/lang/String;
    .locals 2

    .line 3730
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I
    .locals 11

    const/4 v1, 0x0

    const/high16 v10, -0x1000000

    .line 2862
    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    ushr-int/lit8 v0, v3, 0x18

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2920
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2893
    :pswitch_0
    and-int/2addr v3, v10

    add-int/lit8 v0, p2, 0x1

    move v2, v0

    .line 2922
    :goto_0
    iput v3, p1, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    .line 2924
    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 2925
    check-cast v0, Lzeroaicy/org/objectweb/asm/TypePath;

    :goto_1
    iput-object v1, p1, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    return v0

    .line 2920
    :pswitch_1
    const v0, -0xffff01

    and-int/2addr v3, v0

    add-int/lit8 v0, p2, 0x4

    move v2, v0

    goto :goto_0

    :pswitch_2
    and-int v0, v3, v10

    .line 2893
    :goto_2
    add-int/lit8 v2, p2, 0x3

    move v3, v0

    goto :goto_0

    :pswitch_3
    and-int/lit16 v0, v3, -0x100

    goto :goto_2

    .line 2879
    :pswitch_4
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v0, p2, 0x3

    .line 2881
    new-array v2, v4, [Lzeroaicy/org/objectweb/asm/Label;

    iput-object v2, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    .line 2882
    new-array v2, v4, [Lzeroaicy/org/objectweb/asm/Label;

    iput-object v2, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    .line 2883
    new-array v2, v4, [I

    iput-object v2, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v4, :cond_0

    and-int/2addr v3, v10

    move v2, v0

    goto :goto_0

    .line 2885
    :cond_0
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 2886
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 2887
    add-int/lit8 v7, v0, 0x4

    invoke-virtual {p0, v7}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v0, v0, 0x6

    .line 2889
    iget-object v8, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lzeroaicy/org/objectweb/asm/Label;

    iget-object v9, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v5, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v9

    aput-object v9, v8, v2

    .line 2891
    iget-object v8, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lzeroaicy/org/objectweb/asm/Label;

    add-int/2addr v5, v6

    iget-object v6, p1, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v5, v6}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v5

    aput-object v5, v8, v2

    .line 2893
    iget-object v5, p1, Lzeroaicy/org/objectweb/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    aput v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    :pswitch_5
    const/high16 v0, -0x10000

    and-int/2addr v3, v0

    add-int/lit8 v0, p2, 0x2

    move v2, v0

    goto :goto_0

    .line 2925
    :cond_2
    new-instance v1, Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v1, v0, v2}, Lzeroaicy/org/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private readTypeAnnotations(Lzeroaicy/org/objectweb/asm/MethodVisitor;Lzeroaicy/org/objectweb/asm/Context;IZ)[I
    .locals 11

    .line 2741
    iget-object v4, p2, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 2744
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    new-array v6, v5, [I

    add-int/lit8 v1, p3, 0x2

    const/4 v0, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-lt v3, v5, :cond_0

    return-object v6

    .line 2748
    :cond_0
    aput v2, v6, v3

    .line 2751
    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    ushr-int/lit8 v8, v7, 0x18

    const/16 v0, 0x17

    if-eq v8, v0, :cond_2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    .line 2794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    add-int/lit8 v0, v2, 0x4

    move v1, v0

    .line 2798
    :goto_1
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v9

    const/4 v2, 0x0

    const/16 v0, 0x42

    if-ne v8, v0, :cond_4

    if-nez v9, :cond_3

    .line 2801
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/TypePath;

    move-object v0, v2

    :goto_2
    mul-int/lit8 v2, v9, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 2804
    invoke-virtual {p0, v1, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 2807
    and-int/lit16 v7, v7, -0x100

    invoke-virtual {p1, v7, v0, v2, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    .line 2821
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 2757
    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v2, 0x3

    :goto_4
    if-gtz v1, :cond_1

    move v1, v0

    goto :goto_1

    .line 2760
    :cond_1
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 2761
    add-int/lit8 v9, v0, 0x2

    invoke-virtual {p0, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    add-int/lit8 v0, v0, 0x6

    .line 2764
    iget-object v10, p2, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v2, v10}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    .line 2765
    add-int/2addr v2, v9

    iget-object v9, p2, Lzeroaicy/org/objectweb/asm/Context;->currentMethodLabels:[Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p0, v2, v9}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    :pswitch_2
    add-int/lit8 v0, v2, 0x3

    move v1, v0

    goto :goto_1

    .line 2801
    :cond_3
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypePath;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    invoke-direct {v0, v2, v1}, Lzeroaicy/org/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_2

    .line 2821
    :cond_4
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    const/4 v0, 0x0

    mul-int/lit8 v2, v9, 0x2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v0

    goto :goto_3

    .line 2751
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readUtf(II[C)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    .line 3695
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    move v0, v1

    move v2, p1

    :goto_0
    add-int v3, p2, p1

    if-lt v2, v3, :cond_0

    .line 3711
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 3697
    aget-byte v5, v4, v2

    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_1

    and-int/lit8 v2, v5, 0x7f

    int-to-char v2, v2

    .line 3699
    aput-char v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v6, v5, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_2

    .line 3701
    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, p3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 3704
    :cond_2
    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v4, v5

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, p3, v0

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lzeroaicy/org/objectweb/asm/Label;)I
    .locals 2

    .line 3383
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 3415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3411
    :pswitch_0
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, v0, p5}, Lzeroaicy/org/objectweb/asm/ClassReader;->createLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    aput-object v0, p2, p3

    .line 3407
    :goto_0
    add-int/lit8 v0, p1, 0x3

    .line 3386
    :goto_1
    return v0

    .line 3407
    :pswitch_1
    invoke-virtual {p0, v0, p4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    goto :goto_0

    .line 3404
    :pswitch_2
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v1, p2, p3

    goto :goto_1

    .line 3401
    :pswitch_3
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v1, p2, p3

    goto :goto_1

    .line 3398
    :pswitch_4
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v1, p2, p3

    goto :goto_1

    .line 3395
    :pswitch_5
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v1, p2, p3

    goto :goto_1

    .line 3392
    :pswitch_6
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v1, p2, p3

    goto :goto_1

    .line 3389
    :pswitch_7
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v1, p2, p3

    goto :goto_1

    .line 3386
    :pswitch_8
    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v1, p2, p3

    goto :goto_1

    .line 3383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V
    .locals 1
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
    .locals 37
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
    new-instance v36, Lzeroaicy/org/objectweb/asm/Context;

    invoke-direct/range {v36 .. v36}, Lzeroaicy/org/objectweb/asm/Context;-><init>()V

    .line 450
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Context;->attributePrototypes:[Lzeroaicy/org/objectweb/asm/Attribute;

    .line 451
    move/from16 v0, p3

    move-object/from16 v1, v36

    iput v0, v1, Lzeroaicy/org/objectweb/asm/Context;->parsingOptions:I

    .line 452
    move-object/from16 v0, p0

    iget v3, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v3, v3, [C

    move-object/from16 v0, v36

    iput-object v3, v0, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 455
    move-object/from16 v0, v36

    iget-object v15, v0, Lzeroaicy/org/objectweb/asm/Context;->charBuffer:[C

    .line 456
    move-object/from16 v0, p0

    iget v3, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 458
    add-int/lit8 v4, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    .line 459
    add-int/lit8 v4, v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v8

    .line 460
    add-int/lit8 v4, v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    new-array v9, v7, [Ljava/lang/String;

    add-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    move/from16 v35, v3

    :goto_0
    if-lt v4, v7, :cond_2f

    .line 474
    const/4 v4, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    .line 503
    const/4 v3, 0x0

    check-cast v3, Lzeroaicy/org/objectweb/asm/Attribute;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v11

    .line 506
    add-int/lit8 v3, v11, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    const/16 v21, 0x0

    const/4 v3, 0x0

    const/16 v30, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v32, 0x0

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v33, 0x0

    const/16 v31, 0x0

    move-object/from16 v18, v3

    move-object v7, v3

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v22, v3

    move/from16 v34, v10

    move v13, v11

    :goto_1
    if-gtz v34, :cond_1a

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_1

    if-nez v22, :cond_0

    if-eqz v21, :cond_1

    .line 579
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v24, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v36

    move/from16 v6, v24

    move/from16 v7, v23

    move-object/from16 v8, v19

    .line 584
    invoke-direct/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readModuleAttributes(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;IILjava/lang/String;)V

    :cond_2
    if-eqz v18, :cond_3

    .line 590
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_3
    if-eqz v30, :cond_4

    .line 595
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    .line 596
    add-int/lit8 v3, v30, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    if-nez v6, :cond_d

    const/4 v3, 0x0

    move-object v4, v3

    .line 597
    :goto_2
    if-nez v6, :cond_e

    const/4 v3, 0x0

    .line 599
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_4
    if-eqz v29, :cond_5

    .line 604
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v29, 0x2

    :goto_4
    if-gtz v3, :cond_f

    .line 611
    :cond_5
    if-eqz v28, :cond_6

    .line 622
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v28, 0x2

    :goto_5
    if-gtz v4, :cond_10

    .line 629
    :cond_6
    if-eqz v32, :cond_7

    .line 640
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v32, 0x2

    :goto_6
    if-gtz v4, :cond_11

    .line 649
    :cond_7
    if-eqz v27, :cond_8

    .line 664
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v27, 0x2

    :goto_7
    if-gtz v4, :cond_12

    .line 673
    :cond_8
    :goto_8
    if-nez v20, :cond_19

    if-eqz v26, :cond_9

    .line 697
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v26, 0x2

    :goto_9
    if-gtz v4, :cond_13

    .line 700
    :cond_9
    if-eqz v25, :cond_a

    .line 707
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v25, 0x2

    :goto_a
    if-gtz v3, :cond_14

    .line 710
    :cond_a
    if-eqz v33, :cond_b

    .line 718
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v33, 0x2

    :goto_b
    if-gtz v3, :cond_15

    .line 721
    :cond_b
    if-eqz v31, :cond_c

    .line 732
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v31, 0x2

    :goto_c
    if-gtz v3, :cond_16

    .line 740
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v35, 0x2

    :goto_d
    if-gtz v3, :cond_18

    .line 745
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, v4, 0x2

    :goto_e
    if-gtz v3, :cond_17

    .line 752
    invoke-virtual/range {p1 .. p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void

    .line 597
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v3, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_2

    .line 598
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v3, v3, v6

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 608
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 611
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_4

    .line 626
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 629
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_5

    .line 644
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 646
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 649
    move-object/from16 v0, v36

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, v36

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v5, v8}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_6

    .line 668
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readTypeAnnotationTarget(Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v3

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 673
    move-object/from16 v0, v36

    iget v6, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTarget:I

    move-object/from16 v0, v36

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Context;->currentTypeAnnotationTargetPath:Lzeroaicy/org/objectweb/asm/TypePath;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v5, v8}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readElementValues(Lzeroaicy/org/objectweb/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_7

    .line 700
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_9

    .line 710
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_a

    .line 721
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v8}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b

    .line 735
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readRecordComponent(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_c

    .line 748
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readMethod(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_e

    .line 743
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readField(Lzeroaicy/org/objectweb/asm/ClassVisitor;Lzeroaicy/org/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_d

    .line 689
    :cond_19
    move-object/from16 v0, v20

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 690
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 691
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    move-object/from16 v20, v3

    goto/16 :goto_8

    .line 508
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 509
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v14

    add-int/lit8 v13, v13, 0x6

    .line 513
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->SOURCE_FILE:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    :goto_f
    move-object/from16 v11, v20

    .line 565
    :goto_10
    add-int/lit8 v34, v34, -0x1

    add-int/2addr v13, v14

    move-object/from16 v18, v3

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v16

    move/from16 v23, v17

    goto/16 :goto_1

    .line 515
    :cond_1b
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->INNER_CLASSES:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v33, v13

    goto :goto_f

    .line 517
    :cond_1c
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->ENCLOSING_METHOD:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v30, v13

    goto :goto_f

    .line 519
    :cond_1d
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->NEST_HOST:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    goto :goto_f

    .line 521
    :cond_1e
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->NEST_MEMBERS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v26, v13

    goto :goto_f

    .line 523
    :cond_1f
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->PERMITTED_SUBCLASSES:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v25, v13

    goto :goto_f

    .line 525
    :cond_20
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    :goto_11
    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_f

    .line 527
    :cond_21
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v29, v13

    goto/16 :goto_f

    .line 529
    :cond_22
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v32, v13

    goto/16 :goto_f

    .line 531
    :cond_23
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->DEPRECATED:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/high16 v3, 0x20000

    or-int/2addr v5, v3

    goto :goto_11

    .line 533
    :cond_24
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->SYNTHETIC:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    or-int/lit16 v5, v5, 0x1000

    goto :goto_11

    .line 535
    :cond_25
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->SOURCE_DEBUG_EXTENSION:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v13

    if-gt v14, v3, :cond_26

    .line 539
    new-array v3, v14, [C

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_f

    .line 537
    :cond_26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 541
    :cond_27
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move/from16 v28, v13

    :cond_28
    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_10

    .line 543
    :cond_29
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v27, v13

    goto/16 :goto_10

    .line 545
    :cond_2a
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->RECORD:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/high16 v3, 0x10000

    or-int/2addr v5, v3

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v31, v13

    goto/16 :goto_10

    .line 548
    :cond_2b
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->MODULE:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v24, v13

    goto/16 :goto_f

    .line 550
    :cond_2c
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->MODULE_MAIN_CLASS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 551
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_11

    .line 552
    :cond_2d
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->MODULE_PACKAGES:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v13

    goto/16 :goto_f

    .line 554
    :cond_2e
    sget-object v3, Lzeroaicy/org/objectweb/asm/Constants;->BOOTSTRAP_METHODS:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    move-object v3, v4

    .line 556
    check-cast v3, [Lzeroaicy/org/objectweb/asm/Label;

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-direct/range {v10 .. v17}, Lzeroaicy/org/objectweb/asm/ClassReader;->readAttribute([Lzeroaicy/org/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v11

    .line 565
    move-object/from16 v0, v20

    iput-object v0, v11, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_10

    .line 463
    :cond_2f
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v15}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v4

    add-int/lit8 v3, v35, 0x2

    add-int/lit8 v4, v4, 0x1

    move/from16 v35, v3

    goto/16 :goto_0
.end method

.method public getAccess()I
    .locals 1

    .line 367
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

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
    .locals 4

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

    move v2, v0

    :goto_0
    if-gtz v2, :cond_2

    .line 3457
    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    move v2, v0

    :goto_1
    if-gtz v2, :cond_0

    add-int/lit8 v0, v1, 0x2

    return v0

    .line 3460
    :cond_0
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_2
    if-gtz v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 3463
    :cond_1
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3444
    :cond_2
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_3
    if-gtz v0, :cond_3

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 3452
    :cond_3
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    .line 402
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 403
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 404
    new-array v3, v2, [Ljava/lang/String;

    if-lez v2, :cond_0

    .line 406
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    new-array v4, v1, [C

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 409
    :cond_0
    return-object v3

    .line 406
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 409
    invoke-virtual {p0, v0, v4}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getItem(I)I
    .locals 1

    .line 3566
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 3552
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    .line 3577
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

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
    .locals 1

    .line 3588
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 1

    .line 3745
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 6

    .line 3824
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v2, v0, p1

    .line 3825
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 3853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3837
    :pswitch_0
    invoke-virtual {p0, v2, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 3851
    :goto_0
    return-object v0

    .line 3835
    :pswitch_1
    invoke-virtual {p0, v2, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0

    .line 3833
    :pswitch_2
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 3831
    :pswitch_3
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 3829
    :pswitch_4
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    .line 3827
    :pswitch_5
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 3851
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readConstantDynamic(I[C)Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    move-result-object v0

    goto :goto_0

    .line 3839
    :pswitch_7
    invoke-virtual {p0, v2, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0

    .line 3841
    :pswitch_8
    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    .line 3842
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    .line 3843
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v4, v2, v3

    .line 3844
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    .line 3845
    invoke-virtual {p0, v4, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 3846
    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 3847
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v5, v0

    const/16 v5, 0xb

    if-eq v0, v5, :cond_0

    const/4 v5, 0x0

    .line 3849
    :goto_1
    new-instance v0, Lzeroaicy/org/objectweb/asm/Handle;

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3847
    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public readInt(I)I
    .locals 5

    .line 3623
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3624
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v0, v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method protected readLabel(I[Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;
    .locals 1

    .line 2683
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2684
    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2686
    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public readLong(I)J
    .locals 6

    .line 3638
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 3639
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readModule(I[C)Ljava/lang/String;
    .locals 1

    .line 3760
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readPackage(I[C)Ljava/lang/String;
    .locals 1

    .line 3775
    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readShort(I)S
    .locals 3

    .line 3611
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3612
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 3656
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 3658
    check-cast v0, Ljava/lang/String;

    .line 3660
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readUnsignedShort(I)I
    .locals 3

    .line 3599
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    .line 3600
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method final readUtf(I[C)Ljava/lang/String;
    .locals 3

    .line 3673
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    aget-object v0, v1, p1

    if-eqz v0, :cond_0

    .line 3678
    :goto_0
    return-object v0

    .line 3677
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassReader;->cpInfoOffsets:[I

    aget v0, v0, p1

    .line 3678
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, v2, v0, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0
.end method
