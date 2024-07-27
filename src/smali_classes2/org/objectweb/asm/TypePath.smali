.class public Lorg/objectweb/asm/TypePath;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY_ELEMENT:I = 0x0

.field public static final INNER_TYPE:I = 0x1

.field public static final TYPE_ARGUMENT:I = 0x3

.field public static final WILDCARD_BOUND:I = 0x2


# instance fields
.field a:[B

.field b:I


# direct methods
.method constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/TypePath;->a:[B

    iput p2, p0, Lorg/objectweb/asm/TypePath;->b:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/objectweb/asm/TypePath;
    .registers 10

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v4, v3}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    invoke-virtual {v4, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_8

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x5b

    if-ne v1, v5, :cond_3

    invoke-virtual {v4, v2, v2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    :cond_2
    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v4, v1, v2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_4
    const/16 v5, 0x2a

    if-ne v1, v5, :cond_5

    const/4 v1, 0x2

    invoke-virtual {v4, v1, v2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_5
    if-lt v1, v7, :cond_2

    if-gt v1, v8, :cond_2

    add-int/lit8 v1, v1, -0x30

    :goto_3
    if-ge v0, v3, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_6

    if-gt v5, v8, :cond_6

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_8
    iget-object v0, v4, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, v4, Lorg/objectweb/asm/ByteVector;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    new-instance v0, Lorg/objectweb/asm/TypePath;

    iget-object v1, v4, Lorg/objectweb/asm/ByteVector;->a:[B

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/TypePath;->a:[B

    iget v1, p0, Lorg/objectweb/asm/TypePath;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/TypePath;->a:[B

    iget v1, p0, Lorg/objectweb/asm/TypePath;->b:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStepArgument(I)I
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/TypePath;->a:[B

    iget v1, p0, Lorg/objectweb/asm/TypePath;->b:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lorg/objectweb/asm/TypePath;->getLength()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/TypePath;->getStep(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
