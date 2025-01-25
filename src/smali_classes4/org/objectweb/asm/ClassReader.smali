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

    if-le v0, v1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
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

    :goto_2b
    if-ge v2, v5, :cond_59

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v3, v4, 0x1

    aput v3, v1, v2

    aget-byte v1, p1, v4

    packed-switch v1, :pswitch_data_60

    :pswitch_38  #0x2, 0x7, 0x8, 0xd, 0xe, 0x10, 0x11
    const/4 v1, 0x3

    move v3, v1

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    add-int v1, v4, v3

    move v4, v1

    goto :goto_2b

    :pswitch_40  #0x3, 0x4, 0x9, 0xa, 0xb, 0xc, 0x12
    const/4 v1, 0x5

    move v3, v1

    goto :goto_3a

    :pswitch_43  #0x5, 0x6
    const/16 v3, 0x9

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3a

    :pswitch_49  #0x1
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    if-le v1, v0, :cond_5e

    move v0, v1

    move v3, v1

    goto :goto_3a

    :pswitch_56  #0xf
    const/4 v1, 0x4

    move v3, v1

    goto :goto_3a

    :cond_59
    iput v0, p0, Lorg/objectweb/asm/ClassReader;->d:I

    iput v4, p0, Lorg/objectweb/asm/ClassReader;->header:I

    return-void

    :cond_5e
    move v3, v1

    goto :goto_3a

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_38  #00000002
        :pswitch_40  #00000003
        :pswitch_40  #00000004
        :pswitch_43  #00000005
        :pswitch_43  #00000006
        :pswitch_38  #00000007
        :pswitch_38  #00000008
        :pswitch_40  #00000009
        :pswitch_40  #0000000a
        :pswitch_40  #0000000b
        :pswitch_40  #0000000c
        :pswitch_38  #0000000d
        :pswitch_38  #0000000e
        :pswitch_56  #0000000f
        :pswitch_38  #00000010
        :pswitch_38  #00000011
        :pswitch_40  #00000012
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

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v2, v0

    :goto_14
    if-lez v2, :cond_30

    add-int/lit8 v0, v1, 0x8

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_1c
    if-lez v0, :cond_2a

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_2a
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_14

    :cond_30
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v2, v0

    :goto_37
    if-lez v2, :cond_53

    add-int/lit8 v0, v1, 0x8

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_3f
    if-lez v0, :cond_4d

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    :cond_4d
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_37

    :cond_53
    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method private a(IZZLorg/objectweb/asm/Context;)I
    .registers 14

    iget-object v4, p4, Lorg/objectweb/asm/Context;->c:[C

    iget-object v5, p4, Lorg/objectweb/asm/Context;->h:[Lorg/objectweb/asm/Label;

    if-eqz p2, :cond_29

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    :goto_f
    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->r:I

    const/16 v0, 0x40

    if-ge v6, v0, :cond_31

    const/4 v0, 0x3

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    :goto_1c
    iget v0, p4, Lorg/objectweb/asm/Context;->o:I

    add-int/lit8 v1, v6, 0x1

    add-int/2addr v0, v1

    iput v0, p4, Lorg/objectweb/asm/Context;->o:I

    iget v0, p4, Lorg/objectweb/asm/Context;->o:I

    invoke-virtual {p0, v0, v5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    return v3

    :cond_29
    const/4 v0, -0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->o:I

    const/16 v0, 0xff

    move v3, p1

    move v6, v0

    goto :goto_f

    :cond_31
    const/16 v0, 0x80

    if-ge v6, v0, :cond_46

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

    goto :goto_1c

    :cond_46
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v3, v3, 0x2

    const/16 v0, 0xf7

    if-ne v6, v0, :cond_60

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

    goto :goto_1c

    :cond_60
    const/16 v0, 0xf8

    if-lt v6, v0, :cond_7b

    const/16 v0, 0xfb

    if-ge v6, v0, :cond_7b

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

    goto :goto_1c

    :cond_7b
    const/16 v0, 0xfb

    if-ne v6, v0, :cond_87

    const/4 v0, 0x3

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    move v6, v7

    goto :goto_1c

    :cond_87
    const/16 v0, 0xff

    if-ge v6, v0, :cond_b8

    if-eqz p3, :cond_a2

    iget v0, p4, Lorg/objectweb/asm/Context;->q:I

    :goto_8f
    add-int/lit16 v1, v6, -0xfb

    move v2, v0

    move v8, v1

    :goto_93
    if-lez v8, :cond_a4

    iget-object v1, p4, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v8, -0x1

    add-int/lit8 v2, v2, 0x1

    move v8, v0

    goto :goto_93

    :cond_a2
    const/4 v0, 0x0

    goto :goto_8f

    :cond_a4
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

    goto/16 :goto_1c

    :cond_b8
    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->p:I

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->r:I

    iput v0, p4, Lorg/objectweb/asm/Context;->q:I

    const/4 v2, 0x0

    move v6, v0

    :goto_c7
    if-lez v6, :cond_d6

    iget-object v1, p4, Lorg/objectweb/asm/Context;->s:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_c7

    :cond_d6
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->t:I

    const/4 v2, 0x0

    move v6, v0

    :goto_e0
    if-lez v6, :cond_ef

    iget-object v1, p4, Lorg/objectweb/asm/Context;->u:[Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_e0

    :cond_ef
    move v6, v7

    goto/16 :goto_1c
.end method

.method private a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p4, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_20c

    add-int/lit8 v0, p1, 0x3

    :goto_10
    return v0

    :sswitch_11
    add-int/lit8 v0, p1, 0x5

    goto :goto_10

    :sswitch_14
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2, v2, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto :goto_10

    :sswitch_1b
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, v3, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto :goto_10

    :cond_22
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_21a

    move v0, v1

    goto :goto_10

    :sswitch_2f
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto :goto_10

    :sswitch_3d
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

    goto :goto_10

    :sswitch_55
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_65
    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto :goto_10

    :cond_6b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_65

    :sswitch_6e
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

    goto :goto_10

    :sswitch_86
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

    goto/16 :goto_10

    :sswitch_9f
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto/16 :goto_10

    :sswitch_aa
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_10

    :sswitch_bb
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    goto/16 :goto_10

    :sswitch_ca
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v2, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_10

    :sswitch_da
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v1, v1, 0x2

    if-nez v5, :cond_ee

    add-int/lit8 v0, v1, -0x2

    invoke-virtual {p4, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v3, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_10

    :cond_ee
    iget-object v4, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_250

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p4, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v3, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_10

    :sswitch_105
    new-array v1, v5, [B

    :goto_107
    if-ge v3, v5, :cond_11e

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

    goto :goto_107

    :cond_11e
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    :sswitch_125
    new-array v6, v5, [Z

    move v1, v0

    move v4, v3

    :goto_129
    if-ge v4, v5, :cond_144

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-eqz v0, :cond_142

    move v0, v2

    :goto_13a
    aput-boolean v0, v6, v4

    add-int/lit8 v0, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_129

    :cond_142
    move v0, v3

    goto :goto_13a

    :cond_144
    invoke-virtual {p4, p3, v6}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    goto/16 :goto_10

    :sswitch_14b
    new-array v1, v5, [S

    :goto_14d
    if-ge v3, v5, :cond_164

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

    goto :goto_14d

    :cond_164
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    :sswitch_16b
    new-array v1, v5, [C

    :goto_16d
    if-ge v3, v5, :cond_184

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

    goto :goto_16d

    :cond_184
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    :sswitch_18b
    new-array v1, v5, [I

    :goto_18d
    if-ge v3, v5, :cond_1a2

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18d

    :cond_1a2
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    :sswitch_1a9
    new-array v1, v5, [J

    :goto_1ab
    if-ge v3, v5, :cond_1c0

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v6

    aput-wide v6, v1, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ab

    :cond_1c0
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    :sswitch_1c7
    new-array v1, v5, [F

    :goto_1c9
    if-ge v3, v5, :cond_1e2

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

    goto :goto_1c9

    :cond_1e2
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    :sswitch_1e9
    new-array v1, v5, [D

    :goto_1eb
    if-ge v3, v5, :cond_204

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

    goto :goto_1eb

    :cond_204
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    nop

    :sswitch_data_20c
    .sparse-switch
        0x40 -> :sswitch_14
        0x5b -> :sswitch_1b
        0x65 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_21a
    .sparse-switch
        0x40 -> :sswitch_ca
        0x42 -> :sswitch_3d
        0x43 -> :sswitch_86
        0x44 -> :sswitch_2f
        0x46 -> :sswitch_2f
        0x49 -> :sswitch_2f
        0x4a -> :sswitch_2f
        0x53 -> :sswitch_6e
        0x5a -> :sswitch_55
        0x5b -> :sswitch_da
        0x63 -> :sswitch_bb
        0x65 -> :sswitch_aa
        0x73 -> :sswitch_9f
    .end sparse-switch

    :sswitch_data_250
    .sparse-switch
        0x42 -> :sswitch_105
        0x43 -> :sswitch_16b
        0x44 -> :sswitch_1e9
        0x46 -> :sswitch_1c7
        0x49 -> :sswitch_18b
        0x4a -> :sswitch_1a9
        0x53 -> :sswitch_14b
        0x5a -> :sswitch_125
    .end sparse-switch
.end method

.method private a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I
    .registers 8

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, p1, 0x2

    if-eqz p3, :cond_17

    :goto_8
    if-lez v1, :cond_21

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p2, v0, p4}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_17
    :goto_17
    if-lez v1, :cond_21

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v2, p4}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_21
    if-eqz p4, :cond_26

    invoke-virtual {p4}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_26
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

    :goto_33
    if-lez v20, :cond_138

    add-int/lit8 v2, v21, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ConstantValue"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    add-int/lit8 v2, v21, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    if-nez v2, :cond_75

    const/4 v13, 0x0

    :goto_50
    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    :goto_5a
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

    goto :goto_33

    :cond_75
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v13

    goto :goto_50

    :cond_7c
    const-string v2, "Signature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

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

    goto :goto_5a

    :cond_97
    const-string v2, "Deprecated"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    const/high16 v2, 0x20000

    or-int v3, v2, v15

    move-object v2, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto :goto_5a

    :cond_ad
    const-string v2, "Synthetic"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const v2, 0x41000

    or-int v3, v2, v15

    move-object v2, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto :goto_5a

    :cond_c4
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    add-int/lit8 v8, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    goto :goto_5a

    :cond_d7
    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    add-int/lit8 v5, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_5a

    :cond_eb
    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    add-int/lit8 v6, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v8, v19

    goto/16 :goto_5a

    :cond_ff
    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    add-int/lit8 v4, v21, 0x8

    move-object v2, v14

    move v3, v15

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_5a

    :cond_113
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

    if-eqz v2, :cond_209

    iput-object v14, v2, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_5a

    :cond_138
    move-object/from16 v8, p1

    move v9, v15

    invoke-virtual/range {v8 .. v13}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v4

    if-nez v4, :cond_144

    :goto_141
    add-int/lit8 v2, v21, 0x2

    return v2

    :cond_144
    if-eqz v19, :cond_169

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, v19, 0x2

    :goto_150
    if-lez v2, :cond_169

    add-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_150

    :cond_169
    if-eqz v18, :cond_18e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v18, 0x2

    :goto_175
    if-lez v3, :cond_18e

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

    goto :goto_175

    :cond_18e
    if-eqz v17, :cond_1c3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v17, 0x2

    :goto_19a
    if-lez v3, :cond_1c3

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

    goto :goto_19a

    :cond_1c3
    if-eqz v16, :cond_1f8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v16, 0x2

    :goto_1cf
    if-lez v3, :cond_1f8

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

    goto :goto_1cf

    :cond_1f8
    :goto_1f8
    if-eqz v14, :cond_204

    iget-object v2, v14, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v3, 0x0

    iput-object v3, v14, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v4, v14}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v14, v2

    goto :goto_1f8

    :cond_204
    invoke-virtual {v4}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    goto/16 :goto_141

    :cond_209
    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_5a
.end method

.method private a(Lorg/objectweb/asm/Context;I)I
    .registers 11

    const/high16 v0, -0x1000000

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x18

    sparse-switch v2, :sswitch_data_86

    ushr-int/lit8 v2, v1, 0x18

    const/16 v3, 0x43

    if-ge v2, v3, :cond_13

    const/16 v0, -0x100

    :cond_13
    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x3

    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v2

    iput v1, p1, Lorg/objectweb/asm/Context;->i:I

    if-nez v2, :cond_7e

    const/4 v1, 0x0

    :goto_1f
    iput-object v1, p1, Lorg/objectweb/asm/Context;->j:Lorg/objectweb/asm/TypePath;

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    return v0

    :sswitch_27
    const/high16 v0, -0x10000

    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x2

    goto :goto_16

    :sswitch_2d
    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x1

    goto :goto_16

    :sswitch_31
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

    :goto_47
    if-ge v2, v3, :cond_16

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

    goto :goto_47

    :sswitch_77
    const v0, -0xffff01

    and-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x4

    goto :goto_16

    :cond_7e
    new-instance v1, Lorg/objectweb/asm/TypePath;

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    invoke-direct {v1, v3, v0}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_1f

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_27
        0x13 -> :sswitch_2d
        0x14 -> :sswitch_2d
        0x15 -> :sswitch_2d
        0x16 -> :sswitch_27
        0x40 -> :sswitch_31
        0x41 -> :sswitch_31
        0x47 -> :sswitch_77
        0x48 -> :sswitch_77
        0x49 -> :sswitch_77
        0x4a -> :sswitch_77
        0x4b -> :sswitch_77
    .end sparse-switch
.end method

.method private a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I
    .registers 8

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, p3, 0x1

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_44

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {p0, v1, p5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    :goto_17
    return v0

    :pswitch_18  #0x0
    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_17

    :pswitch_1d  #0x1
    sget-object v1, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_17

    :pswitch_22  #0x2
    sget-object v1, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_17

    :pswitch_27  #0x3
    sget-object v1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_17

    :pswitch_2c  #0x4
    sget-object v1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_17

    :pswitch_31  #0x5
    sget-object v1, Lorg/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_17

    :pswitch_36  #0x6
    sget-object v1, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_17

    :pswitch_3b  #0x7
    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    goto :goto_17

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_1d  #00000001
        :pswitch_22  #00000002
        :pswitch_27  #00000003
        :pswitch_2c  #00000004
        :pswitch_31  #00000005
        :pswitch_36  #00000006
        :pswitch_3b  #00000007
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

    :goto_8
    add-int v4, p1, p2

    if-ge v6, v4, :cond_4d

    aget-byte v8, v7, v6

    packed-switch v1, :pswitch_data_54

    move v4, v5

    :goto_12
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_8

    :pswitch_16  #0x0
    and-int/lit16 v8, v8, 0xff

    const/16 v4, 0x80

    if-ge v8, v4, :cond_23

    add-int/lit8 v4, v5, 0x1

    int-to-char v8, v8

    int-to-char v8, v8

    aput-char v8, p3, v5

    goto :goto_12

    :cond_23
    const/16 v0, 0xe0

    if-ge v8, v0, :cond_31

    const/16 v0, 0xbf

    if-le v8, v0, :cond_31

    and-int/lit8 v0, v8, 0x1f

    int-to-char v0, v0

    move v1, v2

    move v4, v5

    goto :goto_12

    :cond_31
    and-int/lit8 v0, v8, 0xf

    int-to-char v0, v0

    const/4 v1, 0x2

    move v4, v5

    goto :goto_12

    :pswitch_37  #0x1
    add-int/lit8 v4, v5, 0x1

    shl-int/lit8 v1, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v1, v8

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, p3, v5

    move v1, v3

    goto :goto_12

    :pswitch_44  #0x2
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v8, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    move v1, v2

    move v4, v5

    goto :goto_12

    :cond_4d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_37  #00000001
        :pswitch_44  #00000002
    .end packed-switch
.end method

.method private a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;
    .registers 15

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    aget-object v1, p1, v0

    iget-object v1, v1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    aget-object v0, p1, v0

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    new-instance v0, Lorg/objectweb/asm/Attribute;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v0

    goto :goto_1b
.end method

.method private a(Lorg/objectweb/asm/ClassWriter;[Lorg/objectweb/asm/Item;[C)V
    .registers 12

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/objectweb/asm/ClassReader;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v5, v1

    :goto_a
    if-lez v2, :cond_99

    const-string v1, "BootstrapMethods"

    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p0, v3, p3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :goto_1b
    if-nez v1, :cond_2b

    :goto_1d
    return-void

    :cond_1e
    add-int/lit8 v1, v5, 0x4

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v5

    move v5, v1

    goto :goto_a

    :cond_2b
    add-int/lit8 v1, v5, 0x8

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v3, v5, 0xa

    move v4, v0

    :goto_34
    if-ge v4, v6, :cond_7e

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v2, v3

    :goto_49
    if-lez v0, :cond_5f

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {p0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    invoke-virtual {p0, v7, p3}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    xor-int/2addr v1, v7

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_49

    :cond_5f
    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0, v4}, Lorg/objectweb/asm/Item;-><init>(I)V

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0xa

    const v7, 0x7fffffff

    and-int/2addr v1, v7

    invoke-virtual {v0, v3, v1}, Lorg/objectweb/asm/Item;->a(II)V

    iget v1, v0, Lorg/objectweb/asm/Item;->j:I

    array-length v3, p2

    rem-int/2addr v1, v3

    aget-object v3, p2, v1

    iput-object v3, v0, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    aput-object v0, p2, v1

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v2, 0x4

    move v4, v0

    goto :goto_34

    :cond_7e
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

    goto :goto_1d

    :cond_99
    move v1, v0

    goto :goto_1b
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

    if-nez v0, :cond_9d

    const-string v0, "<init>"

    iget-object v3, p1, Lorg/objectweb/asm/Context;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, v5, v2

    move v0, v1

    move v2, v1

    :goto_1e
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_a0

    iput v2, p1, Lorg/objectweb/asm/Context;->q:I

    return-void

    :cond_2a
    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget-object v3, p1, Lorg/objectweb/asm/Context;->c:[C

    invoke-virtual {p0, v0, v3}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    move v0, v1

    move v2, v1

    goto :goto_1e

    :sswitch_39
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_1e

    :sswitch_41
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_1e

    :sswitch_49
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_1e

    :sswitch_51
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_1e

    :goto_59
    :sswitch_59
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x5b

    if-ne v3, v6, :cond_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_64
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x4c

    if-ne v3, v6, :cond_77

    add-int/lit8 v1, v1, 0x1

    :goto_6e
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_77

    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_77
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_1e

    :goto_83
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_8d

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_83

    :cond_8d
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v3, 0x1

    move v2, v1

    goto :goto_1e

    :sswitch_9b
    move v3, v1

    goto :goto_83

    :cond_9d
    move v0, v1

    goto :goto_1e

    nop

    :sswitch_data_a0
    .sparse-switch
        0x42 -> :sswitch_39
        0x43 -> :sswitch_39
        0x44 -> :sswitch_51
        0x46 -> :sswitch_41
        0x49 -> :sswitch_39
        0x4a -> :sswitch_49
        0x4c -> :sswitch_9b
        0x53 -> :sswitch_39
        0x5a -> :sswitch_39
        0x5b -> :sswitch_59
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

    move/from16 v5, v30

    :goto_37
    move/from16 v0, v35

    if-ge v5, v0, :cond_fb

    sub-int v7, v5, v30

    aget-byte v6, v31, v5

    sget-object v8, Lorg/objectweb/asm/ClassWriter;->a:[B

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v8, v6

    packed-switch v6, :pswitch_data_9f8

    :pswitch_48  #0x10
    add-int/lit8 v5, v5, 0x4

    goto :goto_37

    :pswitch_4b  #0x0, 0x4
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :pswitch_4e  #0x9
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v6

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x3

    goto :goto_37

    :pswitch_5f  #0xa
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x5

    goto :goto_37

    :pswitch_70  #0x11
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v31, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x84

    if-ne v6, v7, :cond_7d

    add-int/lit8 v5, v5, 0x6

    goto :goto_37

    :cond_7d
    add-int/lit8 v5, v5, 0x4

    goto :goto_37

    :pswitch_80  #0xe
    add-int/lit8 v5, v5, 0x4

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

    :goto_a4
    if-lez v6, :cond_b9

    add-int/lit8 v8, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/2addr v8, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, -0x1

    goto :goto_a4

    :cond_b9
    add-int/lit8 v5, v5, 0xc

    goto/16 :goto_37

    :pswitch_bd  #0xf
    add-int/lit8 v5, v5, 0x4

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

    :goto_d6
    if-lez v6, :cond_eb

    add-int/lit8 v8, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/2addr v8, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, -0x1

    goto :goto_d6

    :cond_eb
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_37

    :pswitch_ef  #0x1, 0x3, 0xb
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_37

    :pswitch_f3  #0x2, 0x5, 0x6, 0xc, 0xd
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_37

    :pswitch_f7  #0x7, 0x8
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_37

    :cond_fb
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    :goto_101
    if-lez v6, :cond_14b

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v7

    add-int/lit8 v8, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v8

    add-int/lit8 v10, v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v13, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v10, v12}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, -0x1

    goto :goto_101

    :cond_14b
    add-int/lit8 v27, v5, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v15, -0x1

    const/4 v14, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1d3

    const/4 v5, 0x1

    move/from16 v18, v5

    :goto_164
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move/from16 v28, v5

    :goto_175
    if-lez v28, :cond_399

    add-int/lit8 v5, v27, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    const-string v5, "LocalVariableTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d7

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9ca

    add-int/lit8 v5, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    move/from16 v5, v27

    :goto_19b
    if-lez v7, :cond_9d8

    add-int/lit8 v8, v5, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget-object v10, v11, v8

    if-nez v10, :cond_1b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v10

    iget v12, v10, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v10, Lorg/objectweb/asm/Label;->a:I

    :cond_1b5
    add-int/lit8 v10, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/2addr v8, v10

    aget-object v10, v11, v8

    if-nez v10, :cond_1ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v8

    iget v10, v8, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v8, Lorg/objectweb/asm/Label;->a:I

    :cond_1ce
    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v7, v7, -0x1

    goto :goto_19b

    :cond_1d3
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_164

    :cond_1d7
    const-string v5, "LocalVariableTypeTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20d

    add-int/lit8 v12, v27, 0x8

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v12

    :goto_1ef
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

    goto/16 :goto_175

    :cond_20d
    const-string v5, "LineNumberTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_276

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9ca

    add-int/lit8 v5, v27, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move v7, v5

    move/from16 v8, v27

    :goto_22a
    if-lez v7, :cond_268

    add-int/lit8 v5, v8, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget-object v10, v11, v5

    if-nez v10, :cond_244

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v10

    iget v12, v10, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v10, Lorg/objectweb/asm/Label;->a:I

    :cond_244
    aget-object v5, v11, v5

    :goto_246
    iget v10, v5, Lorg/objectweb/asm/Label;->b:I

    if-lez v10, :cond_258

    iget-object v10, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    if-nez v10, :cond_255

    new-instance v10, Lorg/objectweb/asm/Label;

    invoke-direct {v10}, Lorg/objectweb/asm/Label;-><init>()V

    iput-object v10, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    :cond_255
    iget-object v5, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    goto :goto_246

    :cond_258
    add-int/lit8 v10, v8, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    iput v10, v5, Lorg/objectweb/asm/Label;->b:I

    add-int/lit8 v5, v7, -0x1

    add-int/lit8 v8, v8, 0x4

    move v7, v5

    goto :goto_22a

    :cond_268
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_1ef

    :cond_276
    const-string v5, "RuntimeVisibleTypeAnnotations"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b6

    add-int/lit8 v5, v27, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v7}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v5

    array-length v7, v5

    if-eqz v7, :cond_29d

    const/4 v7, 0x0

    aget v7, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v7

    const/16 v8, 0x43

    if-ge v7, v8, :cond_2aa

    :cond_29d
    const/4 v12, -0x1

    :goto_29e
    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v12

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_1ef

    :cond_2aa
    const/4 v7, 0x0

    aget v7, v5, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    goto :goto_29e

    :cond_2b6
    const-string v5, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f5

    add-int/lit8 v5, v27, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v7}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v7

    array-length v5, v7

    if-eqz v5, :cond_2dd

    const/4 v5, 0x0

    aget v5, v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v8, 0x43

    if-ge v5, v8, :cond_2e9

    :cond_2dd
    const/4 v10, -0x1

    :goto_2de
    move-object/from16 v5, v19

    move/from16 v8, v21

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_1ef

    :cond_2e9
    const/4 v5, 0x0

    aget v5, v7, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    goto :goto_2de

    :cond_2f5
    const-string v5, "StackMapTable"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_329

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9ca

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

    goto/16 :goto_1ef

    :cond_329
    const-string v5, "StackMap"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35e

    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9ca

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

    goto/16 :goto_1ef

    :cond_35e
    const/4 v5, 0x0

    move-object v12, v6

    move v13, v5

    :goto_361
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    array-length v5, v5

    if-ge v13, v5, :cond_9e8

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    aget-object v5, v5, v13

    iget-object v5, v5, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c7

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

    if-eqz v5, :cond_9c7

    iput-object v12, v5, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    :goto_394
    add-int/lit8 v6, v13, 0x1

    move-object v12, v5

    move v13, v6

    goto :goto_361

    :cond_399
    if-eqz v24, :cond_9c4

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

    if-eqz v18, :cond_3cd

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;)V

    :cond_3cd
    move/from16 v5, v24

    :goto_3cf
    add-int v7, v24, v25

    add-int/lit8 v7, v7, -0x2

    if-ge v5, v7, :cond_3fb

    aget-byte v7, v31, v5

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3f8

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    if-ltz v7, :cond_3f8

    move/from16 v0, v34

    if-ge v7, v0, :cond_3f8

    add-int v8, v30, v7

    aget-byte v8, v31, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v10, 0xbb

    if-ne v8, v10, :cond_3f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    :cond_3f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3cf

    :cond_3fb
    move-object/from16 v5, p2

    :goto_3fd
    const/16 v25, 0x0

    const/4 v10, 0x0

    move-object/from16 v16, v5

    move/from16 v29, v30

    move v8, v14

    move/from16 v28, v26

    move/from16 v17, v24

    move/from16 v27, v15

    :goto_40b
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_856

    sub-int v36, v29, v30

    aget-object v7, v11, v36

    if-eqz v7, :cond_9ba

    iget-object v5, v7, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    const/4 v12, 0x0

    iput-object v12, v7, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    move-object/from16 v0, p2

    iget v12, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_9ba

    iget v12, v7, Lorg/objectweb/asm/Label;->b:I

    if-lez v12, :cond_9ba

    iget v12, v7, Lorg/objectweb/asm/Label;->b:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    :goto_434
    if-eqz v5, :cond_9ba

    iget v12, v5, Lorg/objectweb/asm/Label;->b:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    iget-object v5, v5, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    goto :goto_434

    :goto_440
    if-eqz v24, :cond_4af

    move-object/from16 v0, v24

    iget v5, v0, Lorg/objectweb/asm/Context;->o:I

    move/from16 v0, v36

    if-eq v5, v0, :cond_451

    move-object/from16 v0, v24

    iget v5, v0, Lorg/objectweb/asm/Context;->o:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4af

    :cond_451
    move-object/from16 v0, v24

    iget v5, v0, Lorg/objectweb/asm/Context;->o:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_476

    if-eqz v21, :cond_45c

    if-eqz v18, :cond_48d

    :cond_45c
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

    :cond_476
    :goto_476
    if-lez v28, :cond_4ab

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

    goto :goto_440

    :cond_48d
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

    goto :goto_476

    :cond_4ab
    const/4 v5, 0x0

    move-object/from16 v24, v5

    goto :goto_440

    :cond_4af
    aget-byte v5, v31, v29

    and-int/lit16 v13, v5, 0xff

    sget-object v5, Lorg/objectweb/asm/ClassWriter;->a:[B

    aget-byte v5, v5, v13

    packed-switch v5, :pswitch_data_a20

    :pswitch_4ba  #0x10
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

    :goto_4d4
    if-eqz v19, :cond_9c0

    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v12, v5, :cond_9c0

    move/from16 v0, v36

    if-gt v14, v0, :cond_9c0

    move/from16 v0, v36

    if-ne v14, v0, :cond_511

    aget v5, v19, v12

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

    :cond_511
    add-int/lit8 v7, v12, 0x1

    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v7, v5, :cond_524

    aget v5, v19, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v12, 0x43

    if-ge v5, v12, :cond_7df

    :cond_524
    const/4 v5, -0x1

    :goto_525
    move v12, v7

    move v14, v5

    goto :goto_4d4

    :pswitch_528  #0x0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v7, v29, 0x1

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto :goto_4d4

    :pswitch_535  #0x4
    const/16 v5, 0x36

    if-le v13, v5, :cond_54e

    add-int/lit8 v5, v13, -0x3b

    shr-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x36

    and-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_546
    add-int/lit8 v7, v29, 0x1

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto :goto_4d4

    :cond_54e
    add-int/lit8 v5, v13, -0x1a

    shr-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x15

    and-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_546

    :pswitch_55c  #0x9
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

    goto/16 :goto_4d4

    :pswitch_576  #0xa
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

    goto/16 :goto_4d4

    :pswitch_592  #0x11
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x84

    if-ne v5, v7, :cond_5ba

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

    goto/16 :goto_4d4

    :cond_5ba
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

    goto/16 :goto_4d4

    :pswitch_5d0  #0xe
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

    :goto_5f4
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_60c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    add-int v16, v16, v36

    aget-object v16, v11, v16

    aput-object v16, v15, v5

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5f4

    :cond_60c
    add-int v5, v36, v12

    aget-object v5, v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v5, v15}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_4d4

    :pswitch_61c  #0xf
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

    :goto_636
    if-ge v5, v13, :cond_655

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

    goto :goto_636

    :cond_655
    add-int v5, v36, v12

    aget-object v5, v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14, v15}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_4d4

    :pswitch_665  #0x3
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v7, v29, 0x2

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_4d4

    :pswitch_679  #0x1
    add-int/lit8 v5, v29, 0x1

    aget-byte v5, v31, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    add-int/lit8 v7, v29, 0x2

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_4d4

    :pswitch_68b  #0x2
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

    goto/16 :goto_4d4

    :pswitch_6a1  #0xb
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

    goto/16 :goto_4d4

    :pswitch_6bb  #0xc
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

    goto/16 :goto_4d4

    :pswitch_6d7  #0x6, 0x7
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

    if-ne v7, v12, :cond_729

    const/16 v17, 0x1

    :goto_6ef
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

    if-ge v13, v5, :cond_72c

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_71c
    const/16 v5, 0xb9

    if-ne v13, v5, :cond_732

    add-int/lit8 v7, v29, 0x5

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_4d4

    :cond_729
    const/16 v17, 0x0

    goto :goto_6ef

    :cond_72c
    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_71c

    :cond_732
    add-int/lit8 v7, v29, 0x3

    move/from16 v12, v25

    move v13, v7

    move/from16 v14, v27

    goto/16 :goto_4d4

    :pswitch_73b  #0x8
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

    :goto_770
    if-ge v7, v14, :cond_787

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

    goto :goto_770

    :cond_787
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

    goto/16 :goto_4d4

    :pswitch_7b1  #0x5
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

    goto/16 :goto_4d4

    :pswitch_7c7  #0xd
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

    goto/16 :goto_4d4

    :cond_7df
    aget v5, v19, v7

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    goto/16 :goto_525

    :goto_7eb
    if-eqz v20, :cond_848

    move-object/from16 v0, v20

    array-length v8, v0

    if-ge v7, v8, :cond_848

    move/from16 v0, v36

    if-gt v5, v0, :cond_848

    move/from16 v0, v36

    if-ne v5, v0, :cond_828

    aget v5, v20, v7

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

    :cond_828
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v7, v5, :cond_83b

    aget v5, v20, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v8, 0x43

    if-ge v5, v8, :cond_83d

    :cond_83b
    const/4 v5, -0x1

    goto :goto_7eb

    :cond_83d
    aget v5, v20, v7

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    goto :goto_7eb

    :cond_848
    move-object/from16 v16, v24

    move/from16 v29, v13

    move/from16 v25, v12

    move v8, v5

    move v10, v7

    move/from16 v17, v26

    move/from16 v27, v14

    goto/16 :goto_40b

    :cond_856
    aget-object v5, v11, v34

    if-eqz v5, :cond_861

    aget-object v5, v11, v34

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_861
    move-object/from16 v0, p2

    iget v5, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_902

    if-eqz v22, :cond_902

    const/4 v5, 0x0

    if-eqz v23, :cond_89e

    add-int/lit8 v8, v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    new-array v5, v5, [I

    array-length v7, v5

    :goto_87d
    if-lez v7, :cond_89e

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

    goto :goto_87d

    :cond_89e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/lit8 v7, v22, 0x2

    move v8, v7

    :goto_8a9
    if-lez v10, :cond_902

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

    if-eqz v5, :cond_8de

    const/4 v7, 0x0

    :goto_8c5
    array-length v13, v5

    if-ge v7, v13, :cond_8de

    aget v13, v5, v7

    if-ne v13, v12, :cond_8ff

    add-int/lit8 v13, v7, 0x1

    aget v13, v5, v13

    move/from16 v0, v18

    if-ne v13, v0, :cond_8ff

    add-int/lit8 v7, v7, 0x2

    aget v7, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    :cond_8de
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

    goto :goto_8a9

    :cond_8ff
    add-int/lit8 v7, v7, 0x3

    goto :goto_8c5

    :cond_902
    if-eqz v19, :cond_952

    const/4 v5, 0x0

    :goto_905
    move-object/from16 v0, v19

    array-length v7, v0

    if-ge v5, v7, :cond_952

    aget v7, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    const/16 v8, 0x20

    if-ne v7, v8, :cond_94f

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

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v7}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_94f
    add-int/lit8 v5, v5, 0x1

    goto :goto_905

    :cond_952
    if-eqz v20, :cond_9a2

    const/4 v5, 0x0

    :goto_955
    move-object/from16 v0, v20

    array-length v7, v0

    if-ge v5, v7, :cond_9a2

    aget v7, v20, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    const/16 v8, 0x20

    if-ne v7, v8, :cond_99f

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

    const/16 v17, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v7}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_99f
    add-int/lit8 v5, v5, 0x1

    goto :goto_955

    :cond_9a2
    :goto_9a2
    if-eqz v6, :cond_9b0

    iget-object v5, v6, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v6, v5

    goto :goto_9a2

    :cond_9b0
    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    :cond_9ba
    move-object/from16 v24, v16

    move/from16 v26, v17

    goto/16 :goto_440

    :cond_9c0
    move v5, v8

    move v7, v10

    goto/16 :goto_7eb

    :cond_9c4
    const/4 v5, 0x0

    goto/16 :goto_3fd

    :cond_9c7
    move-object v5, v12

    goto/16 :goto_394

    :cond_9ca
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_1ef

    :cond_9d8
    add-int/lit8 v12, v27, 0x8

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v12

    move/from16 v17, v23

    goto/16 :goto_1ef

    :cond_9e8
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object v6, v12

    move/from16 v8, v21

    move v10, v14

    move v13, v15

    move/from16 v16, v22

    move/from16 v17, v23

    goto/16 :goto_1ef

    nop

    :pswitch_data_9f8
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_ef  #00000001
        :pswitch_f3  #00000002
        :pswitch_ef  #00000003
        :pswitch_4b  #00000004
        :pswitch_f3  #00000005
        :pswitch_f3  #00000006
        :pswitch_f7  #00000007
        :pswitch_f7  #00000008
        :pswitch_4e  #00000009
        :pswitch_5f  #0000000a
        :pswitch_ef  #0000000b
        :pswitch_f3  #0000000c
        :pswitch_f3  #0000000d
        :pswitch_80  #0000000e
        :pswitch_bd  #0000000f
        :pswitch_48  #00000010
        :pswitch_70  #00000011
    .end packed-switch

    :pswitch_data_a20
    .packed-switch 0x0
        :pswitch_528  #00000000
        :pswitch_679  #00000001
        :pswitch_68b  #00000002
        :pswitch_665  #00000003
        :pswitch_535  #00000004
        :pswitch_7b1  #00000005
        :pswitch_6d7  #00000006
        :pswitch_6d7  #00000007
        :pswitch_73b  #00000008
        :pswitch_55c  #00000009
        :pswitch_576  #0000000a
        :pswitch_6a1  #0000000b
        :pswitch_6bb  #0000000c
        :pswitch_7c7  #0000000d
        :pswitch_5d0  #0000000e
        :pswitch_61c  #0000000f
        :pswitch_4ba  #00000010
        :pswitch_592  #00000011
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

    if-nez p0, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    move v2, v1

    :goto_12
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2c

    array-length v1, v0

    if-ge v2, v1, :cond_26

    new-array v1, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_4f

    move-object v0, v1

    :cond_26
    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2b
    :goto_2b
    return-object v0

    :cond_2c
    add-int v3, v2, v1

    :try_start_2e
    array-length v1, v0

    if-ne v3, v1, :cond_56

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_4f

    move-result v4

    if-gez v4, :cond_3d

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2b

    :cond_3d
    :try_start_3d
    array-length v1, v0

    add-int/lit16 v1, v1, 0x3e8

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4f

    add-int/lit8 v2, v3, 0x1

    int-to-byte v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    move-object v0, v1

    goto :goto_12

    :catchall_4f
    move-exception v0

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_55
    throw v0

    :cond_56
    move v2, v3

    goto :goto_12
.end method

.method private a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I
    .registers 16

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-object v5, p2, Lorg/objectweb/asm/Context;->c:[C

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v6, v0, [I

    add-int/lit8 v1, p3, 0x2

    const/4 v0, 0x0

    :goto_d
    array-length v2, v6

    if-ge v0, v2, :cond_84

    aput v1, v6, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    ushr-int/lit8 v2, v7, 0x18

    sparse-switch v2, :sswitch_data_86

    add-int/lit8 v1, v1, 0x3

    :goto_1d
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v4

    ushr-int/lit8 v2, v7, 0x18

    const/16 v8, 0x42

    if-ne v2, v8, :cond_7a

    if-nez v4, :cond_72

    move-object v2, v3

    :goto_2a
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

    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :sswitch_40
    add-int/lit8 v1, v1, 0x2

    goto :goto_1d

    :sswitch_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :sswitch_46
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v4, v1

    :goto_4d
    if-lez v2, :cond_6c

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

    goto :goto_4d

    :cond_6c
    add-int/lit8 v1, v4, 0x3

    goto :goto_1d

    :sswitch_6f
    add-int/lit8 v1, v1, 0x4

    goto :goto_1d

    :cond_72
    new-instance v2, Lorg/objectweb/asm/TypePath;

    iget-object v8, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    invoke-direct {v2, v8, v1}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_2a

    :cond_7a
    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v5, v10, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    goto :goto_3d

    :cond_84
    return-object v6

    nop

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_40
        0x1 -> :sswitch_40
        0x13 -> :sswitch_43
        0x14 -> :sswitch_43
        0x15 -> :sswitch_43
        0x16 -> :sswitch_40
        0x40 -> :sswitch_46
        0x41 -> :sswitch_46
        0x47 -> :sswitch_6f
        0x48 -> :sswitch_6f
        0x49 -> :sswitch_6f
        0x4a -> :sswitch_6f
        0x4b -> :sswitch_6f
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

    add-int/lit8 v27, p3, 0x6

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

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move/from16 v26, v27

    move/from16 v28, v3

    :goto_4d
    if-lez v28, :cond_244

    add-int/lit8 v3, v26, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const-string v3, "Code"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    move-object/from16 v0, p2

    iget v3, v0, Lorg/objectweb/asm/Context;->b:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3c7

    add-int/lit8 v4, v26, 0x8

    move-object v3, v15

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    :goto_78
    add-int/lit8 v15, v26, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x6

    add-int v26, v26, v15

    add-int/lit8 v28, v28, -0x1

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v23, v12

    move/from16 v22, v11

    move/from16 v21, v10

    move/from16 v20, v9

    move/from16 v19, v7

    move/from16 v18, v6

    goto :goto_4d

    :cond_98
    const-string v3, "Exceptions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    add-int/lit8 v3, v26, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    new-array v14, v3, [Ljava/lang/String;

    add-int/lit8 v5, v26, 0xa

    const/4 v3, 0x0

    :goto_ad
    array-length v4, v14

    if-ge v3, v4, :cond_bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    :cond_bd
    move-object v3, v15

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto :goto_78

    :cond_cd
    const-string v3, "Signature"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    add-int/lit8 v3, v26, 0x8

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

    goto :goto_78

    :cond_ef
    const-string v3, "Deprecated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

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

    goto/16 :goto_78

    :cond_115
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    add-int/lit8 v7, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_130
    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    add-int/lit8 v10, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_14b
    const-string v3, "AnnotationDefault"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_166

    add-int/lit8 v12, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    goto/16 :goto_78

    :cond_166
    const-string v3, "Synthetic"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18d

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

    goto/16 :goto_78

    :cond_18d
    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a8

    add-int/lit8 v9, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_1a8
    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    add-int/lit8 v11, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_1c3
    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    add-int/lit8 v24, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_1e0
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    add-int/lit8 v25, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_1fd
    const-string v3, "MethodParameters"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_218

    add-int/lit8 v6, v26, 0x8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_218
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/objectweb/asm/Context;->a:[Lorg/objectweb/asm/Attribute;

    add-int/lit8 v6, v26, 0x8

    add-int/lit8 v3, v26, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lorg/objectweb/asm/ClassReader;->a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v3

    if-eqz v3, :cond_3c7

    iput-object v15, v3, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78

    :cond_244
    add-int/lit8 v6, v26, 0x2

    move-object/from16 v0, p2

    iget v10, v0, Lorg/objectweb/asm/Context;->e:I

    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/objectweb/asm/Context;->f:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/objectweb/asm/Context;->g:Ljava/lang/String;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v4

    if-nez v4, :cond_25b

    :goto_25a
    return v6

    :cond_25b
    instance-of v3, v4, Lorg/objectweb/asm/MethodWriter;

    if-eqz v3, :cond_2a2

    move-object v3, v4

    check-cast v3, Lorg/objectweb/asm/MethodWriter;

    iget-object v5, v3, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v5, v5, Lorg/objectweb/asm/ClassWriter;->M:Lorg/objectweb/asm/ClassReader;

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_2a2

    iget-object v5, v3, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    if-ne v13, v5, :cond_2a2

    const/4 v5, 0x0

    if-nez v14, :cond_283

    iget v5, v3, Lorg/objectweb/asm/MethodWriter;->j:I

    if-nez v5, :cond_281

    const/4 v5, 0x1

    :cond_276
    :goto_276
    if-eqz v5, :cond_2a2

    move/from16 v0, v27

    iput v0, v3, Lorg/objectweb/asm/MethodWriter;->h:I

    sub-int v4, v6, v27

    iput v4, v3, Lorg/objectweb/asm/MethodWriter;->i:I

    goto :goto_25a

    :cond_281
    const/4 v5, 0x0

    goto :goto_276

    :cond_283
    array-length v7, v14

    iget v9, v3, Lorg/objectweb/asm/MethodWriter;->j:I

    if-ne v7, v9, :cond_276

    array-length v5, v14

    add-int/lit8 v5, v5, -0x1

    :goto_28b
    if-ltz v5, :cond_3c4

    add-int/lit8 v17, v17, -0x2

    iget-object v7, v3, Lorg/objectweb/asm/MethodWriter;->k:[I

    aget v7, v7, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    if-eq v7, v9, :cond_29f

    const/4 v5, 0x0

    goto :goto_276

    :cond_29f
    add-int/lit8 v5, v5, -0x1

    goto :goto_28b

    :cond_2a2
    if-eqz v18, :cond_2c6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v3, v3, v18

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v18, 0x1

    :goto_2ae
    if-lez v3, :cond_2c6

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

    goto :goto_2ae

    :cond_2c6
    if-eqz v23, :cond_2d9

    invoke-virtual {v4}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v8, v5, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    if-eqz v3, :cond_2d9

    invoke-virtual {v3}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_2d9
    if-eqz v19, :cond_2fe

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v19, 0x2

    :goto_2e5
    if-lez v5, :cond_2fe

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

    goto :goto_2e5

    :cond_2fe
    if-eqz v20, :cond_323

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v5, v20, 0x2

    :goto_30a
    if-lez v3, :cond_323

    add-int/lit8 v7, v5, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_30a

    :cond_323
    if-eqz v21, :cond_358

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v21, 0x2

    :goto_32f
    if-lez v5, :cond_358

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

    goto :goto_32f

    :cond_358
    if-eqz v22, :cond_38d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v22, 0x2

    :goto_364
    if-lez v5, :cond_38d

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

    goto :goto_364

    :cond_38d
    if-eqz v24, :cond_399

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_399
    if-eqz v25, :cond_3a5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_3a5
    :goto_3a5
    if-eqz v15, :cond_3b1

    iget-object v3, v15, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v5, 0x0

    iput-object v5, v15, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v4, v15}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v15, v3

    goto :goto_3a5

    :cond_3b1
    if-eqz v16, :cond_3bf

    invoke-virtual {v4}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v4, v1, v2}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;I)V

    :cond_3bf
    invoke-virtual {v4}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_25a

    :cond_3c4
    const/4 v5, 0x1

    goto/16 :goto_276

    :cond_3c7
    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_78
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

    :goto_13
    if-ge v0, v4, :cond_23

    const-string v5, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v0, v5, v2}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_23
    iget-object v5, p2, Lorg/objectweb/asm/Context;->c:[C

    move v2, v0

    :goto_26
    add-int v0, v3, v4

    if-ge v2, v0, :cond_48

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_30
    if-lez v0, :cond_44

    add-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1, p4}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v6, v5, v7, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    :cond_44
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    :cond_48
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

    :goto_c
    if-ge v0, v4, :cond_f7

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v1, v1, v0

    iget-object v6, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v7, v1, -0x1

    aget-byte v6, v6, v7

    new-instance v7, Lorg/objectweb/asm/Item;

    invoke-direct {v7, v0}, Lorg/objectweb/asm/Item;-><init>(I)V

    packed-switch v6, :pswitch_data_114

    :pswitch_20  #0x2, 0x7, 0x8, 0xd, 0xe, 0x10, 0x11
    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v1, v10, v10}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    iget v1, v7, Lorg/objectweb/asm/Item;->j:I

    array-length v6, v5

    rem-int/2addr v1, v6

    aget-object v6, v5, v1

    iput-object v6, v7, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    aput-object v7, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :pswitch_34  #0x9, 0xa, 0xb
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

    goto :goto_27

    :pswitch_50  #0x3
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/objectweb/asm/Item;->a(I)V

    goto :goto_27

    :pswitch_58  #0x4
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v7, v1}, Lorg/objectweb/asm/Item;->a(F)V

    goto :goto_27

    :pswitch_64  #0xc
    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v8, v1, v10}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :pswitch_72  #0x5
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/objectweb/asm/Item;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :pswitch_7c  #0x6
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/objectweb/asm/Item;->a(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :pswitch_8a  #0x1
    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_a2

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v1, v1, v0

    iget-object v8, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v9, v1, v3}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    :cond_a2
    invoke-virtual {v7, v6, v1, v10, v10}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :pswitch_a6  #0xf
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

    goto/16 :goto_27

    :pswitch_d3  #0x12
    iget-object v6, p1, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-nez v6, :cond_da

    invoke-direct {p0, p1, v5, v3}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/ClassWriter;[Lorg/objectweb/asm/Item;[C)V

    :cond_da
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

    goto/16 :goto_27

    :cond_f7
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p1, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    iget v3, p0, Lorg/objectweb/asm/ClassReader;->header:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iput-object v5, p1, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    const-wide/high16 v0, 0x3fe8000000000000L  # 0.75

    int-to-double v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p1, Lorg/objectweb/asm/ClassWriter;->f:I

    iput v4, p1, Lorg/objectweb/asm/ClassWriter;->c:I

    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_8a  #00000001
        :pswitch_20  #00000002
        :pswitch_50  #00000003
        :pswitch_58  #00000004
        :pswitch_72  #00000005
        :pswitch_7c  #00000006
        :pswitch_20  #00000007
        :pswitch_20  #00000008
        :pswitch_34  #00000009
        :pswitch_34  #0000000a
        :pswitch_34  #0000000b
        :pswitch_64  #0000000c
        :pswitch_20  #0000000d
        :pswitch_20  #0000000e
        :pswitch_a6  #0000000f
        :pswitch_20  #00000010
        :pswitch_20  #00000011
        :pswitch_d3  #00000012
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

    :goto_44
    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_56

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v16, v5

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_56
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

    :goto_7b
    if-lez v29, :cond_261

    add-int/lit8 v4, v28, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const-string v4, "SourceFile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

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

    :goto_a1
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

    goto :goto_7b

    :cond_c0
    const-string v4, "InnerClasses"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    add-int/lit8 v24, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto :goto_a1

    :cond_d9
    const-string v4, "EnclosingMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    add-int/lit8 v4, v28, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v28, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    if-eqz v4, :cond_3ea

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

    :goto_10d
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto :goto_a1

    :cond_116
    const-string v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_136

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

    goto/16 :goto_a1

    :cond_136
    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    add-int/lit8 v27, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_150
    const-string v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16a

    add-int/lit8 v25, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_16a
    const-string v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_185

    const/high16 v4, 0x20000

    or-int/2addr v12, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_185
    const-string v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    const v4, 0x41000

    or-int/2addr v12, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_1a1
    const-string v4, "SourceDebugExtension"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c9

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

    goto/16 :goto_a1

    :cond_1c9
    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e3

    add-int/lit8 v26, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_1e3
    const-string v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fb

    add-int/lit8 v11, v28, 0x8

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    goto/16 :goto_a1

    :cond_1fb
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_239

    add-int/lit8 v4, v28, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v6, v4, [I

    const/4 v5, 0x0

    add-int/lit8 v4, v28, 0xa

    :goto_210
    array-length v7, v6

    if-ge v5, v7, :cond_225

    aput v4, v6, v5

    add-int/lit8 v7, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_210

    :cond_225
    move-object/from16 v0, v30

    iput-object v6, v0, Lorg/objectweb/asm/Context;->d:[I

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_239
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

    if-eqz v5, :cond_3da

    move-object/from16 v0, v18

    iput-object v0, v5, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move-object/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_261
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

    if-nez v4, :cond_286

    if-nez v17, :cond_27d

    if-eqz v22, :cond_286

    :cond_27d
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_286
    if-eqz v21, :cond_293

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_293
    if-eqz v27, :cond_2ba

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, v27, 0x2

    :goto_29f
    if-lez v4, :cond_2ba

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

    goto :goto_29f

    :cond_2ba
    if-eqz v26, :cond_2e1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v26, 0x2

    :goto_2c6
    if-lez v5, :cond_2e1

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

    goto :goto_2c6

    :cond_2e1
    if-eqz v25, :cond_318

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v25, 0x2

    :goto_2ed
    if-lez v5, :cond_318

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

    goto :goto_2ed

    :cond_318
    if-eqz v23, :cond_34f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v23, 0x2

    :goto_324
    if-lez v5, :cond_34f

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

    goto :goto_324

    :cond_34f
    :goto_34f
    if-eqz v18, :cond_364

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    iput-object v5, v0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object/from16 v18, v4

    goto :goto_34f

    :cond_364
    if-eqz v24, :cond_39a

    add-int/lit8 v4, v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    :goto_370
    if-lez v5, :cond_39a

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

    goto :goto_370

    :cond_39a
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

    :goto_3ae
    if-lez v5, :cond_3bd

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_3ae

    :cond_3bd
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    :goto_3c7
    if-lez v5, :cond_3d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v4}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_3c7

    :cond_3d6
    invoke-virtual/range {p1 .. p1}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void

    :cond_3da
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_a1

    :cond_3ea
    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto/16 :goto_10d
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

    if-lez v2, :cond_1e

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v4, v1, [C

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_1e

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1e
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

    packed-switch v0, :pswitch_data_7e

    :pswitch_d  #0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
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

    :goto_36
    return-object v0

    :pswitch_37  #0x3
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_36

    :pswitch_41  #0x4
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_36

    :pswitch_4f  #0x5
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_36

    :pswitch_59  #0x6
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_36

    :pswitch_67  #0x7
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_36

    :pswitch_70  #0x8
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :pswitch_75  #0x10
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getMethodType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_36

    :pswitch_data_7e
    .packed-switch 0x3
        :pswitch_37  #00000003
        :pswitch_41  #00000004
        :pswitch_4f  #00000005
        :pswitch_59  #00000006
        :pswitch_67  #00000007
        :pswitch_70  #00000008
        :pswitch_d  #00000009
        :pswitch_d  #0000000a
        :pswitch_d  #0000000b
        :pswitch_d  #0000000c
        :pswitch_d  #0000000d
        :pswitch_d  #0000000e
        :pswitch_d  #0000000f
        :pswitch_75  #00000010
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

    if-nez v0, :cond_b

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    aput-object v0, p2, p1

    :cond_b
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

    if-eqz p1, :cond_8

    if-nez v1, :cond_a

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, v1

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, v3, v0, p2}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_9
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
