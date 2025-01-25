.class public Lorg/objectweb/asm/Label;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:I

.field private e:[I

.field f:I

.field g:I

.field h:Lorg/objectweb/asm/Frame;

.field i:Lorg/objectweb/asm/Label;

.field public info:Ljava/lang/Object;

.field j:Lorg/objectweb/asm/Edge;

.field k:Lorg/objectweb/asm/Label;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    if-nez v0, :cond_a

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    :cond_a
    iget v0, p0, Lorg/objectweb/asm/Label;->d:I

    iget-object v1, p0, Lorg/objectweb/asm/Label;->e:[I

    array-length v1, v1

    if-lt v0, v1, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/objectweb/asm/Label;->e:[I

    iget-object v2, p0, Lorg/objectweb/asm/Label;->e:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    :cond_22
    iget-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    iget v1, p0, Lorg/objectweb/asm/Label;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/Label;->d:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    iget v1, p0, Lorg/objectweb/asm/Label;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/Label;->d:I

    aput p2, v0, v1

    return-void
.end method


# virtual methods
.method a()Lorg/objectweb/asm/Label;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    if-nez v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object p0, v0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    goto :goto_4
.end method

.method a(JI)V
    .registers 9

    iget v0, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_14

    iget v0, p0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/objectweb/asm/Label;->a:I

    div-int/lit8 v0, p3, 0x20

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    :cond_14
    iget-object v0, p0, Lorg/objectweb/asm/Label;->e:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget v2, v0, v1

    long-to-int v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method a(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V
    .registers 8

    const/4 v2, -0x1

    iget v0, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1d

    if-eqz p4, :cond_14

    rsub-int/lit8 v0, p3, -0x1

    iget v1, p2, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/Label;->a(II)V

    invoke-virtual {p2, v2}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_13
    return-void

    :cond_14
    iget v0, p2, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Label;->a(II)V

    invoke-virtual {p2, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_13

    :cond_1d
    if-eqz p4, :cond_26

    iget v0, p0, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_13

    :cond_26
    iget v0, p0, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_13
.end method

.method a(J)Z
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/objectweb/asm/Label;->e:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aget v1, v1, v2

    long-to-int v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method a(Lorg/objectweb/asm/Label;)Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_d

    iget v1, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    move v1, v0

    :goto_f
    iget-object v2, p0, Lorg/objectweb/asm/Label;->e:[I

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lorg/objectweb/asm/Label;->e:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/objectweb/asm/Label;->e:[I

    aget v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    goto :goto_d

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method a(Lorg/objectweb/asm/MethodWriter;I[B)Z
    .registers 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/Label;->a:I

    iput p2, p0, Lorg/objectweb/asm/Label;->c:I

    move v0, v1

    move v2, v1

    :goto_b
    iget v1, p0, Lorg/objectweb/asm/Label;->d:I

    if-ge v2, v1, :cond_72

    iget-object v1, p0, Lorg/objectweb/asm/Label;->e:[I

    add-int/lit8 v3, v2, 0x1

    aget v2, v1, v2

    iget-object v4, p0, Lorg/objectweb/asm/Label;->e:[I

    add-int/lit8 v1, v3, 0x1

    aget v3, v4, v3

    if-ltz v2, :cond_51

    sub-int v2, p2, v2

    const/16 v4, -0x8000

    if-lt v2, v4, :cond_27

    const/16 v4, 0x7fff

    if-le v2, v4, :cond_3a

    :cond_27
    add-int/lit8 v0, v3, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xa8

    if-gt v0, v4, :cond_48

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v0, v0, 0x31

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    :goto_39
    const/4 v0, 0x1

    :cond_3a
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    move v2, v1

    goto :goto_b

    :cond_48
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    goto :goto_39

    :cond_51
    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    move v2, v1

    goto :goto_b

    :cond_72
    return v0
.end method

.method b(Lorg/objectweb/asm/Label;JI)V
    .registers 9

    :goto_0
    if-eqz p0, :cond_65

    iget-object v0, p0, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    if-eqz p1, :cond_57

    iget v1, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_11

    move-object p0, v0

    goto :goto_0

    :cond_11
    iget v1, p0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lorg/objectweb/asm/Label;->a:I

    iget v1, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_38

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/Label;)Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Lorg/objectweb/asm/Edge;

    invoke-direct {v1}, Lorg/objectweb/asm/Edge;-><init>()V

    iget v2, p0, Lorg/objectweb/asm/Label;->f:I

    iput v2, v1, Lorg/objectweb/asm/Edge;->a:I

    iget-object v2, p1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iput-object v2, v1, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iget-object v2, p0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iput-object v2, v1, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iput-object v1, p0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    :cond_38
    :goto_38
    iget-object v1, p0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    :goto_3a
    if-eqz v1, :cond_63

    iget v2, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_48

    iget-object v2, p0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    if-eq v1, v2, :cond_54

    :cond_48
    iget-object v2, v1, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iget-object v2, v2, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    if-nez v2, :cond_54

    iget-object v2, v1, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iput-object v0, v2, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    iget-object v0, v1, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    :cond_54
    iget-object v1, v1, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    goto :goto_3a

    :cond_57
    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/Label;->a(J)Z

    move-result v1

    if-eqz v1, :cond_5f

    move-object p0, v0

    goto :goto_0

    :cond_5f
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/Label;->a(JI)V

    goto :goto_38

    :cond_63
    move-object p0, v0

    goto :goto_0

    :cond_65
    return-void
.end method

.method public getOffset()I
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Lorg/objectweb/asm/Label;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
