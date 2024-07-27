.class public Lorg/objectweb/asm/ClassReader;
.super Ljava/lang/Object;


# static fields
.field public static final EXPAND_FRAMES:I = 0x8

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field private final a:[I

.field public final b:[B

.field private final c:[Ljava/lang/String;

.field private final d:I

.field public final header:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/objectweb/asm/ClassReader;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    invoke-static {v0, v1}, Lorg/objectweb/asm/ClassReader;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, p2, 0x6

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x34

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    array-length v5, v0

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x1

    add-int/lit8 v1, p2, 0xa

    move v4, v1

    :goto_0
    if-ge v2, v5, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v3, v4, 0x1

    aput v3, v1, v2

    aget-byte v1, p1, v4

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x3

    move v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int v1, v4, v3

    move v4, v1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x5

    move v3, v1

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x9

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    if-le v1, v0, :cond_2

    move v0, v1

    move v3, v1

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x4

    move v3, v1

    goto :goto_1

    :cond_1
    iput v0, p0, Lorg/objectweb/asm/ClassReader;->d:I

    iput v4, p0, Lorg/objectweb/asm/ClassReader;->header:I

    return-void

    :cond_2
    move v3, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()I
    .registers 5

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v1, v0, 0x8

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_1
    if-lez v1, :cond_0

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move v2, v1

    :goto_2
    if-lez v2, :cond_3

    add-int/lit8 v1, v0, 0x8

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_3
    if-lez v1, :cond_2

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(IZZLorg/objectweb/asm/Context;)I
    .registers 14

    iget-object v4, p4, Lorg/objectweb/asm/Context;->c:[C

    iget-object v5, p4, Lorg/objectweb/asm/Context;->h:[Lorg/objectweb/asm/Label;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    :goto_0
    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->r:I

    const/16 v0, 0x40

    if-ge v6, v0, :cond_1

    const/4 v0, 0x3

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    :goto_1
    iget v0, p4, Lorg/objectweb/asm/Context;->o:I

    add-int/lit8 v1, v6, 0x1

    add-int/2addr v0, v1

    iput v0, p4, Lorg/objectweb/asm/Context;->o:I

    iget v0, p4, Lorg/objectweb/asm/Context;->o:I

    invoke-virtual {p0, v0, v5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    return v3

    :cond_0
    const/4 v0, -0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->o:I

    const/16 v0, 0xff

    move v3, p1

    move v6, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-ge v6, v0, :cond_2

    add-int/lit8 v6, v6, -0x40

    iget-object v1, p4, Lorg/objectweb/asm/Context;->u:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    const/4 v0, 0x4

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    const/4 v0, 0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v3, v3, 0x2

    const/16 v0, 0xf7

    if-ne v6, v0, :cond_3

    iget-object v1, p4, Lorg/objectweb/asm/Context;->u:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    const/4 v0, 0x4

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    const/4 v0, 0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    move v6, v7

    goto :goto_1

    :cond_3
    const/16 v0, 0xf8

    if-lt v6, v0, :cond_4

    const/16 v0, 0xfb

    if-ge v6, v0, :cond_4

    const/4 v0, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    rsub-int v0, v6, 0xfb

    iput v0, p4, Lorg/objectweb/asm/Context;->r:I

    iget v0, p4, Lorg/objectweb/asm/Context;->q:I

    iget v1, p4, Lorg/objectweb/asm/Context;->r:I

    sub-int/2addr v0, v1

    iput v0, p4, Lorg/objectweb/asm/Context;->q:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    move v6, v7

    goto :goto_1

    :cond_4
    const/16 v0, 0xfb

    if-ne v6, v0, :cond_5

    const/4 v0, 0x3

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    move v6, v7

    goto :goto_1

    :cond_5
    const/16 v0, 0xff

    if-ge v6, v0, :cond_8

    if-eqz p3, :cond_6

    iget v0, p4, Lorg/objectweb/asm/Context;->q:I

    :goto_2
    add-int/lit16 v1, v6, -0xfb

    move v8, v1

    move v2, v0

    :goto_3
    if-lez v8, :cond_7

    iget-object v1, p4, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v8, -0x1

    add-int/lit8 v2, v2, 0x1

    move v8, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    add-int/lit16 v0, v6, -0xfb

    iput v0, p4, Lorg/objectweb/asm/Context;->r:I

    iget v0, p4, Lorg/objectweb/asm/Context;->q:I

    iget v1, p4, Lorg/objectweb/asm/Context;->r:I

    add-int/2addr v0, v1

    iput v0, p4, Lorg/objectweb/asm/Context;->q:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    move v6, v7

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->r:I

    iput v0, p4, Lorg/objectweb/asm/Context;->q:I

    const/4 v2, 0x0

    move v6, v0

    :goto_4
    if-lez v6, :cond_9

    iget-object v1, p4, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    const/4 v2, 0x0

    move v6, v0

    :goto_5
    if-lez v6, :cond_a

    iget-object v1, p4, Lorg/objectweb/asm/Context;->u:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_5

    :cond_a
    move v6, v7

    goto/16 :goto_1
.end method

.method private a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p4, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v0, p1, 0x3

    :goto_0
    return v0

    :sswitch_0
    add-int/lit8 v0, p1, 0x5

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2, v2, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, v3, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_1

    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    :sswitch_4
    new-instance v0, Ljava/lang/Byte;

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_6
    new-instance v0, Ljava/lang/Short;

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-short v2, v2

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    :sswitch_7
    new-instance v0, Ljava/lang/Character;

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-char v2, v2

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto/16 :goto_0

    :sswitch_b
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v2, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v1, v1, 0x2

    if-nez v5, :cond_2

    add-int/lit8 v0, v1, -0x2

    invoke-virtual {p4, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v3, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_2

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p4, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v3, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    new-array v1, v5, [B

    :goto_2
    if-ge v3, v5, :cond_3

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_e
    new-array v6, v5, [Z

    move v1, v0

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    aput-boolean v0, v6, v4

    add-int/lit8 v0, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    invoke-virtual {p4, p3, v6}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    goto/16 :goto_0

    :sswitch_f
    new-array v1, v5, [S

    :goto_5
    if-ge v3, v5, :cond_6

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_10
    new-array v1, v5, [C

    :goto_6
    if-ge v3, v5, :cond_7

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_11
    new-array v1, v5, [I

    :goto_7
    if-ge v3, v5, :cond_8

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_12
    new-array v1, v5, [J

    :goto_8
    if-ge v3, v5, :cond_9

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v6

    aput-wide v6, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_13
    new-array v1, v5, [F

    :goto_9
    if-ge v3, v5, :cond_a

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_14
    new-array v1, v5, [D

    :goto_a
    if-ge v3, v5, :cond_b

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    aput-wide v6, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x5b -> :sswitch_2
        0x65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_b
        0x42 -> :sswitch_4
        0x43 -> :sswitch_7
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x53 -> :sswitch_6
        0x5a -> :sswitch_5
        0x5b -> :sswitch_c
        0x63 -> :sswitch_a
        0x65 -> :sswitch_9
        0x73 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x42 -> :sswitch_d
        0x43 -> :sswitch_10
        0x44 -> :sswitch_14
        0x46 -> :sswitch_13
        0x49 -> :sswitch_11
        0x4a -> :sswitch_12
        0x53 -> :sswitch_f
        0x5a -> :sswitch_e
    .end sparse-switch
.end method

.method private a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I
    .registers 8

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, p1, 0x2

    if-eqz p3, :cond_0

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p2, v0, p4}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v2, p4}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_2
    return v0
.end method

.method private a(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I
    .registers 26

    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/objectweb/asm/Context;->c:[C

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    add-int/lit8 v2, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v2, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v3, p3, 0x6

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move/from16 v20, v2

    move/from16 v21, v3

    :goto_0
    if-lez v20, :cond_9

    add-int/lit8 v2, v21, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ConstantValue"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v21, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v13, 0x0

    :goto_1
    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    :goto_2
    add-int/lit8 v9, v21, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int v21, v21, v9

    add-int/lit8 v9, v20, -0x1

    move-object v14, v2

    move/from16 v20, v9

    move v15, v3

    move/from16 v19, v8

    move/from16 v18, v6

    move/from16 v17, v5

    move/from16 v16, v4

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v13

    goto :goto_1

    :cond_1
    const-string v2, "Signature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v21, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto :goto_2

    :cond_2
    const-string v2, "Deprecated"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x20000

    or-int v3, v2, v15

    move-object v2, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto :goto_2

    :cond_3
    const-string v2, "Synthetic"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x41000

    or-int v3, v2, v15

    move-object v2, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto :goto_2

    :cond_4
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v8, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    goto :goto_2

    :cond_5
    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v5, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_2

    :cond_6
    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v6, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v8, v19

    goto/16 :goto_2

    :cond_7
    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v4, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    add-int/lit8 v5, v21, 0x8

    add-int/lit8 v2, v21, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/objectweb/asm/ClassReader;->a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v2

    if-eqz v2, :cond_10

    iput-object v14, v2, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_2

    :cond_9
    move-object/from16 v8, p1

    move v9, v15

    invoke-virtual/range {v8 .. v13}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v4

    if-nez v4, :cond_a

    :goto_3
    add-int/lit8 v2, v21, 0x2

    return v2

    :cond_a
    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v19, 0x2

    :goto_4
    if-lez v3, :cond_b

    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v4, v2, v8}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6, v2}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_b
    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v18, 0x2

    :goto_5
    if-lez v3, :cond_c

    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6, v2}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_c
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v17, 0x2

    :goto_6
    if-lez v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v2

    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget v8, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v2, v10}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6, v2}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_d
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v16, 0x2

    :goto_7
    if-lez v3, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v2

    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget v8, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v2, v10}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6, v2}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_e
    :goto_8
    if-eqz v14, :cond_f

    iget-object v2, v14, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v3, 0x0

    iput-object v3, v14, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v4, v14}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v14, v2

    goto :goto_8

    :cond_f
    invoke-virtual {v4}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    goto/16 :goto_3

    :cond_10
    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_2
.end method

.method private a(Lorg/objectweb/asm/Context;I)I
    .registers 11

    const/high16 v0, -0x1000000

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x18

    sparse-switch v2, :sswitch_data_0

    ushr-int/lit8 v2, v1, 0x18

    const/16 v3, 0x43

    if-ge v2, v3, :cond_0

    const/16 v0, -0x100

    :cond_0
    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x3

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v2

    iput v1, p1, Lorg/objectweb/asm/Context;->i:I

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p1, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    return v0

    :sswitch_0
    const/high16 v0, -0x10000

    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x2

    goto :goto_0

    :sswitch_1
    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :sswitch_2
    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    new-array v0, v3, [Lorg/objectweb/asm/Label;

    iput-object v0, p1, Lorg/objectweb/asm/Context;->l:[Lorg/objectweb/asm/Label;

    new-array v0, v3, [Lorg/objectweb/asm/Label;

    iput-object v0, p1, Lorg/objectweb/asm/Context;->m:[Lorg/objectweb/asm/Label;

    new-array v0, v3, [I

    iput-object v0, p1, Lorg/objectweb/asm/Context;->n:[I

    add-int/lit8 v0, p2, 0x3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    iget-object v6, p1, Lorg/objectweb/asm/Context;->l:[Lorg/objectweb/asm/Label;

    iget-object v7, p1, Lorg/objectweb/asm/Context;->h:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v4, v7}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v6, p1, Lorg/objectweb/asm/Context;->m:[Lorg/objectweb/asm/Label;

    add-int/2addr v4, v5

    iget-object v5, p1, Lorg/objectweb/asm/Context;->h:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v4, v5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v4

    aput-object v4, v6, v2

    iget-object v4, p1, Lorg/objectweb/asm/Context;->n:[I

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :sswitch_3
    const v0, -0xffff01

    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x4

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/objectweb/asm/TypePath;

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    invoke-direct {v1, v3, v0}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x47 -> :sswitch_3
        0x48 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I
    .registers 8

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, p3, 0x1

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {p0, v1, p5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_1
    sget-object v1, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_3
    sget-object v1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_4
    sget-object v1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_5
    sget-object v1, Lorg/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_6
    sget-object v1, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(II[C)Ljava/lang/String;
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v7, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    move v6, p1

    move v0, v3

    move v1, v3

    move v5, v3

    :goto_0
    add-int v4, p1, p2

    if-ge v6, v4, :cond_2

    aget-byte v8, v7, v6

    packed-switch v1, :pswitch_data_0

    move v4, v5

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_0

    :pswitch_0
    and-int/lit16 v8, v8, 0xff

    const/16 v4, 0x80

    if-ge v8, v4, :cond_0

    add-int/lit8 v4, v5, 0x1

    int-to-char v8, v8

    int-to-char v8, v8

    aput-char v8, p3, v5

    goto :goto_1

    :cond_0
    const/16 v0, 0xe0

    if-ge v8, v0, :cond_1

    const/16 v0, 0xbf

    if-le v8, v0, :cond_1

    and-int/lit8 v0, v8, 0x1f

    int-to-char v0, v0

    move v1, v2

    move v4, v5

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v8, 0xf

    int-to-char v0, v0

    const/4 v1, 0x2

    move v4, v5

    goto :goto_1

    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    shl-int/lit8 v1, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v1, v8

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, p3, v5

    move v1, v3

    goto :goto_1

    :pswitch_2
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v8, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    move v1, v2

    move v4, v5

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;
    .registers 15

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v0, p1, v0

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/objectweb/asm/Attribute;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lorg/objectweb/asm/ClassWriter;[Lorg/objectweb/asm/Item;[C)V
    .registers 12

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/objectweb/asm/ClassReader;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v5, v1

    :goto_0
    if-lez v2, :cond_4

    const-string v1, "BootstrapMethods"

    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p0, v3, p3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v1, v5, 0x4

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v5

    move v5, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v5, 0x8

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v3, v5, 0xa

    move v4, v0

    :goto_3
    if-ge v4, v6, :cond_3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move v2, v3

    :goto_4
    if-lez v1, :cond_2

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {p0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    invoke-virtual {p0, v7, p3}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    xor-int/2addr v0, v7

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    new-instance v1, Lorg/objectweb/asm/Item;

    invoke-direct {v1, v4}, Lorg/objectweb/asm/Item;-><init>(I)V

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0xa

    const v7, 0x7fffffff

    and-int/2addr v0, v7

    invoke-virtual {v1, v3, v0}, Lorg/objectweb/asm/Item;->a(II)V

    iget v0, v1, Lorg/objectweb/asm/Item;->j:I

    array-length v3, p2

    rem-int/2addr v0, v3

    aget-object v3, p2, v0

    iput-object v3, v1, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    aput-object v1, p2, v0

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v2, 0x4

    move v4, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    new-instance v1, Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v0, 0x3e

    invoke-direct {v1, v2}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v3, v5, 0xa

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v2, v3, v0}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iput v6, p1, Lorg/objectweb/asm/ClassWriter;->z:I

    iput-object v1, p1, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method private a(Lorg/objectweb/asm/Context;)V
    .registers 10

    const/16 v7, 0x3b

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p1, Lorg/objectweb/asm/Context;->g:Ljava/lang/String;

    iget-object v5, p1, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    iget v0, p1, Lorg/objectweb/asm/Context;->e:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    const-string v0, "<init>"

    iget-object v3, p1, Lorg/objectweb/asm/Context;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, v5, v2

    move v0, v1

    move v2, v1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iput v2, p1, Lorg/objectweb/asm/Context;->q:I

    return-void

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget-object v3, p1, Lorg/objectweb/asm/Context;->c:[C

    invoke-virtual {p0, v0, v3}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    move v0, v1

    move v2, v1

    goto :goto_0

    :sswitch_0
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :goto_1
    :sswitch_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x5b

    if-ne v3, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x4c

    if-ne v3, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v3, 0x1

    move v2, v1

    goto :goto_0

    :sswitch_5
    move v3, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_3
        0x46 -> :sswitch_1
        0x49 -> :sswitch_0
        0x4a -> :sswitch_2
        0x4c -> :sswitch_5
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method private a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;I)V
    .registers 41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/objectweb/asm/ClassReader;->b:[B

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/objectweb/asm/Context;->c:[C

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v32

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v33

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v34

    add-int/lit8 v30, p3, 0x8

    add-int v35, v30, v34

    add-int/lit8 v5, v34, 0x2

    new-array v11, v5, [Lorg/objectweb/asm/Label;

    move-object/from16 v0, p2

    iput-object v11, v0, Lorg/objectweb/asm/Context;->h:[Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v34, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move/from16 v6, v30

    :goto_0
    move/from16 v0, v35

    if-ge v6, v0, :cond_3

    sub-int v7, v6, v30

    aget-byte v5, v31, v6

    sget-object v8, Lorg/objectweb/asm/ClassWriter;->a:[B

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v8, v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v5, v6, 0x4

    :goto_1
    move v6, v5

    goto :goto_0

    :pswitch_1
    add-int/lit8 v5, v6, 0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v5

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v6, 0x3

    goto :goto_1

    :pswitch_3
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v6, 0x5

    goto :goto_1

    :pswitch_4
    add-int/lit8 v5, v6, 0x1

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x84

    if-ne v5, v7, :cond_0

    add-int/lit8 v5, v6, 0x6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v6, 0x4

    goto :goto_1

    :pswitch_5
    add-int/lit8 v5, v6, 0x4

    and-int/lit8 v6, v7, 0x3

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v6, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v8, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x1

    :goto_2
    if-lez v6, :cond_1

    add-int/lit8 v8, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/2addr v8, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0xc

    goto :goto_1

    :pswitch_6
    add-int/lit8 v5, v6, 0x4

    and-int/lit8 v6, v7, 0x3

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v6, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    :goto_3
    if-lez v6, :cond_2

    add-int/lit8 v8, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/2addr v8, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_1

    :pswitch_7
    add-int/lit8 v5, v6, 0x2

    goto/16 :goto_1

    :pswitch_8
    add-int/lit8 v5, v6, 0x3

    goto/16 :goto_1

    :pswitch_9
    add-int/lit8 v5, v6, 0x5

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    :goto_4
    if-lez v5, :cond_4

    add-int/lit8 v7, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v7

    add-int/lit8 v8, v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v8

    add-int/lit8 v10, v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v13, v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v10, v12}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v27, v6, 0x2

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v15, -0x1

    const/4 v14, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    move/from16 v18, v5

    :goto_5
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move/from16 v28, v5

    :goto_6
    if-lez v28, :cond_17

    add-int/lit8 v5, v27, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    const-string v5, "LocalVariableTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3f

    add-int/lit8 v5, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    move/from16 v5, v27

    :goto_7
    if-lez v7, :cond_40

    add-int/lit8 v8, v5, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget-object v10, v11, v8

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v10

    iget v12, v10, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v10, Lorg/objectweb/asm/Label;->a:I

    :cond_5
    add-int/lit8 v10, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/2addr v8, v10

    aget-object v10, v11, v8

    if-nez v10, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v8

    iget v10, v8, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v8, Lorg/objectweb/asm/Label;->a:I

    :cond_6
    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_5

    :cond_8
    const-string v5, "LocalVariableTypeTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v12, v27, 0x8

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v12

    :goto_8
    add-int/lit8 v12, v27, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x6

    add-int v27, v27, v12

    add-int/lit8 v12, v28, -0x1

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v28, v12

    move v14, v10

    move v15, v13

    move/from16 v23, v17

    move/from16 v22, v16

    goto/16 :goto_6

    :cond_9
    const-string v5, "LineNumberTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3f

    add-int/lit8 v5, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move/from16 v7, v27

    move v8, v5

    :goto_9
    if-lez v8, :cond_d

    add-int/lit8 v5, v7, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget-object v10, v11, v5

    if-nez v10, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v10

    iget v12, v10, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v10, Lorg/objectweb/asm/Label;->a:I

    :cond_a
    aget-object v5, v11, v5

    :goto_a
    iget v10, v5, Lorg/objectweb/asm/Label;->b:I

    if-lez v10, :cond_c

    iget-object v10, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    if-nez v10, :cond_b

    new-instance v10, Lorg/objectweb/asm/Label;

    invoke-direct {v10}, Lorg/objectweb/asm/Label;-><init>()V

    iput-object v10, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    :cond_b
    iget-object v5, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    goto :goto_a

    :cond_c
    add-int/lit8 v10, v7, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    iput v10, v5, Lorg/objectweb/asm/Label;->b:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v5, v7, 0x4

    move v7, v5

    goto :goto_9

    :cond_d
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_8

    :cond_e
    const-string v5, "RuntimeVisibleTypeAnnotations"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    add-int/lit8 v5, v27, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v7}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v7

    array-length v5, v7

    if-eqz v5, :cond_f

    const/4 v5, 0x0

    aget v5, v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v8, 0x43

    if-ge v5, v8, :cond_10

    :cond_f
    const/4 v12, -0x1

    :goto_b
    move-object/from16 v5, v19

    move/from16 v8, v21

    move v10, v14

    move v13, v12

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_8

    :cond_10
    const/4 v5, 0x0

    aget v5, v7, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    goto :goto_b

    :cond_11
    const-string v5, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    add-int/lit8 v5, v27, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v7}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v5

    array-length v7, v5

    if-eqz v7, :cond_12

    const/4 v7, 0x0

    aget v7, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v7

    const/16 v8, 0x43

    if-ge v7, v8, :cond_13

    :cond_12
    const/4 v10, -0x1

    :goto_c
    move-object/from16 v7, v20

    move/from16 v8, v21

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_8

    :cond_13
    const/4 v7, 0x0

    aget v7, v5, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    goto :goto_c

    :cond_14
    const-string v5, "StackMapTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3f

    add-int/lit8 v12, v27, 0xa

    add-int/lit8 v5, v27, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v25

    add-int/lit8 v5, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v26

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v24, v12

    goto/16 :goto_8

    :cond_15
    const-string v5, "StackMap"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3f

    const/4 v8, 0x0

    add-int/lit8 v12, v27, 0xa

    add-int/lit8 v5, v27, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v21

    add-int/lit8 v5, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v26

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v24, v12

    move/from16 v25, v21

    goto/16 :goto_8

    :cond_16
    const/4 v5, 0x0

    move-object v12, v6

    move v13, v5

    :goto_d
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    array-length v5, v5

    if-ge v13, v5, :cond_41

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    aget-object v5, v5, v13

    iget-object v5, v5, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    aget-object v5, v5, v13

    add-int/lit8 v7, v27, 0x8

    add-int/lit8 v6, v27, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/lit8 v10, v30, -0x8

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v5

    if-eqz v5, :cond_3e

    iput-object v12, v5, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    :goto_e
    add-int/lit8 v6, v13, 0x1

    move-object v12, v5

    move v13, v6

    goto :goto_d

    :cond_17
    if-eqz v24, :cond_3d

    const/4 v5, -0x1

    move-object/from16 v0, p2

    iput v5, v0, Lorg/objectweb/asm/Context;->o:I

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lorg/objectweb/asm/Context;->p:I

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lorg/objectweb/asm/Context;->q:I

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lorg/objectweb/asm/Context;->r:I

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iput v5, v0, Lorg/objectweb/asm/Context;->t:I

    move/from16 v0, v33

    new-array v5, v0, [Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v5, v0, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    move/from16 v0, v32

    new-array v5, v0, [Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v5, v0, Lorg/objectweb/asm/Context;->u:[Ljava/lang/Object;

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;)V

    :cond_18
    move/from16 v5, v24

    :goto_f
    add-int v7, v24, v25

    add-int/lit8 v7, v7, -0x2

    if-ge v5, v7, :cond_1a

    aget-byte v7, v31, v5

    const/16 v8, 0x8

    if-ne v7, v8, :cond_19

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    if-ltz v7, :cond_19

    move/from16 v0, v34

    if-ge v7, v0, :cond_19

    add-int v8, v30, v7

    aget-byte v8, v31, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v10, 0xbb

    if-ne v8, v10, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1a
    move-object/from16 v5, p2

    :goto_10
    const/16 v25, 0x0

    const/4 v10, 0x0

    move-object/from16 v16, v5

    move/from16 v29, v30

    move v8, v14

    move/from16 v28, v26

    move/from16 v17, v24

    move/from16 v27, v15

    :goto_11
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_30

    sub-int v36, v29, v30

    aget-object v7, v11, v36

    if-eqz v7, :cond_3b

    iget-object v5, v7, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    const/4 v12, 0x0

    iput-object v12, v7, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    move-object/from16 v0, p2

    iget v12, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_3b

    iget v12, v7, Lorg/objectweb/asm/Label;->b:I

    if-lez v12, :cond_3b

    iget v12, v7, Lorg/objectweb/asm/Label;->b:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    :goto_12
    if-eqz v5, :cond_3b

    iget v12, v5, Lorg/objectweb/asm/Label;->b:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    iget-object v5, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    goto :goto_12

    :goto_13
    if-eqz v24, :cond_20

    move-object/from16 v0, v24

    iget v5, v0, Lorg/objectweb/asm/Context;->o:I

    move/from16 v0, v36

    if-eq v5, v0, :cond_1b

    move-object/from16 v0, v24

    iget v5, v0, Lorg/objectweb/asm/Context;->o:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_20

    :cond_1b
    move-object/from16 v0, v24

    iget v5, v0, Lorg/objectweb/asm/Context;->o:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1d

    if-eqz v21, :cond_1c

    if-eqz v18, :cond_1e

    :cond_1c
    const/4 v13, -0x1

    move-object/from16 v0, v24

    iget v14, v0, Lorg/objectweb/asm/Context;->q:I

    move-object/from16 v0, v24

    iget-object v15, v0, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    move-object/from16 v0, v24

    iget v0, v0, Lorg/objectweb/asm/Context;->t:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/objectweb/asm/Context;->u:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_1d
    :goto_14
    if-lez v28, :cond_1f

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v21

    move/from16 v3, v18

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/ClassReader;->a(IZZLorg/objectweb/asm/Context;)I

    move-result v5

    add-int/lit8 v7, v28, -0x1

    move/from16 v26, v5

    move/from16 v28, v7

    goto :goto_13

    :cond_1e
    move-object/from16 v0, v24

    iget v13, v0, Lorg/objectweb/asm/Context;->p:I

    move-object/from16 v0, v24

    iget v14, v0, Lorg/objectweb/asm/Context;->r:I

    move-object/from16 v0, v24

    iget-object v15, v0, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    move-object/from16 v0, v24

    iget v0, v0, Lorg/objectweb/asm/Context;->t:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/objectweb/asm/Context;->u:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_14

    :cond_1f
    const/4 v5, 0x0

    move-object/from16 v24, v5

    goto :goto_13

    :cond_20
    aget-byte v5, v31, v29

    and-int/lit16 v13, v5, 0xff

    sget-object v5, Lorg/objectweb/asm/ClassWriter;->a:[B

    aget-byte v5, v5, v13

    packed-switch v5, :pswitch_data_1

    :pswitch_a
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v29, 0x3

    aget-byte v7, v31, v7

    and-int/lit16 v7, v7, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    add-int/lit8 v7, v29, 0x4

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    :goto_15
    if-eqz v20, :cond_3c

    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v12, v5, :cond_3c

    move/from16 v0, v36

    if-gt v14, v0, :cond_3c

    move/from16 v0, v36

    if-ne v14, v0, :cond_21

    aget v5, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v5

    add-int/lit8 v7, v5, 0x2

    const/4 v14, 0x1

    move-object/from16 v0, p2

    iget v15, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v5, v2}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9, v14, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_21
    add-int/lit8 v7, v12, 0x1

    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v7, v5, :cond_22

    aget v5, v20, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v12, 0x43

    if-ge v5, v12, :cond_2b

    :cond_22
    const/4 v5, -0x1

    :goto_16
    move v12, v7

    move v14, v5

    goto :goto_15

    :pswitch_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v7, v29, 0x1

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto :goto_15

    :pswitch_c
    const/16 v5, 0x36

    if-le v13, v5, :cond_23

    add-int/lit8 v5, v13, -0x3b

    shr-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x36

    and-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_17
    add-int/lit8 v7, v29, 0x1

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto :goto_15

    :cond_23
    add-int/lit8 v5, v13, -0x1a

    shr-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x15

    and-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_17

    :pswitch_d
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v5

    add-int v5, v5, v36

    aget-object v5, v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v7, v29, 0x3

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_e
    add-int/lit8 v5, v13, -0x21

    add-int/lit8 v7, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int v7, v7, v36

    aget-object v7, v11, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v7, v29, 0x5

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_f
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x84

    if-ne v5, v7, :cond_24

    add-int/lit8 v5, v29, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v7, v29, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v7, v29, 0x6

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :cond_24
    add-int/lit8 v7, v29, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v7, v29, 0x4

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_10
    add-int/lit8 v5, v29, 0x4

    and-int/lit8 v7, v36, 0x3

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v12

    add-int/lit8 v7, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v13

    add-int/lit8 v7, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v14

    sub-int v7, v14, v13

    add-int/lit8 v7, v7, 0x1

    new-array v15, v7, [Lorg/objectweb/asm/Label;

    add-int/lit8 v7, v5, 0xc

    const/4 v5, 0x0

    :goto_18
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    add-int v16, v16, v36

    aget-object v16, v11, v16

    aput-object v16, v15, v5

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_25
    add-int v5, v36, v12

    aget-object v5, v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v5, v15}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_11
    add-int/lit8 v5, v29, 0x4

    and-int/lit8 v7, v36, 0x3

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v12

    add-int/lit8 v7, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v13

    new-array v14, v13, [I

    new-array v15, v13, [Lorg/objectweb/asm/Label;

    add-int/lit8 v7, v5, 0x8

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v13, :cond_26

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    aput v16, v14, v5

    add-int/lit8 v16, v7, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    add-int v16, v16, v36

    aget-object v16, v11, v16

    aput-object v16, v15, v5

    add-int/lit8 v7, v7, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_26
    add-int v5, v36, v12

    aget-object v5, v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14, v15}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_12
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v7, v29, 0x2

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_13
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    add-int/lit8 v7, v29, 0x2

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_14
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    add-int/lit8 v7, v29, 0x3

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_15
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    add-int/lit8 v7, v29, 0x2

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_16
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    add-int/lit8 v7, v29, 0x3

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v7, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v5, v5, v7

    add-int/lit8 v7, v5, -0x1

    aget-byte v7, v31, v7

    const/16 v12, 0xb

    if-ne v7, v12, :cond_27

    const/16 v17, 0x1

    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v5, v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    const/16 v5, 0xb6

    if-ge v13, v5, :cond_28

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    const/16 v5, 0xb9

    if-ne v13, v5, :cond_29

    add-int/lit8 v7, v29, 0x5

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :cond_27
    const/16 v17, 0x0

    goto :goto_1a

    :cond_28
    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1b

    :cond_29
    add-int/lit8 v7, v29, 0x3

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v7, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v13, v5, v7

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/objectweb/asm/Context;->d:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v7, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/objectweb/asm/Handle;

    add-int/lit8 v12, v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    new-array v15, v14, [Ljava/lang/Object;

    add-int/lit8 v12, v7, 0x4

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v14, :cond_2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v7

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_2a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v12, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    aget v7, v7, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7, v5, v15}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    add-int/lit8 v7, v29, 0x5

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_19
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    add-int/lit8 v7, v29, 0x3

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :pswitch_1a
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v29, 0x2

    aget-byte v7, v31, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v7, v29, 0x3

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_15

    :cond_2b
    aget v5, v20, v7

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    goto/16 :goto_16

    :goto_1d
    if-eqz v19, :cond_2f

    move-object/from16 v0, v19

    array-length v8, v0

    if-ge v7, v8, :cond_2f

    move/from16 v0, v36

    if-gt v5, v0, :cond_2f

    move/from16 v0, v36

    if-ne v5, v0, :cond_2c

    aget v5, v19, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v5

    add-int/lit8 v8, v5, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget v15, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v5, v2}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v7, v5, :cond_2d

    aget v5, v19, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v8, 0x43

    if-ge v5, v8, :cond_2e

    :cond_2d
    const/4 v5, -0x1

    goto :goto_1d

    :cond_2e
    aget v5, v19, v7

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    goto :goto_1d

    :cond_2f
    move-object/from16 v16, v24

    move/from16 v29, v13

    move/from16 v25, v12

    move v8, v5

    move v10, v7

    move/from16 v17, v26

    move/from16 v27, v14

    goto/16 :goto_11

    :cond_30
    aget-object v5, v11, v34

    if-eqz v5, :cond_31

    aget-object v5, v11, v34

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_31
    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_35

    if-eqz v22, :cond_35

    const/4 v5, 0x0

    if-eqz v23, :cond_32

    add-int/lit8 v8, v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    new-array v5, v5, [I

    array-length v7, v5

    :goto_1e
    if-lez v7, :cond_32

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v10, v8, 0x6

    aput v10, v5, v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v10, v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aput v10, v5, v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aput v10, v5, v7

    add-int/lit8 v8, v8, 0xa

    goto :goto_1e

    :cond_32
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/lit8 v7, v22, 0x2

    move v8, v7

    :goto_1f
    if-lez v10, :cond_35

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    add-int/lit8 v7, v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    add-int/lit8 v7, v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v18

    const/4 v15, 0x0

    if-eqz v5, :cond_33

    const/4 v7, 0x0

    :goto_20
    array-length v13, v5

    if-ge v7, v13, :cond_33

    aget v13, v5, v7

    if-ne v13, v12, :cond_34

    add-int/lit8 v13, v7, 0x1

    aget v13, v5, v13

    move/from16 v0, v18

    if-ne v13, v0, :cond_34

    add-int/lit8 v7, v7, 0x2

    aget v7, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    :cond_33
    add-int/lit8 v7, v8, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v7, v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    aget-object v16, v11, v12

    add-int v7, v12, v17

    aget-object v17, v11, v7

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v8, 0xa

    move v8, v7

    goto :goto_1f

    :cond_34
    add-int/lit8 v7, v7, 0x3

    goto :goto_20

    :cond_35
    if-eqz v20, :cond_37

    const/4 v5, 0x0

    :goto_21
    move-object/from16 v0, v20

    array-length v7, v0

    if-ge v5, v7, :cond_37

    aget v7, v20, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    const/16 v8, 0x20

    if-ne v7, v8, :cond_36

    aget v7, v20, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v7

    add-int/lit8 v8, v7, 0x2

    const/16 v18, 0x1

    move-object/from16 v0, p2

    iget v11, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/objectweb/asm/Context;->l:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/objectweb/asm/Context;->m:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/objectweb/asm/Context;->n:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v7}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_37
    if-eqz v19, :cond_39

    const/4 v5, 0x0

    :goto_22
    move-object/from16 v0, v19

    array-length v7, v0

    if-ge v5, v7, :cond_39

    aget v7, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    const/16 v8, 0x20

    if-ne v7, v8, :cond_38

    aget v7, v19, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v7

    add-int/lit8 v8, v7, 0x2

    const/16 v18, 0x1

    move-object/from16 v0, p2

    iget v11, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/objectweb/asm/Context;->l:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/objectweb/asm/Context;->m:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/objectweb/asm/Context;->n:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v7}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_39
    :goto_23
    if-eqz v6, :cond_3a

    iget-object v5, v6, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v6, v5

    goto :goto_23

    :cond_3a
    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    :cond_3b
    move-object/from16 v24, v16

    move/from16 v26, v17

    goto/16 :goto_13

    :cond_3c
    move v5, v8

    move v7, v10

    goto/16 :goto_1d

    :cond_3d
    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_3e
    move-object v5, v12

    goto/16 :goto_e

    :cond_3f
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_8

    :cond_40
    add-int/lit8 v12, v27, 0x8

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v12

    move/from16 v17, v23

    goto/16 :goto_8

    :cond_41
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object v6, v12

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_c
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_10
        :pswitch_11
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method private static a(Ljava/io/InputStream;Z)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    move v2, v1

    :goto_0
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    array-length v1, v0

    if-ge v2, v1, :cond_1

    new-array v1, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    add-int v3, v2, v1

    :try_start_1
    array-length v1, v0

    if-ne v3, v1, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-gez v4, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :cond_4
    :try_start_2
    array-length v1, v0

    add-int/lit16 v1, v1, 0x3e8

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v3, 0x1

    int-to-byte v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I
    .registers 16

    const/4 v3, 0x0

    const/4 v10, 0x1

    iget-object v5, p2, Lorg/objectweb/asm/Context;->c:[C

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v6, v0, [I

    add-int/lit8 v1, p3, 0x2

    const/4 v0, 0x0

    :goto_0
    array-length v2, v6

    if-ge v0, v2, :cond_3

    aput v1, v6, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    ushr-int/lit8 v2, v7, 0x18

    sparse-switch v2, :sswitch_data_0

    add-int/lit8 v1, v1, 0x3

    :goto_1
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v4

    ushr-int/lit8 v2, v7, 0x18

    const/16 v8, 0x42

    if-ne v2, v8, :cond_2

    if-nez v4, :cond_1

    move-object v2, v3

    :goto_2
    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v2, v1, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v4, v5, v10, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v4, v1

    :goto_4
    if-lez v2, :cond_0

    add-int/lit8 v1, v4, 0x3

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v8, v4, 0x5

    invoke-virtual {p0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    iget-object v9, p2, Lorg/objectweb/asm/Context;->h:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v1, v9}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/2addr v1, v8

    iget-object v8, p2, Lorg/objectweb/asm/Context;->h:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v1, v8}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_4

    :cond_0
    add-int/lit8 v1, v4, 0x3

    goto :goto_1

    :sswitch_3
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/objectweb/asm/TypePath;

    iget-object v8, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    invoke-direct {v2, v8, v1}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v5, v10, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    goto :goto_3

    :cond_3
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x47 -> :sswitch_3
        0x48 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private b(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I
    .registers 33

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/objectweb/asm/Context;->c:[C

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Lorg/objectweb/asm/Context;->e:I

    add-int/lit8 v3, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lorg/objectweb/asm/Context;->f:Ljava/lang/String;

    add-int/lit8 v3, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lorg/objectweb/asm/Context;->g:Ljava/lang/String;

    add-int/lit8 v28, p3, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move/from16 v26, v3

    move/from16 v27, v28

    :goto_0
    if-lez v26, :cond_e

    add-int/lit8 v3, v27, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const-string v3, "Code"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_20

    add-int/lit8 v4, v27, 0x8

    move-object v3, v15

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    :goto_1
    add-int/lit8 v15, v27, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x6

    add-int v27, v27, v15

    add-int/lit8 v26, v26, -0x1

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v23, v12

    move/from16 v22, v11

    move/from16 v21, v10

    move/from16 v20, v9

    move/from16 v19, v7

    move/from16 v18, v6

    goto :goto_0

    :cond_0
    const-string v3, "Exceptions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    new-array v14, v3, [Ljava/lang/String;

    add-int/lit8 v5, v27, 0xa

    const/4 v3, 0x0

    :goto_2
    array-length v4, v14

    if-ge v3, v4, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move-object v3, v15

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto :goto_1

    :cond_2
    const-string v3, "Signature"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto :goto_1

    :cond_3
    const-string v3, "Deprecated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Lorg/objectweb/asm/Context;->e:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Lorg/objectweb/asm/Context;->e:I

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_4
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v7, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_5
    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v10, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_6
    const-string v3, "AnnotationDefault"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v12, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    goto/16 :goto_1

    :cond_7
    const-string v3, "Synthetic"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p2

    iget v3, v0, Lorg/objectweb/asm/Context;->e:I

    const v4, 0x41000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Lorg/objectweb/asm/Context;->e:I

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_8
    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v9, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_9
    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v11, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_a
    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v24, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_b
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v25, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_c
    const-string v3, "MethodParameters"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v6, v27, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    add-int/lit8 v6, v27, 0x8

    add-int/lit8 v3, v27, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lorg/objectweb/asm/ClassReader;->a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v3

    if-eqz v3, :cond_20

    iput-object v15, v3, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v6, v27, 0x2

    move-object/from16 v0, p2

    iget v10, v0, Lorg/objectweb/asm/Context;->e:I

    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/objectweb/asm/Context;->f:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/objectweb/asm/Context;->g:Ljava/lang/String;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v4

    if-nez v4, :cond_f

    :goto_3
    return v6

    :cond_f
    instance-of v3, v4, Lorg/objectweb/asm/MethodWriter;

    if-eqz v3, :cond_14

    move-object v3, v4

    check-cast v3, Lorg/objectweb/asm/MethodWriter;

    iget-object v5, v3, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v5, v5, Lorg/objectweb/asm/ClassWriter;->M:Lorg/objectweb/asm/ClassReader;

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_14

    iget-object v5, v3, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    if-ne v13, v5, :cond_14

    const/4 v5, 0x0

    if-nez v14, :cond_12

    iget v5, v3, Lorg/objectweb/asm/MethodWriter;->j:I

    if-nez v5, :cond_11

    const/4 v5, 0x1

    :cond_10
    :goto_4
    if-eqz v5, :cond_14

    move/from16 v0, v28

    iput v0, v3, Lorg/objectweb/asm/MethodWriter;->h:I

    sub-int v4, v6, v28

    iput v4, v3, Lorg/objectweb/asm/MethodWriter;->i:I

    goto :goto_3

    :cond_11
    const/4 v5, 0x0

    goto :goto_4

    :cond_12
    array-length v7, v14

    iget v9, v3, Lorg/objectweb/asm/MethodWriter;->j:I

    if-ne v7, v9, :cond_10

    array-length v5, v14

    add-int/lit8 v5, v5, -0x1

    :goto_5
    if-ltz v5, :cond_1f

    add-int/lit8 v17, v17, -0x2

    iget-object v7, v3, Lorg/objectweb/asm/MethodWriter;->k:[I

    aget v7, v7, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    if-eq v7, v9, :cond_13

    const/4 v5, 0x0

    goto :goto_4

    :cond_13
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_14
    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v3, v3, v18

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v18, 0x1

    :goto_6
    if-lez v3, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v9, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    invoke-virtual {v4, v7, v9}, Lorg/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_6

    :cond_15
    if-eqz v23, :cond_16

    invoke-virtual {v4}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v8, v5, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_16
    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v19, 0x2

    :goto_7
    if-lez v5, :cond_17

    add-int/lit8 v7, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v4, v3, v10}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v3

    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_17
    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v20, 0x2

    :goto_8
    if-lez v5, :cond_18

    add-int/lit8 v7, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v10}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v3

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_18
    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v21, 0x2

    :goto_9
    if-lez v5, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v3

    add-int/lit8 v7, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p2

    iget v10, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v3, v12}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v3

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_19
    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v22, 0x2

    :goto_a
    if-lez v5, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v3

    add-int/lit8 v7, v3, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p2

    iget v10, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v3, v12}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v3

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    :cond_1a
    if-eqz v24, :cond_1b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_1b
    if-eqz v25, :cond_1c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_1c
    :goto_b
    if-eqz v15, :cond_1d

    iget-object v3, v15, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v5, 0x0

    iput-object v5, v15, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v4, v15}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v15, v3

    goto :goto_b

    :cond_1d
    if-eqz v16, :cond_1e

    invoke-virtual {v4}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v4, v1, v2}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;I)V

    :cond_1e
    invoke-virtual {v4}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_3

    :cond_1f
    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_20
    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1
.end method

.method private b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V
    .registers 13

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte v0, v0, p3

    and-int/lit16 v3, v0, 0xff

    iget-object v0, p2, Lorg/objectweb/asm/Context;->g:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int v4, v0, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    const-string v5, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v0, v5, v2}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p2, Lorg/objectweb/asm/Context;->c:[C

    move v2, v0

    :goto_1
    add-int v0, v3, v4

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_2
    if-lez v0, :cond_2

    add-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1, p4}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v6, v5, v7, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method a(Lorg/objectweb/asm/ClassWriter;)V
    .registers 13

    const/4 v2, 0x1

    const/4 v10, 0x0

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v3, v0, [C

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    array-length v4, v0

    new-array v5, v4, [Lorg/objectweb/asm/Item;

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v1, v1, v0

    iget-object v6, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v7, v1, -0x1

    aget-byte v6, v6, v7

    new-instance v7, Lorg/objectweb/asm/Item;

    invoke-direct {v7, v0}, Lorg/objectweb/asm/Item;-><init>(I)V

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v1, v10, v10}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v1, v7, Lorg/objectweb/asm/Item;->j:I

    array-length v6, v5

    rem-int/2addr v1, v6

    aget-object v6, v5, v1

    iput-object v6, v7, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    aput-object v7, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v8, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v8, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v1, v9, v8}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/objectweb/asm/Item;->a(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v7, v1}, Lorg/objectweb/asm/Item;->a(F)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v8, v1, v10}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/objectweb/asm/Item;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/objectweb/asm/Item;->a(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_7
    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v1, v1, v0

    iget-object v8, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v9, v1, v3}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    :cond_0
    invoke-virtual {v7, v6, v1, v10, v10}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    iget-object v6, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget v6, v6, v8

    iget-object v8, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {p0, v6, v3}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v8, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v8, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v6, v9, v8}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v6, p1, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-nez v6, :cond_1

    invoke-direct {p0, p1, v5, v3}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/ClassWriter;[Lorg/objectweb/asm/Item;[C)V

    :cond_1
    iget-object v6, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v8, v1, 0x2

    invoke-virtual {p0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget v6, v6, v8

    invoke-virtual {p0, v6, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v7, v8, v6, v1}, Lorg/objectweb/asm/Item;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p1, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    iget v3, p0, Lorg/objectweb/asm/ClassReader;->header:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iput-object v5, p1, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    int-to-double v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p1, Lorg/objectweb/asm/ClassWriter;->f:I

    iput v4, p1, Lorg/objectweb/asm/ClassWriter;->c:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public accept(Lorg/objectweb/asm/ClassVisitor;I)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/objectweb/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V

    return-void
.end method

.method public accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V
    .registers 35

    move-object/from16 v0, p0

    iget v4, v0, Lorg/objectweb/asm/ClassReader;->header:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v9, v5, [C

    new-instance v30, Lorg/objectweb/asm/Context;

    invoke-direct/range {v30 .. v30}, Lorg/objectweb/asm/Context;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    move/from16 v0, p3

    move-object/from16 v1, v30

    iput v0, v1, Lorg/objectweb/asm/Context;->b:I

    move-object/from16 v0, v30

    iput-object v9, v0, Lorg/objectweb/asm/Context;->c:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    add-int/lit8 v5, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v5, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v5, v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v16, v5

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/objectweb/asm/ClassReader;->a()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move/from16 v28, v4

    move/from16 v29, v5

    :goto_1
    if-lez v29, :cond_e

    add-int/lit8 v4, v28, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const-string v4, "SourceFile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v28, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    :goto_2
    add-int/lit8 v17, v28, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x6

    add-int v28, v28, v17

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v22, v10

    move-object/from16 v21, v8

    move-object/from16 v20, v7

    move-object/from16 v19, v6

    move/from16 v23, v11

    goto :goto_1

    :cond_1
    const-string v4, "InnerClasses"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v24, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto :goto_2

    :cond_2
    const-string v4, "EnclosingMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v28, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v28, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v5, v5, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v4, v5, v4

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto :goto_2

    :cond_3
    const-string v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v28, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_4
    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v27, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_5
    const-string v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v25, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_6
    const-string v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x20000

    or-int/2addr v12, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_7
    const-string v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x41000

    or-int/2addr v12, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_8
    const-string v4, "SourceDebugExtension"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v28, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v5, v28, 0x8

    new-array v6, v4, [C

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_9
    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v26, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_a
    const-string v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v11, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    goto/16 :goto_2

    :cond_b
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v4, v28, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v6, v4, [I

    const/4 v5, 0x0

    add-int/lit8 v4, v28, 0xa

    :goto_4
    array-length v7, v6

    if-ge v5, v7, :cond_c

    aput v4, v6, v5

    add-int/lit8 v7, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, v30

    iput-object v6, v0, Lorg/objectweb/asm/Context;->d:[I

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v7, v28, 0x8

    add-int/lit8 v4, v28, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lorg/objectweb/asm/ClassReader;->a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, v18

    iput-object v0, v5, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move-object/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v11

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_10

    if-nez v17, :cond_f

    if-eqz v22, :cond_10

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v21, :cond_11

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v27, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, v27, 0x2

    :goto_5
    if-lez v4, :cond_12

    add-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_12
    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v26, 0x2

    :goto_6
    if-lez v5, :cond_13

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_13
    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v25, 0x2

    :goto_7
    if-lez v5, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v30

    iget v8, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, v30

    iget-object v10, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v4, v11}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_14
    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v23, 0x2

    :goto_8
    if-lez v5, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v30

    iget v8, v0, Lorg/objectweb/asm/Context;->i:I

    move-object/from16 v0, v30

    iget-object v10, v0, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v4, v11}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_15
    :goto_9
    if-eqz v18, :cond_16

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    iput-object v5, v0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object/from16 v18, v4

    goto :goto_9

    :cond_16
    if-eqz v24, :cond_17

    add-int/lit8 v4, v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    :goto_a
    if-lez v5, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, v16

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    :goto_b
    if-lez v5, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_18
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    :goto_c
    if-lez v5, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v4}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void

    :cond_1a
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto/16 :goto_3
.end method

.method public getAccess()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    if-lez v2, :cond_0

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v4, v1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getItem(I)I
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->d:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v1, v0, p1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v2, v1, -0x1

    aget-byte v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v2

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v0, v1

    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v0, v1

    new-instance v0, Lorg/objectweb/asm/Handle;

    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getMethodType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public readInt(I)I
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

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

.method protected readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;
    .registers 4

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    aput-object v0, p2, p1

    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public readLong(I)J
    .registers 8

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort(I)S
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

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
    .registers 7

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, v1

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, v3, v0, p2}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0
.end method

.method public readUnsignedShort(I)I
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
