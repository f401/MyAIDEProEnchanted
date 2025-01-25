.class final Lorg/objectweb/asm/AnnotationWriter;
.super Lorg/objectweb/asm/AnnotationVisitor;


# instance fields
.field private final a:Lorg/objectweb/asm/ClassWriter;

.field private b:I

.field private final c:Z

.field private final d:Lorg/objectweb/asm/ByteVector;

.field private final e:Lorg/objectweb/asm/ByteVector;

.field private final f:I

.field g:Lorg/objectweb/asm/AnnotationWriter;

.field h:Lorg/objectweb/asm/AnnotationWriter;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V
    .registers 7

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    iput-boolean p2, p0, Lorg/objectweb/asm/AnnotationWriter;->c:Z

    iput-object p3, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iput-object p4, p0, Lorg/objectweb/asm/AnnotationWriter;->e:Lorg/objectweb/asm/ByteVector;

    iput p5, p0, Lorg/objectweb/asm/AnnotationWriter;->f:I

    return-void
.end method

.method static a(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V
    .registers 6

    ushr-int/lit8 v0, p0, 0x18

    sparse-switch v0, :sswitch_data_3a

    ushr-int/lit8 v0, p0, 0x18

    const v1, 0xffff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, v0, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_10
    if-nez p1, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_16
    return-void

    :sswitch_17
    ushr-int/lit8 v0, p0, 0x10

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_10

    :sswitch_1d
    ushr-int/lit8 v0, p0, 0x18

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_10

    :sswitch_23
    invoke-virtual {p2, p0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_10

    :cond_27
    iget-object v0, p1, Lorg/objectweb/asm/TypePath;->a:[B

    iget v1, p1, Lorg/objectweb/asm/TypePath;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p1, Lorg/objectweb/asm/TypePath;->a:[B

    iget v2, p1, Lorg/objectweb/asm/TypePath;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v1, v2, v0}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    goto :goto_16

    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_17
        0x13 -> :sswitch_1d
        0x14 -> :sswitch_1d
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_17
        0x47 -> :sswitch_23
        0x48 -> :sswitch_23
        0x49 -> :sswitch_23
        0x4a -> :sswitch_23
        0x4b -> :sswitch_23
    .end sparse-switch
.end method

.method static a([Lorg/objectweb/asm/AnnotationWriter;ILorg/objectweb/asm/ByteVector;)V
    .registers 8

    const/4 v3, 0x0

    array-length v0, p0

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move v1, p1

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    aget-object v2, p0, v1

    if-nez v2, :cond_14

    move v2, v3

    :goto_10
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v2

    goto :goto_10

    :cond_1b
    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_24
    array-length v0, p0

    if-ge p1, v0, :cond_4f

    aget-object v1, p0, p1

    const/4 v0, 0x0

    move v4, v3

    :goto_2b
    if-eqz v1, :cond_39

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->visitEnd()V

    iput-object v0, v1, Lorg/objectweb/asm/AnnotationWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v2, v1, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    move-object v0, v1

    move-object v1, v2

    goto :goto_2b

    :cond_39
    invoke-virtual {p2, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_3c
    if-eqz v0, :cond_4c

    iget-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v2, v0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p2, v1, v3, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/AnnotationWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_3c

    :cond_4c
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_4f
    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_b

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_1

    :cond_b
    return v0
.end method

.method a(Lorg/objectweb/asm/ByteVector;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x0

    move-object v1, p0

    move v2, v3

    :goto_5
    if-eqz v1, :cond_18

    add-int/lit8 v2, v2, 0x1

    iget-object v5, v1, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->visitEnd()V

    iput-object v0, v1, Lorg/objectweb/asm/AnnotationWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    iget-object p0, v1, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    move-object v0, v1

    move-object v1, p0

    goto :goto_5

    :cond_18
    invoke-virtual {p1, v4}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_1e
    if-eqz v0, :cond_2e

    iget-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v2, v0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v1, v3, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/AnnotationWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    const/16 v6, 0x43

    const/16 v5, 0x42

    const/4 v1, 0x1

    const/16 v4, 0x5b

    const/4 v0, 0x0

    iget v2, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    iget-boolean v2, p0, Lorg/objectweb/asm/AnnotationWriter;->c:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_1d
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x73

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :cond_30
    :goto_30
    return-void

    :cond_31
    instance-of v2, p2, Ljava/lang/Byte;

    if-eqz v2, :cond_49

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v1

    iget v1, v1, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v0, v5, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_30

    :cond_49
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_66

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_56

    move v0, v1

    :cond_56
    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x5a

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_30

    :cond_66
    instance-of v2, p2, Ljava/lang/Character;

    if-eqz v2, :cond_7e

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v1

    iget v1, v1, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v0, v6, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_30

    :cond_7e
    instance-of v2, p2, Ljava/lang/Short;

    if-eqz v2, :cond_98

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x53

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v2, v2, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_30

    :cond_98
    instance-of v2, p2, Lorg/objectweb/asm/Type;

    if-eqz v2, :cond_b0

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x63

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    check-cast p2, Lorg/objectweb/asm/Type;

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_30

    :cond_b0
    instance-of v2, p2, [B

    if-eqz v2, :cond_d1

    check-cast p2, [B

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v4, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_bc
    array-length v1, p2

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget-byte v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v2, v2, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v5, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    :cond_d1
    instance-of v2, p2, [Z

    if-eqz v2, :cond_fb

    check-cast p2, [Z

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v3, p2

    invoke-virtual {v2, v4, v3}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    move v3, v0

    :goto_de
    array-length v2, p2

    if-ge v3, v2, :cond_30

    iget-object v4, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v5, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget-boolean v2, p2, v3

    if-eqz v2, :cond_f9

    move v2, v1

    :goto_ea
    const/16 v6, 0x5a

    invoke-virtual {v5, v2}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v2, v2, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v4, v6, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_de

    :cond_f9
    move v2, v0

    goto :goto_ea

    :cond_fb
    instance-of v1, p2, [S

    if-eqz v1, :cond_11e

    check-cast p2, [S

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v4, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_107
    array-length v1, p2

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x53

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget-short v4, p2, v0

    invoke-virtual {v3, v4}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_107

    :cond_11e
    instance-of v1, p2, [C

    if-eqz v1, :cond_13f

    check-cast p2, [C

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v4, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_12a
    array-length v1, p2

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget-char v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v2, v2, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    :cond_13f
    instance-of v1, p2, [I

    if-eqz v1, :cond_162

    check-cast p2, [I

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v4, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_14b
    array-length v1, p2

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x49

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_14b

    :cond_162
    instance-of v1, p2, [J

    if-eqz v1, :cond_185

    check-cast p2, [J

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v4, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_16e
    array-length v1, p2

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x4a

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget-wide v4, p2, v0

    invoke-virtual {v3, v4, v5}, Lorg/objectweb/asm/ClassWriter;->a(J)Lorg/objectweb/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16e

    :cond_185
    instance-of v1, p2, [F

    if-eqz v1, :cond_1a8

    check-cast p2, [F

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v4, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_191
    array-length v1, p2

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x46

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Lorg/objectweb/asm/ClassWriter;->a(F)Lorg/objectweb/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_191

    :cond_1a8
    instance-of v1, p2, [D

    if-eqz v1, :cond_1cb

    check-cast p2, [D

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v4, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_1b4
    array-length v1, p2

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x44

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    aget-wide v4, p2, v0

    invoke-virtual {v3, v4, v5}, Lorg/objectweb/asm/ClassWriter;->a(D)Lorg/objectweb/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b4

    :cond_1cb
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const-string v2, ".s.IFJDCS"

    iget v3, v0, Lorg/objectweb/asm/Item;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_30
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    iget v0, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    iget-boolean v0, p0, Lorg/objectweb/asm/AnnotationWriter;->c:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_15
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x40

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v4, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v5, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    const/4 v2, 0x0

    iget v0, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    iget-boolean v0, p0, Lorg/objectweb/asm/AnnotationWriter;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_16
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v4, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v5, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitEnd()V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->e:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->e:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, p0, Lorg/objectweb/asm/AnnotationWriter;->f:I

    iget v2, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lorg/objectweb/asm/AnnotationWriter;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_1c
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/AnnotationWriter;->b:I

    iget-boolean v0, p0, Lorg/objectweb/asm/AnnotationWriter;->c:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_15
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x65

    iget-object v2, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/AnnotationWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method
