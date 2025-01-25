.class Lorg/objectweb/asm/MethodWriter;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field private $:Lorg/objectweb/asm/ByteVector;

.field private A:I

.field private B:Lorg/objectweb/asm/Handler;

.field private C:Lorg/objectweb/asm/Handler;

.field private D:I

.field private E:Lorg/objectweb/asm/ByteVector;

.field private F:I

.field private G:Lorg/objectweb/asm/ByteVector;

.field private H:I

.field private I:Lorg/objectweb/asm/ByteVector;

.field private J:Lorg/objectweb/asm/Attribute;

.field private K:Z

.field private L:I

.field private final M:I

.field private N:Lorg/objectweb/asm/Label;

.field private O:Lorg/objectweb/asm/Label;

.field private P:Lorg/objectweb/asm/Label;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Lorg/objectweb/asm/AnnotationWriter;

.field private V:Lorg/objectweb/asm/AnnotationWriter;

.field private W:Lorg/objectweb/asm/AnnotationWriter;

.field private X:Lorg/objectweb/asm/AnnotationWriter;

.field private Y:I

.field private Z:I

.field final b:Lorg/objectweb/asm/ClassWriter;

.field private c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:I

.field k:[I

.field private l:Lorg/objectweb/asm/ByteVector;

.field private m:Lorg/objectweb/asm/AnnotationWriter;

.field private n:Lorg/objectweb/asm/AnnotationWriter;

.field private o:[Lorg/objectweb/asm/AnnotationWriter;

.field private p:[Lorg/objectweb/asm/AnnotationWriter;

.field private q:Lorg/objectweb/asm/Attribute;

.field private r:Lorg/objectweb/asm/ByteVector;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lorg/objectweb/asm/ByteVector;

.field private w:I

.field private x:[I

.field private z:[I


# direct methods
.method constructor <init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .registers 13

    const/4 v1, 0x0

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->D:Lorg/objectweb/asm/MethodWriter;

    if-nez v0, :cond_58

    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->D:Lorg/objectweb/asm/MethodWriter;

    :goto_13
    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->E:Lorg/objectweb/asm/MethodWriter;

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    :cond_28
    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->d:I

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->e:I

    iput-object p4, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    iput-object p5, p0, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz p6, :cond_5d

    array-length v0, p6

    if-lez v0, :cond_5d

    array-length v0, p6

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->k:[I

    move v0, v1

    :goto_47
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    if-ge v0, v2, :cond_5d

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->k:[I

    aget-object v3, p6, v0

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_58
    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->E:Lorg/objectweb/asm/MethodWriter;

    iput-object p0, v0, Lorg/objectweb/asm/MethodWriter;->mv:Lorg/objectweb/asm/MethodVisitor;

    goto :goto_13

    :cond_5d
    if-eqz p8, :cond_8c

    :goto_5f
    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez p7, :cond_65

    if-eqz p8, :cond_8b

    :cond_65
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_73

    add-int/lit8 v0, v0, -0x1

    :cond_73
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_8b
    return-void

    :cond_8c
    if-eqz p7, :cond_90

    const/4 v1, 0x1

    goto :goto_5f

    :cond_90
    const/4 v1, 0x2

    goto :goto_5f
.end method

.method private a(III)I
    .registers 6

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    array-length v1, v1

    if-ge v1, v0, :cond_10

    :cond_c
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v0, 0x3

    return v0
.end method

.method static a([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static a([I[III)I
    .registers 7

    sub-int v0, p3, p2

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget v2, p0, v1

    if-ge p2, v2, :cond_14

    aget v2, p0, v1

    if-gt v2, p3, :cond_14

    aget v2, p1, v1

    add-int/2addr v0, v2

    :cond_11
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    aget v2, p0, v1

    if-ge p3, v2, :cond_11

    aget v2, p0, v1

    if-gt v2, p2, :cond_11

    aget v2, p1, v1

    sub-int/2addr v0, v2

    goto :goto_11

    :cond_20
    return v0
.end method

.method private a(II)V
    .registers 10

    const/high16 v6, 0xff00000

    const v5, 0xfffff

    const/4 v4, 0x7

    :goto_6
    if-ge p1, p2, :cond_c1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget v1, v0, p1

    const/high16 v0, -0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_4b

    and-int v0, v1, v5

    and-int/2addr v1, v6

    sparse-switch v1, :sswitch_data_c2

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :sswitch_1f
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, v3, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    aget-object v0, v3, v0

    iget-object v0, v0, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1c

    :sswitch_37
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, v2, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    aget-object v0, v2, v0

    iget v0, v0, Lorg/objectweb/asm/Item;->c:I

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1c

    :cond_4b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v0, v0, 0x1c

    :goto_52
    if-lez v0, :cond_5c

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    :cond_5c
    and-int v0, v1, v6

    const/high16 v3, 0x1700000

    if-ne v0, v3, :cond_8c

    const/16 v0, 0x4c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v0, v0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    and-int/2addr v1, v5

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_78
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1c

    :cond_8c
    and-int/lit8 v0, v1, 0xf

    packed-switch v0, :pswitch_data_cc

    :pswitch_91  #0x4, 0x5, 0x6, 0x7, 0x8
    const/16 v0, 0x4a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :pswitch_97  #0x1
    const/16 v0, 0x49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :pswitch_9d  #0x2
    const/16 v0, 0x46

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :pswitch_a3  #0x3
    const/16 v0, 0x44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :pswitch_a9  #0x9
    const/16 v0, 0x5a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :pswitch_af  #0xa
    const/16 v0, 0x42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :pswitch_b5  #0xb
    const/16 v0, 0x43

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :pswitch_bb  #0xc
    const/16 v0, 0x53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_78

    :cond_c1
    return-void

    :sswitch_data_c2
    .sparse-switch
        0x1700000 -> :sswitch_1f
        0x1800000 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_97  #00000001
        :pswitch_9d  #00000002
        :pswitch_a3  #00000003
        :pswitch_91  #00000004
        :pswitch_91  #00000005
        :pswitch_91  #00000006
        :pswitch_91  #00000007
        :pswitch_91  #00000008
        :pswitch_a9  #00000009
        :pswitch_af  #0000000a
        :pswitch_b5  #0000000b
        :pswitch_bb  #0000000c
    .end packed-switch
.end method

.method private a(ILorg/objectweb/asm/Label;)V
    .registers 5

    new-instance v0, Lorg/objectweb/asm/Edge;

    invoke-direct {v0}, Lorg/objectweb/asm/Edge;-><init>()V

    iput p1, v0, Lorg/objectweb/asm/Edge;->a:I

    iput-object p2, v0, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iput-object v1, v0, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iput-object v0, v1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_16
    return-void

    :cond_17
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_16

    :cond_27
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lorg/objectweb/asm/Label;

    iget v1, p1, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_16
.end method

.method private a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_3b

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_3c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    const/16 v2, 0xab

    invoke-virtual {v0, v2, v1, v3, v3}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    invoke-direct {p0, v1, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    invoke-virtual {p1}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v0

    iget v2, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lorg/objectweb/asm/Label;->a:I

    move v0, v1

    :goto_21
    array-length v2, p2

    if-ge v0, v2, :cond_38

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v2

    iget v3, v2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lorg/objectweb/asm/Label;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_38
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->e()V

    :cond_3b
    return-void

    :cond_3c
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    :goto_47
    array-length v0, p2

    if-ge v1, v0, :cond_38

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    aget-object v2, p2, v1

    invoke-direct {p0, v0, v2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_47
.end method

.method static a([BII)V
    .registers 5

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method static a([I[ILorg/objectweb/asm/Label;)V
    .registers 5

    iget v0, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_15

    const/4 v0, 0x0

    iget v1, p2, Lorg/objectweb/asm/Label;->c:I

    invoke-static {p0, p1, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v0

    iput v0, p2, Lorg/objectweb/asm/Label;->c:I

    iget v0, p2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lorg/objectweb/asm/Label;->a:I

    :cond_15
    return-void
.end method

.method static b([BI)S
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->x:[I

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_f

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    :cond_f
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->c()V

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->u:I

    :cond_18
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->x:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    return-void
.end method

.method private b(Lorg/objectweb/asm/Frame;)V
    .registers 12

    const v9, 0x1000004

    const v8, 0x1000003

    const/4 v1, 0x0

    iget-object v4, p1, Lorg/objectweb/asm/Frame;->c:[I

    iget-object v5, p1, Lorg/objectweb/asm/Frame;->d:[I

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_e
    array-length v6, v4

    if-ge v2, v6, :cond_27

    aget v6, v4, v2

    const/high16 v7, 0x1000000

    if-ne v6, v7, :cond_22

    add-int/lit8 v0, v0, 0x1

    :goto_19
    if-eq v6, v9, :cond_1d

    if-ne v6, v8, :cond_1f

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    move v0, v1

    goto :goto_19

    :cond_27
    move v0, v1

    move v2, v1

    :goto_29
    array-length v6, v5

    if-ge v2, v6, :cond_39

    aget v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    if-eq v6, v9, :cond_34

    if-ne v6, v8, :cond_36

    :cond_34
    add-int/lit8 v2, v2, 0x1

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_39
    iget-object v2, p1, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iget v2, v2, Lorg/objectweb/asm/Label;->c:I

    invoke-direct {p0, v2, v3, v0}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    move-result v2

    move v0, v1

    :goto_42
    if-lez v3, :cond_57

    aget v6, v4, v0

    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aput v6, v7, v2

    if-eq v6, v9, :cond_4e

    if-ne v6, v8, :cond_50

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    :cond_50
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_57
    move v0, v2

    :goto_58
    array-length v2, v5

    if-ge v1, v2, :cond_6c

    aget v2, v5, v1

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aput v2, v3, v0

    if-eq v2, v9, :cond_65

    if-ne v2, v8, :cond_67

    :cond_65
    add-int/lit8 v1, v1, 0x1

    :cond_67
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_6c
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    return-void
.end method

.method static c([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private c()V
    .registers 13

    const/16 v0, 0x40

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/16 v2, 0xff

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget v5, v3, v10

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    const/4 v4, 0x2

    aget v9, v3, v4

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v3, v3, Lorg/objectweb/asm/ClassWriter;->b:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x32

    if-ge v3, v4, :cond_3c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v5, 0x3

    invoke-direct {p0, v7, v0}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v5, 0x3

    add-int/lit8 v1, v5, 0x3

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    :goto_3b
    return-void

    :cond_3c
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->x:[I

    aget v4, v3, v10

    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->u:I

    if-nez v3, :cond_84

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget v3, v3, v1

    move v8, v3

    :goto_49
    if-nez v9, :cond_9f

    sub-int v3, v5, v4

    packed-switch v3, :pswitch_data_10e

    move v0, v2

    :goto_51
    if-eq v0, v2, :cond_61

    move v6, v7

    :goto_54
    if-ge v1, v4, :cond_61

    iget-object v10, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget v10, v10, v6

    iget-object v11, p0, Lorg/objectweb/asm/MethodWriter;->x:[I

    aget v11, v11, v6

    if-eq v10, v11, :cond_ac

    move v0, v2

    :cond_61
    sparse-switch v0, :sswitch_data_120

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v5, 0x3

    invoke-direct {p0, v7, v0}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v5, 0x3

    add-int/lit8 v1, v5, 0x3

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto :goto_3b

    :cond_84
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget v3, v3, v1

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->x:[I

    aget v6, v6, v1

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    move v8, v3

    goto :goto_49

    :pswitch_91  #0xfffffffd, 0xfffffffe, 0xffffffff
    const/16 v0, 0xf8

    move v4, v5

    goto :goto_51

    :pswitch_95  #0x0
    if-ge v8, v0, :cond_99

    move v0, v1

    goto :goto_51

    :cond_99
    const/16 v0, 0xfb

    goto :goto_51

    :pswitch_9c  #0x1, 0x2, 0x3
    const/16 v0, 0xfc

    goto :goto_51

    :cond_9f
    if-ne v5, v4, :cond_109

    if-ne v9, v10, :cond_109

    const/16 v3, 0x3f

    if-ge v8, v3, :cond_a9

    :goto_a7
    move v3, v1

    goto :goto_51

    :cond_a9
    const/16 v0, 0xf7

    goto :goto_a7

    :cond_ac
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :sswitch_b1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_3b

    :sswitch_b7
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v8, 0x40

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v5, 0x3

    add-int/lit8 v1, v5, 0x4

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto/16 :goto_3b

    :sswitch_c7
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v5, 0x3

    add-int/lit8 v1, v5, 0x4

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto/16 :goto_3b

    :sswitch_db
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_3b

    :sswitch_e8
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 v1, v3, 0xfb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_3b

    :sswitch_f5
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 v1, v3, 0xfb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v4, 0x3

    add-int/lit8 v1, v5, 0x3

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto/16 :goto_3b

    :cond_109
    move v3, v1

    move v0, v2

    goto/16 :goto_51

    nop

    :pswitch_data_10e
    .packed-switch -0x3
        :pswitch_91  #fffffffd
        :pswitch_91  #fffffffe
        :pswitch_91  #ffffffff
        :pswitch_95  #00000000
        :pswitch_9c  #00000001
        :pswitch_9c  #00000002
        :pswitch_9c  #00000003
    .end packed-switch

    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_b1
        0x40 -> :sswitch_b7
        0xf7 -> :sswitch_c7
        0xf8 -> :sswitch_e8
        0xfb -> :sswitch_db
        0xfc -> :sswitch_f5
    .end sparse-switch
.end method

.method private d()V
    .registers 16

    const/16 v14, 0xc9

    const/4 v1, 0x2

    const/4 v9, 0x3

    const/4 v13, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v10, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    new-array v3, v6, [I

    new-array v2, v6, [I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    new-array v11, v0, [Z

    move v0, v9

    :goto_15
    if-ne v0, v9, :cond_18

    move v0, v1

    :cond_18
    move v4, v0

    move v5, v6

    :goto_1a
    array-length v0, v10

    if-ge v5, v0, :cond_108

    aget-byte v0, v10, v5

    and-int/lit16 v8, v0, 0xff

    sget-object v0, Lorg/objectweb/asm/ClassWriter;->a:[B

    aget-byte v0, v0, v8

    packed-switch v0, :pswitch_data_360

    :pswitch_28  #0x10
    add-int/lit8 v5, v5, 0x4

    move v8, v6

    :goto_2b
    if-eqz v8, :cond_35a

    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [I

    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    array-length v12, v3

    invoke-static {v3, v6, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v2

    invoke-static {v2, v6, v0, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    aput v5, v7, v3

    array-length v2, v2

    aput v8, v0, v2

    if-lez v8, :cond_357

    move-object v3, v7

    move v4, v9

    :goto_49
    move-object v2, v0

    goto :goto_1a

    :pswitch_4b  #0x0, 0x4
    add-int/lit8 v5, v5, 0x1

    move v8, v6

    goto :goto_2b

    :pswitch_4f  #0x9
    if-le v8, v14, :cond_81

    const/16 v0, 0xda

    if-ge v8, v0, :cond_7e

    add-int/lit8 v0, v8, -0x31

    :goto_57
    add-int/lit8 v7, v5, 0x1

    invoke-static {v10, v7}, Lorg/objectweb/asm/MethodWriter;->c([BI)I

    move-result v7

    add-int/2addr v7, v5

    move v8, v0

    :goto_5f
    invoke-static {v3, v2, v5, v7}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v0

    const/16 v7, -0x8000

    if-lt v0, v7, :cond_6b

    const/16 v7, 0x7fff

    if-le v0, v7, :cond_354

    :cond_6b
    aget-boolean v0, v11, v5

    if-nez v0, :cond_354

    const/16 v0, 0xa7

    if-eq v8, v0, :cond_77

    const/16 v0, 0xa8

    if-ne v8, v0, :cond_8a

    :cond_77
    move v0, v1

    :goto_78
    aput-boolean v13, v11, v5

    :goto_7a
    add-int/lit8 v5, v5, 0x3

    move v8, v0

    goto :goto_2b

    :cond_7e
    add-int/lit8 v0, v8, -0x14

    goto :goto_57

    :cond_81
    add-int/lit8 v0, v5, 0x1

    invoke-static {v10, v0}, Lorg/objectweb/asm/MethodWriter;->b([BI)S

    move-result v0

    add-int/2addr v0, v5

    move v7, v0

    goto :goto_5f

    :cond_8a
    const/4 v0, 0x5

    goto :goto_78

    :pswitch_8c  #0xa
    add-int/lit8 v5, v5, 0x5

    move v8, v6

    goto :goto_2b

    :pswitch_90  #0xe
    if-ne v4, v13, :cond_b6

    invoke-static {v3, v2, v6, v5}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    neg-int v0, v0

    :goto_99
    add-int/lit8 v7, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    sub-int v5, v7, v5

    add-int/lit8 v7, v5, 0x8

    invoke-static {v10, v7}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v7

    add-int/lit8 v8, v5, 0x4

    invoke-static {v10, v8}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0xc

    add-int/2addr v5, v7

    move v8, v0

    goto/16 :goto_2b

    :cond_b6
    aget-boolean v0, v11, v5

    if-nez v0, :cond_351

    and-int/lit8 v0, v5, 0x3

    aput-boolean v13, v11, v5

    goto :goto_99

    :pswitch_bf  #0xf
    if-ne v4, v13, :cond_dc

    invoke-static {v3, v2, v6, v5}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    neg-int v0, v0

    :goto_c8
    add-int/lit8 v7, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    sub-int v5, v7, v5

    add-int/lit8 v7, v5, 0x4

    invoke-static {v10, v7}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v5, v7

    move v8, v0

    goto/16 :goto_2b

    :cond_dc
    aget-boolean v0, v11, v5

    if-nez v0, :cond_34e

    and-int/lit8 v0, v5, 0x3

    aput-boolean v13, v11, v5

    goto :goto_c8

    :pswitch_e5  #0x11
    add-int/lit8 v0, v5, 0x1

    aget-byte v0, v10, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v7, 0x84

    if-ne v0, v7, :cond_f4

    add-int/lit8 v5, v5, 0x6

    move v8, v6

    goto/16 :goto_2b

    :cond_f4
    add-int/lit8 v5, v5, 0x4

    move v8, v6

    goto/16 :goto_2b

    :pswitch_f9  #0x1, 0x3, 0xb
    add-int/lit8 v5, v5, 0x2

    move v8, v6

    goto/16 :goto_2b

    :pswitch_fe  #0x2, 0x5, 0x6, 0xc, 0xd
    add-int/lit8 v5, v5, 0x3

    move v8, v6

    goto/16 :goto_2b

    :pswitch_103  #0x7, 0x8
    add-int/lit8 v5, v5, 0x5

    move v8, v6

    goto/16 :goto_2b

    :cond_108
    if-ge v4, v9, :cond_10c

    add-int/lit8 v4, v4, -0x1

    :cond_10c
    if-nez v4, :cond_34b

    new-instance v8, Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-direct {v8, v0}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    move v0, v6

    :goto_118
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->b:I

    if-ge v0, v4, :cond_276

    aget-byte v4, v10, v0

    and-int/lit16 v7, v4, 0xff

    sget-object v4, Lorg/objectweb/asm/ClassWriter;->a:[B

    aget-byte v4, v4, v7

    packed-switch v4, :pswitch_data_388

    :pswitch_129  #0x10
    const/4 v4, 0x4

    invoke-virtual {v8, v10, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x4

    goto :goto_118

    :pswitch_130  #0x0, 0x4
    invoke-virtual {v8, v7}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    :pswitch_136  #0x9
    if-le v7, v14, :cond_160

    const/16 v4, 0xda

    if-ge v7, v4, :cond_15d

    add-int/lit8 v4, v7, -0x31

    :goto_13e
    add-int/lit8 v5, v0, 0x1

    invoke-static {v10, v5}, Lorg/objectweb/asm/MethodWriter;->c([BI)I

    move-result v5

    add-int/2addr v5, v0

    move v7, v4

    :goto_146
    invoke-static {v3, v2, v0, v5}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v4

    aget-boolean v5, v11, v0

    if-eqz v5, :cond_18e

    const/16 v5, 0xa7

    if-ne v7, v5, :cond_169

    const/16 v5, 0xc8

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_157
    invoke-virtual {v8, v4}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_15a
    add-int/lit8 v0, v0, 0x3

    goto :goto_118

    :cond_15d
    add-int/lit8 v4, v7, -0x14

    goto :goto_13e

    :cond_160
    add-int/lit8 v4, v0, 0x1

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->b([BI)S

    move-result v4

    add-int/2addr v4, v0

    move v5, v4

    goto :goto_146

    :cond_169
    const/16 v5, 0xa8

    if-ne v7, v5, :cond_171

    invoke-virtual {v8, v14}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_157

    :cond_171
    const/16 v5, 0xa6

    if-gt v7, v5, :cond_18b

    add-int/lit8 v5, v7, 0x1

    xor-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_17b
    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    const/16 v5, 0x8

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/16 v5, 0xc8

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v4, v4, -0x3

    goto :goto_157

    :cond_18b
    xor-int/lit8 v5, v7, 0x1

    goto :goto_17b

    :cond_18e
    invoke-virtual {v8, v7}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v8, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_15a

    :pswitch_195  #0xa
    add-int/lit8 v4, v0, 0x1

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v2, v0, v4}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v4

    invoke-virtual {v8, v7}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v8, v4}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_118

    :pswitch_1aa  #0xe
    add-int/lit8 v4, v0, 0x4

    and-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v5

    const/16 v5, 0xaa

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    const/4 v5, 0x0

    iget v7, v8, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v7, v7, 0x4

    rsub-int/lit8 v7, v7, 0x4

    rem-int/lit8 v7, v7, 0x4

    invoke-virtual {v8, v5, v6, v7}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v5

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v5, v0

    invoke-static {v3, v2, v0, v5}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v5

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v5

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v7

    sub-int v5, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v7, v4, -0x4

    invoke-static {v10, v7}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_1ea
    if-lez v5, :cond_35d

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v7

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v7, v0

    invoke-static {v3, v2, v0, v7}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1ea

    :pswitch_1fd  #0xf
    add-int/lit8 v4, v0, 0x4

    and-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v5

    const/16 v5, 0xab

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    const/4 v5, 0x0

    iget v7, v8, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v7, v7, 0x4

    rsub-int/lit8 v7, v7, 0x4

    rem-int/lit8 v7, v7, 0x4

    invoke-virtual {v8, v5, v6, v7}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v5

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v5, v0

    invoke-static {v3, v2, v0, v5}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v5

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v5

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v8, v5}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_22a
    if-lez v5, :cond_35d

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v4, v4, 0x4

    invoke-static {v10, v4}, Lorg/objectweb/asm/MethodWriter;->a([BI)I

    move-result v7

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v7, v0

    invoke-static {v3, v2, v0, v7}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v7

    invoke-virtual {v8, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, -0x1

    goto :goto_22a

    :pswitch_246  #0x11
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x84

    if-ne v4, v5, :cond_258

    const/4 v4, 0x6

    invoke-virtual {v8, v10, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x6

    goto/16 :goto_118

    :cond_258
    const/4 v4, 0x4

    invoke-virtual {v8, v10, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_118

    :pswitch_260  #0x1, 0x3, 0xb
    invoke-virtual {v8, v10, v0, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_118

    :pswitch_267  #0x2, 0x5, 0x6, 0xc, 0xd
    invoke-virtual {v8, v10, v0, v9}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_118

    :pswitch_26e  #0x7, 0x8
    const/4 v4, 0x5

    invoke-virtual {v8, v10, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_118

    :cond_276
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_2bb

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    :goto_27c
    if-eqz v0, :cond_294

    iget v4, v0, Lorg/objectweb/asm/Label;->c:I

    add-int/lit8 v4, v4, -0x3

    if-ltz v4, :cond_28e

    aget-boolean v4, v11, v4

    if-eqz v4, :cond_28e

    iget v4, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lorg/objectweb/asm/Label;->a:I

    :cond_28e
    invoke-static {v3, v2, v0}, Lorg/objectweb/asm/MethodWriter;->a([I[ILorg/objectweb/asm/Label;)V

    iget-object v0, v0, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_27c

    :cond_294
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v0, v0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    if-eqz v0, :cond_2c3

    move v0, v6

    :goto_29b
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v4, v4, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    array-length v4, v4

    if-ge v0, v4, :cond_2c3

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v4, v4, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2b8

    iget v5, v4, Lorg/objectweb/asm/Item;->b:I

    const/16 v7, 0x1f

    if-ne v5, v7, :cond_2b8

    iget v5, v4, Lorg/objectweb/asm/Item;->c:I

    invoke-static {v3, v2, v6, v5}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v5

    iput v5, v4, Lorg/objectweb/asm/Item;->c:I

    :cond_2b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_29b

    :cond_2bb
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->u:I

    if-lez v0, :cond_2c3

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iput-boolean v13, v0, Lorg/objectweb/asm/ClassWriter;->L:Z

    :cond_2c3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    :goto_2c5
    if-eqz v0, :cond_2d9

    iget-object v4, v0, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    invoke-static {v3, v2, v4}, Lorg/objectweb/asm/MethodWriter;->a([I[ILorg/objectweb/asm/Label;)V

    iget-object v4, v0, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    invoke-static {v3, v2, v4}, Lorg/objectweb/asm/MethodWriter;->a([I[ILorg/objectweb/asm/Label;)V

    iget-object v4, v0, Lorg/objectweb/asm/Handler;->c:Lorg/objectweb/asm/Label;

    invoke-static {v3, v2, v4}, Lorg/objectweb/asm/MethodWriter;->a([I[ILorg/objectweb/asm/Label;)V

    iget-object v0, v0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    goto :goto_2c5

    :cond_2d9
    move v5, v6

    :goto_2da
    if-ge v5, v1, :cond_311

    if-nez v5, :cond_309

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    move-object v4, v0

    :goto_2e1
    if-eqz v4, :cond_30d

    iget-object v7, v4, Lorg/objectweb/asm/ByteVector;->a:[B

    move v0, v6

    :goto_2e6
    iget v9, v4, Lorg/objectweb/asm/ByteVector;->b:I

    if-ge v0, v9, :cond_30d

    invoke-static {v7, v0}, Lorg/objectweb/asm/MethodWriter;->c([BI)I

    move-result v9

    invoke-static {v3, v2, v6, v9}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v10

    invoke-static {v7, v0, v10}, Lorg/objectweb/asm/MethodWriter;->a([BII)V

    add-int/lit8 v11, v0, 0x2

    add-int/lit8 v12, v0, 0x2

    invoke-static {v7, v12}, Lorg/objectweb/asm/MethodWriter;->c([BI)I

    move-result v12

    add-int/2addr v9, v12

    invoke-static {v3, v2, v6, v9}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v9

    sub-int/2addr v9, v10

    invoke-static {v7, v11, v9}, Lorg/objectweb/asm/MethodWriter;->a([BII)V

    add-int/lit8 v0, v0, 0xa

    goto :goto_2e6

    :cond_309
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    move-object v4, v0

    goto :goto_2e1

    :cond_30d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2da

    :cond_311
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_32e

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    move v0, v6

    :goto_31a
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->b:I

    if-ge v0, v4, :cond_32e

    invoke-static {v1, v0}, Lorg/objectweb/asm/MethodWriter;->c([BI)I

    move-result v4

    invoke-static {v3, v2, v6, v4}, Lorg/objectweb/asm/MethodWriter;->a([I[III)I

    move-result v4

    invoke-static {v1, v0, v4}, Lorg/objectweb/asm/MethodWriter;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_31a

    :cond_32e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    :goto_330
    if-eqz v0, :cond_348

    invoke-virtual {v0}, Lorg/objectweb/asm/Attribute;->getLabels()[Lorg/objectweb/asm/Label;

    move-result-object v4

    if-eqz v4, :cond_345

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    :goto_33b
    if-ltz v1, :cond_345

    aget-object v5, v4, v1

    invoke-static {v3, v2, v5}, Lorg/objectweb/asm/MethodWriter;->a([I[ILorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_33b

    :cond_345
    iget-object v0, v0, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    goto :goto_330

    :cond_348
    iput-object v8, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_34b
    move v0, v4

    goto/16 :goto_15

    :cond_34e
    move v0, v6

    goto/16 :goto_c8

    :cond_351
    move v0, v6

    goto/16 :goto_99

    :cond_354
    move v0, v6

    goto/16 :goto_7a

    :cond_357
    move-object v3, v7

    goto/16 :goto_49

    :cond_35a
    move-object v0, v2

    goto/16 :goto_49

    :cond_35d
    move v0, v4

    goto/16 :goto_118

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_f9  #00000001
        :pswitch_fe  #00000002
        :pswitch_f9  #00000003
        :pswitch_4b  #00000004
        :pswitch_fe  #00000005
        :pswitch_fe  #00000006
        :pswitch_103  #00000007
        :pswitch_103  #00000008
        :pswitch_4f  #00000009
        :pswitch_8c  #0000000a
        :pswitch_f9  #0000000b
        :pswitch_fe  #0000000c
        :pswitch_fe  #0000000d
        :pswitch_90  #0000000e
        :pswitch_bf  #0000000f
        :pswitch_28  #00000010
        :pswitch_e5  #00000011
    .end packed-switch

    :pswitch_data_388
    .packed-switch 0x0
        :pswitch_130  #00000000
        :pswitch_260  #00000001
        :pswitch_267  #00000002
        :pswitch_260  #00000003
        :pswitch_130  #00000004
        :pswitch_267  #00000005
        :pswitch_267  #00000006
        :pswitch_26e  #00000007
        :pswitch_26e  #00000008
        :pswitch_136  #00000009
        :pswitch_195  #0000000a
        :pswitch_260  #0000000b
        :pswitch_267  #0000000c
        :pswitch_267  #0000000d
        :pswitch_1aa  #0000000e
        :pswitch_1fd  #0000000f
        :pswitch_129  #00000010
        :pswitch_246  #00000011
    .end packed-switch
.end method

.method private e()V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_29

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    new-instance v1, Lorg/objectweb/asm/Frame;

    invoke-direct {v1}, Lorg/objectweb/asm/Frame;-><init>()V

    iput-object v1, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v1, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iput-object v0, v1, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->a:[B

    invoke-virtual {v0, p0, v1, v2}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;I[B)Z

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iput-object v0, v1, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    :goto_25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    return-void

    :cond_29
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    iput v1, v0, Lorg/objectweb/asm/Label;->g:I

    goto :goto_25
.end method

.method private f()V
    .registers 10

    const/16 v8, 0x3b

    const/4 v1, 0x0

    const/high16 v7, 0x1700000

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    move-result v1

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_d2

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-nez v0, :cond_47

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v5, v5, Lorg/objectweb/asm/ClassWriter;->I:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v4, v7

    aput v4, v3, v1

    :goto_30
    move v1, v2

    move v3, v0

    :goto_32
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_d6

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    add-int/lit8 v1, v3, -0x3

    aput v1, v0, v2

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    return-void

    :cond_47
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    add-int/lit8 v0, v1, 0x1

    const/4 v4, 0x6

    aput v4, v3, v1

    goto :goto_30

    :sswitch_4f
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_32

    :sswitch_57
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    const/4 v4, 0x2

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_32

    :sswitch_60
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    const/4 v4, 0x4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_32

    :sswitch_69
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    const/4 v4, 0x3

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_32

    :goto_72
    :sswitch_72
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_7f

    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_7f
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_96

    add-int/lit8 v0, v0, 0x1

    :goto_8b
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_96

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_96
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_32

    :goto_ad
    :sswitch_ad
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_b8

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_b8
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto/16 :goto_32

    :cond_d2
    move v0, v1

    goto/16 :goto_30

    nop

    :sswitch_data_d6
    .sparse-switch
        0x42 -> :sswitch_4f
        0x43 -> :sswitch_4f
        0x44 -> :sswitch_69
        0x46 -> :sswitch_57
        0x49 -> :sswitch_4f
        0x4a -> :sswitch_60
        0x4c -> :sswitch_ad
        0x53 -> :sswitch_4f
        0x5a -> :sswitch_4f
        0x5b -> :sswitch_72
    .end sparse-switch
.end method


# virtual methods
.method final a()I
    .registers 11

    const v9, 0xffff

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->h:I

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->i:I

    add-int/lit8 v0, v0, 0x6

    :goto_d
    return v0

    :cond_e
    const/16 v6, 0x8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    if-lez v0, :cond_d0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_4c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_5e
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_70
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v1, v9

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1c4

    const/4 v1, 0x1

    :goto_7e
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    if-eqz v1, :cond_1c7

    const-string v1, "StackMapTable"

    :goto_84
    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_8e
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_a2
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_21f

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v6, v0

    :goto_b7
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->b:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v6, v0

    :cond_d0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    if-lez v0, :cond_e2

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v6, v0

    :cond_e2
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_101

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v0, v9

    const/16 v1, 0x31

    if-lt v0, v1, :cond_f8

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_101

    :cond_f8
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x6

    :cond_101
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_111

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x6

    :cond_111
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x8

    :cond_125
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_137

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v6, v0

    :cond_137
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_149

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v6, v0

    :cond_149
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_15d

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v6, v0

    :cond_15d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_171

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v6, v0

    :cond_171
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->U:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_185

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->U:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v6, v0

    :cond_185
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->V:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_199

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->V:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v6, v0

    :cond_199
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1d4

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int v1, v6, v0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b5
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-lt v0, v2, :cond_1d5

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    if-nez v2, :cond_1cb

    move v2, v7

    :goto_1c0
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b5

    :cond_1c4
    move v1, v7

    goto/16 :goto_7e

    :cond_1c7
    const-string v1, "StackMap"

    goto/16 :goto_84

    :cond_1cb
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v2

    goto :goto_1c0

    :cond_1d4
    move v1, v6

    :cond_1d5
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f0
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-lt v0, v2, :cond_208

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    if-nez v2, :cond_1ff

    move v2, v7

    :goto_1fb
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f0

    :cond_1ff
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v2

    goto :goto_1fb

    :cond_208
    move v6, v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_21c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    move v3, v7

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v0, v6

    goto/16 :goto_d

    :cond_21c
    move v0, v6

    goto/16 :goto_d

    :cond_21f
    move v6, v0

    goto/16 :goto_b7
.end method

.method final a(Lorg/objectweb/asm/ByteVector;)V
    .registers 14

    const/4 v11, -0x1

    const/high16 v10, 0x40000

    const v9, 0xffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x40

    const/high16 v1, 0xe0000

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->d:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->e:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->h:I

    if-eqz v0, :cond_36

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v0, v0, Lorg/objectweb/asm/ClassWriter;->M:Lorg/objectweb/asm/ClassReader;

    iget-object v0, v0, Lorg/objectweb/asm/ClassReader;->b:[B

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->h:I

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->i:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    if-lez v0, :cond_3fc

    move v0, v6

    :goto_3d
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    if-lez v1, :cond_43

    add-int/lit8 v0, v0, 0x1

    :cond_43
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_59

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v1, v9

    const/16 v2, 0x31

    if-lt v1, v2, :cond_57

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/2addr v1, v10

    if-eqz v1, :cond_59

    :cond_57
    add-int/lit8 v0, v0, 0x1

    :cond_59
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_62

    add-int/lit8 v0, v0, 0x1

    :cond_62
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v1, :cond_68

    add-int/lit8 v0, v0, 0x1

    :cond_68
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_6e

    add-int/lit8 v0, v0, 0x1

    :cond_6e
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_74

    add-int/lit8 v0, v0, 0x1

    :cond_74
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_7a

    add-int/lit8 v0, v0, 0x1

    :cond_7a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_80

    add-int/lit8 v0, v0, 0x1

    :cond_80
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->U:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_86

    add-int/lit8 v0, v0, 0x1

    :cond_86
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->V:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_8c

    add-int/lit8 v0, v0, 0x1

    :cond_8c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_92

    add-int/lit8 v0, v0, 0x1

    :cond_92
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_98

    add-int/lit8 v0, v0, 0x1

    :cond_98
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a3
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    if-lez v0, :cond_291

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_c2
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_cd
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_d8
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_e3
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_f0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_3f9

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v8, v0

    :goto_fe
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_117

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->b:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v8, v0

    :cond_117
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v0, v1, v7, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    if-lez v0, :cond_171

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    :goto_14f
    if-eqz v0, :cond_171

    iget-object v1, v0, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    iget v2, v2, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/objectweb/asm/Handler;->c:Lorg/objectweb/asm/Label;

    iget v2, v2, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/Handler;->e:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    goto :goto_14f

    :cond_171
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_3f6

    move v0, v6

    :goto_176
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_17c

    add-int/lit8 v0, v0, 0x1

    :cond_17c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_182

    add-int/lit8 v0, v0, 0x1

    :cond_182
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_188

    add-int/lit8 v0, v0, 0x1

    :cond_188
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_18e

    add-int/lit8 v0, v0, 0x1

    :cond_18e
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_194

    add-int/lit8 v0, v0, 0x1

    :cond_194
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_19f

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_19f
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1cb

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->D:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1cb
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1f4

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->F:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1f4
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_21d

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_21d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_251

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v0, v9

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2be

    :goto_22a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    if-eqz v6, :cond_2c1

    const-string v0, "StackMapTable"

    :goto_230
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->u:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_251
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_265

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_265
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_279

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_279
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_291

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->b:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    :cond_291
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    if-lez v0, :cond_2c5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v7

    :goto_2b0
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->j:I

    if-ge v0, v1, :cond_2c5

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->k:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b0

    :cond_2be
    move v6, v7

    goto/16 :goto_22a

    :cond_2c1
    const-string v0, "StackMap"

    goto/16 :goto_230

    :cond_2c5
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2e8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v0, v9

    const/16 v1, 0x31

    if-lt v0, v1, :cond_2d9

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_2e8

    :cond_2d9
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_2e8
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2fe

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_2fe
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v0, :cond_31e

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_31e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_347

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Z:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_347
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_368

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_368
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_37c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_37c
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_390

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_390
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->U:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_3a4

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->U:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_3a4
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->V:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_3b8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->V:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_3b8
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_3ce

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    invoke-static {v0, v1, p1}, Lorg/objectweb/asm/AnnotationWriter;->a([Lorg/objectweb/asm/AnnotationWriter;ILorg/objectweb/asm/ByteVector;)V

    :cond_3ce
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_3e4

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    invoke-static {v0, v1, p1}, Lorg/objectweb/asm/AnnotationWriter;->a([Lorg/objectweb/asm/AnnotationWriter;ILorg/objectweb/asm/ByteVector;)V

    :cond_3e4
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    move v3, v7

    move v4, v11

    move v5, v11

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    goto/16 :goto_35

    :cond_3f6
    move v0, v7

    goto/16 :goto_176

    :cond_3f9
    move v8, v0

    goto/16 :goto_fe

    :cond_3fc
    move v0, v7

    goto/16 :goto_3d
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p2, :cond_26

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    :goto_25
    return-object v0

    :cond_26
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_25
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .registers 7

    const/4 v2, 0x0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->l:Lorg/objectweb/asm/ByteVector;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    invoke-virtual {p1}, Lorg/objectweb/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/Attribute;

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->q:Lorg/objectweb/asm/Attribute;

    goto :goto_c
.end method

.method public visitCode()V
    .registers 1

    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v0, -0x2

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->b:I

    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v3, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v3

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v4, :cond_24

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v4, :cond_2c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_24
    :goto_24
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v3, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_2c
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch p1, :pswitch_data_64

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    if-eq v4, v5, :cond_39

    if-ne v4, v6, :cond_3a

    :cond_39
    const/4 v0, -0x3

    :cond_3a
    add-int/2addr v0, v1

    :goto_3b
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v0, v1, :cond_41

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_41
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_24

    :pswitch_44  #0xb2
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    if-eq v4, v5, :cond_4a

    if-ne v4, v6, :cond_4d

    :cond_4a
    const/4 v0, 0x2

    :goto_4b
    add-int/2addr v0, v2

    goto :goto_3b

    :cond_4d
    move v0, v1

    goto :goto_4b

    :pswitch_4f  #0xb3
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    if-eq v4, v5, :cond_55

    if-ne v4, v6, :cond_57

    :cond_55
    :goto_55
    add-int/2addr v0, v1

    goto :goto_3b

    :cond_57
    const/4 v0, -0x1

    goto :goto_55

    :pswitch_59  #0xb4
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    if-eq v4, v5, :cond_5f

    if-ne v4, v6, :cond_61

    :cond_5f
    :goto_5f
    add-int/2addr v0, v1

    goto :goto_3b

    :cond_61
    move v1, v2

    goto :goto_5f

    nop

    :pswitch_data_64
    .packed-switch 0xb2
        :pswitch_44  #000000b2
        :pswitch_4f  #000000b3
        :pswitch_59  #000000b4
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 15

    const/high16 v8, 0x1800000

    const/high16 v7, 0x1700000

    const/16 v3, 0x40

    const/4 v1, 0x0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->x:[I

    if-nez v0, :cond_16

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->f()V

    :cond_16
    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, v0, p2, p4}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    move-result v2

    move v3, v1

    :goto_21
    if-ge v3, p2, :cond_69

    aget-object v0, p3, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    aput v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_21

    :cond_3e
    aget-object v0, p3, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_53

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_3a

    :cond_53
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v6, ""

    aget-object v0, p3, v3

    check-cast v0, Lorg/objectweb/asm/Label;

    iget v0, v0, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v5, v6, v0}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v8

    aput v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_3a

    :cond_69
    :goto_69
    if-ge v1, p4, :cond_b1

    aget-object v0, p5, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_86

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    aget-object v0, p5, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    aput v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    :goto_82
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_69

    :cond_86
    aget-object v0, p5, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_9b

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    aget-object v0, p5, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_82

    :cond_9b
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v5, ""

    aget-object v0, p5, v1

    check-cast v0, Lorg/objectweb/asm/Label;

    iget v0, v0, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v4, v5, v0}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v8

    aput v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_82

    :cond_b1
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    :goto_b4
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    goto/16 :goto_b

    :cond_c8
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_e7

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    :cond_d7
    packed-switch p1, :pswitch_data_184

    :cond_da
    :goto_da
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->u:I

    goto :goto_b4

    :cond_e7
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_d7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_fb  #0x0
    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v1

    :goto_10d
    if-ge v0, p2, :cond_117

    aget-object v2, p3, v0

    invoke-direct {p0, v2}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    :cond_117
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_11c
    if-ge v1, p4, :cond_da

    aget-object v0, p5, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    :pswitch_126  #0x1
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 v3, p2, 0xfb

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v1

    :goto_137
    if-ge v0, p2, :cond_da

    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_137

    :pswitch_141  #0x2
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->T:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    rsub-int v2, p2, 0xfb

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_da

    :pswitch_152  #0x3
    if-ge v0, v3, :cond_15a

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_da

    :cond_15a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xfb

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_da

    :pswitch_167  #0x4
    if-ge v0, v3, :cond_177

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_170
    aget-object v0, p5, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    goto/16 :goto_da

    :cond_177
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->v:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xf7

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_170

    nop

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_fb  #00000000
        :pswitch_126  #00000001
        :pswitch_141  #00000002
        :pswitch_152  #00000003
        :pswitch_167  #00000004
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 6

    const/4 v1, 0x0

    const/16 v2, 0x84

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_18

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_18
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    if-le v0, v1, :cond_25

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    :cond_25
    const/16 v0, 0xff

    if-gt p1, v0, :cond_31

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_31

    const/16 v0, -0x80

    if-ge p2, v0, :cond_41

    :cond_31
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_40
.end method

.method public visitInsn(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2b

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :goto_1c
    const/16 v0, 0xac

    if-lt p1, v0, :cond_24

    const/16 v0, 0xb1

    if-le p1, v0, :cond_28

    :cond_24
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_2b

    :cond_28
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->e()V

    :cond_2b
    return-void

    :cond_2c
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    sget-object v1, Lorg/objectweb/asm/Frame;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v0, v1, :cond_39

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_39
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_1c
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 11

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const v0, -0xffff01

    and-int/2addr v0, p1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v0, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->a(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_35

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    :goto_34
    return-object v0

    :cond_35
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_34
.end method

.method public visitIntInsn(II)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_16

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_16
    :goto_16
    const/16 v0, 0x11

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_1f
    return-void

    :cond_20
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_16

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v0, v1, :cond_2e

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_2e
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_16

    :cond_31
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1f
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 11

    const/16 v5, 0xba

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v1

    iget v0, v1, Lorg/objectweb/asm/Item;->c:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_22

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v2, :cond_2f

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, v5, v4, v2, v1}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v0, v5, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_2f
    if-nez v0, :cond_37

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/objectweb/asm/Item;->c:I

    :cond_37
    and-int/lit8 v2, v0, 0x3

    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    shr-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v0, v2, :cond_48

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_48
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_22
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 10

    const/16 v6, 0xc8

    const/16 v5, 0xa8

    const/16 v4, 0xa7

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_31

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v1, :cond_64

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    invoke-virtual {v1, p1, v3, v0, v0}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    invoke-virtual {p2}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget v2, v1, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/objectweb/asm/Label;->a:I

    invoke-direct {p0, v3, p2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    if-eq p1, v4, :cond_31

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    :cond_31
    :goto_31
    iget v1, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_cd

    iget v1, p2, Lorg/objectweb/asm/Label;->c:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v1, v2

    const/16 v2, -0x8000

    if-ge v1, v2, :cond_cd

    if-ne p1, v4, :cond_9c

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v6}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_49
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    :goto_55
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_63

    if-eqz v0, :cond_5e

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_5e
    if-ne p1, v4, :cond_63

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->e()V

    :cond_63
    return-void

    :cond_64
    if-ne p1, v5, :cond_8d

    iget v0, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_78

    iget v0, p2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p2, Lorg/objectweb/asm/Label;->a:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->L:I

    :cond_78
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    goto :goto_31

    :cond_8d
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    sget-object v2, Lorg/objectweb/asm/Frame;->a:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    invoke-direct {p0, v1, p2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    goto :goto_31

    :cond_9c
    if-ne p1, v5, :cond_a6

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_49

    :cond_a6
    if-eqz v0, :cond_ae

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    :cond_ae
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_ca

    add-int/lit8 v1, p1, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_ba
    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v6}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_49

    :cond_ca
    xor-int/lit8 v1, p1, 0x1

    goto :goto_ba

    :cond_cd
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    goto/16 :goto_55
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Z

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->a:[B

    invoke-virtual {p1, p0, v1, v2}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Z

    iget v0, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_78

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_3e

    iget v0, p1, Lorg/objectweb/asm/Label;->c:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->c:I

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget v2, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    goto :goto_18

    :cond_3b
    invoke-direct {p0, v3, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    :cond_3e
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    if-nez v0, :cond_4f

    new-instance v0, Lorg/objectweb/asm/Frame;

    invoke-direct {v0}, Lorg/objectweb/asm/Frame;-><init>()V

    iput-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iput-object p1, v0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    :cond_4f
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_75

    iget v0, p1, Lorg/objectweb/asm/Label;->c:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->c:I

    if-ne v0, v1, :cond_71

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget v2, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    goto :goto_18

    :cond_71
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iput-object p1, v0, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    :cond_75
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    goto :goto_18

    :cond_78
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    iput v1, v0, Lorg/objectweb/asm/Label;->g:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    :cond_8c
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iput-object p1, v0, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    :cond_9a
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    goto/16 :goto_18
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 9

    const/16 v6, 0x12

    const/4 v5, 0x6

    const/4 v4, 0x5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_22

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_34

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, v6, v2, v3, v1}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_22
    :goto_22
    iget v0, v1, Lorg/objectweb/asm/Item;->a:I

    iget v2, v1, Lorg/objectweb/asm/Item;->b:I

    if-eq v2, v4, :cond_2c

    iget v1, v1, Lorg/objectweb/asm/Item;->b:I

    if-ne v1, v5, :cond_4e

    :cond_2c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    :goto_33
    return-void

    :cond_34
    iget v0, v1, Lorg/objectweb/asm/Item;->b:I

    if-eq v0, v4, :cond_3c

    iget v0, v1, Lorg/objectweb/asm/Item;->b:I

    if-ne v0, v5, :cond_49

    :cond_3c
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x2

    :goto_40
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v0, v2, :cond_46

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_46
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_22

    :cond_49
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_4e
    const/16 v1, 0x100

    if-lt v0, v1, :cond_5a

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_33

    :cond_5a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v6, v0}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_33
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_b

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    :cond_b
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    iget v1, p2, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 11

    const/4 v0, 0x2

    if-eqz p3, :cond_3c

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-nez v1, :cond_e

    new-instance v1, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v1}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    :cond_e
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->F:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v2, p4, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/objectweb/asm/Label;->c:I

    iget v3, p4, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_3c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-nez v1, :cond_47

    new-instance v1, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v1}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    :cond_47
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->D:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->D:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v2, p4, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/objectweb/asm/Label;->c:I

    iget v3, p4, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-eq v1, v0, :cond_8d

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_86

    const/16 v2, 0x44

    if-ne v1, v2, :cond_8e

    :cond_86
    :goto_86
    add-int/2addr v0, p6

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    if-le v0, v1, :cond_8d

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    :cond_8d
    return-void

    :cond_8e
    const/4 v0, 0x1

    goto :goto_86
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 14

    const/4 v1, 0x0

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    array-length v2, p3

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v1

    :goto_11
    array-length v2, p3

    if-ge v0, v2, :cond_31

    aget-object v2, p3, v0

    iget v2, v2, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v3, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget-object v4, p4, v0

    iget v4, v4, Lorg/objectweb/asm/Label;->c:I

    aget-object v5, p3, v0

    iget v5, v5, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget v4, p5, v0

    invoke-virtual {v2, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_31
    if-nez p2, :cond_59

    invoke-virtual {v3, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_36
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p6}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p7, :cond_6b

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    :goto_58
    return-object v0

    :cond_59
    iget-object v0, p2, Lorg/objectweb/asm/TypePath;->a:[B

    iget v2, p2, Lorg/objectweb/asm/TypePath;->b:I

    aget-byte v0, v0, v2

    iget-object v2, p2, Lorg/objectweb/asm/TypePath;->a:[B

    iget v4, p2, Lorg/objectweb/asm/TypePath;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v4, v0}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    goto :goto_36

    :cond_6b
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_58
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, v2, v1, v5}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_2e
    array-length v2, p3

    if-ge v0, v2, :cond_42

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    aget-object v2, p3, v0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v1, v5}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_42
    invoke-direct {p0, p1, p3}, Lorg/objectweb/asm/MethodWriter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .registers 16

    const v12, 0x7fffffff

    const/high16 v11, 0x1700000

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->d()V

    :cond_f
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_12b

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    move-object v2, v0

    :goto_16
    if-eqz v2, :cond_5a

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->c:Lorg/objectweb/asm/Label;

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v4

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v6

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->d:Ljava/lang/String;

    if-nez v0, :cond_53

    const-string v0, "java/lang/Throwable"

    :goto_30
    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v7, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v7

    iget v0, v4, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Lorg/objectweb/asm/Label;->a:I

    move-object v0, v1

    :goto_3d
    if-eq v0, v6, :cond_56

    new-instance v1, Lorg/objectweb/asm/Edge;

    invoke-direct {v1}, Lorg/objectweb/asm/Edge;-><init>()V

    or-int v8, v11, v7

    iput v8, v1, Lorg/objectweb/asm/Edge;->a:I

    iput-object v4, v1, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iget-object v8, v0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iput-object v8, v1, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iput-object v1, v0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_3d

    :cond_53
    iget-object v0, v2, Lorg/objectweb/asm/Handler;->d:Ljava/lang/String;

    goto :goto_30

    :cond_56
    iget-object v0, v2, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    move-object v2, v0

    goto :goto_16

    :cond_5a
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    iget v6, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    invoke-virtual {v0, v2, v4, v1, v6}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I[Lorg/objectweb/asm/Type;I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodWriter;->b(Lorg/objectweb/asm/Frame;)V

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    move v1, v5

    :goto_73
    if-eqz v2, :cond_b7

    iget-object v6, v2, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    iput-object v10, v2, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    iget-object v7, v2, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget v0, v2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_87

    iget v0, v2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Lorg/objectweb/asm/Label;->a:I

    :cond_87
    iget v0, v2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v2, Lorg/objectweb/asm/Label;->a:I

    iget-object v0, v7, Lorg/objectweb/asm/Frame;->d:[I

    array-length v0, v0

    iget v4, v2, Lorg/objectweb/asm/Label;->g:I

    add-int/2addr v0, v4

    if-le v0, v1, :cond_222

    :goto_95
    iget-object v1, v2, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    move-object v4, v1

    move-object v2, v6

    :goto_99
    if-eqz v4, :cond_225

    iget-object v1, v4, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    invoke-virtual {v1}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget-object v8, v1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget v9, v4, Lorg/objectweb/asm/Edge;->a:I

    invoke-virtual {v7, v6, v8, v9}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Frame;I)Z

    move-result v6

    if-eqz v6, :cond_21f

    iget-object v6, v1, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    if-nez v6, :cond_21f

    iput-object v2, v1, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    :goto_b3
    iget-object v4, v4, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    move-object v2, v1

    goto :goto_99

    :cond_b7
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    move-object v4, v2

    move v0, v1

    :goto_bb
    if-eqz v4, :cond_119

    iget-object v1, v4, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget v2, v4, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_c8

    invoke-direct {p0, v1}, Lorg/objectweb/asm/MethodWriter;->b(Lorg/objectweb/asm/Frame;)V

    :cond_c8
    iget v1, v4, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_115

    iget-object v6, v4, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    iget v2, v4, Lorg/objectweb/asm/Label;->c:I

    if-nez v6, :cond_ed

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    :goto_d8
    add-int/lit8 v7, v1, -0x1

    if-lt v7, v2, :cond_115

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    :goto_e1
    if-ge v1, v7, :cond_f0

    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v8, v8, Lorg/objectweb/asm/ByteVector;->a:[B

    int-to-byte v9, v5

    aput-byte v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    :cond_ed
    iget v1, v6, Lorg/objectweb/asm/Label;->c:I

    goto :goto_d8

    :cond_f0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    const/16 v8, -0x41

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    invoke-direct {p0, v2, v5, v3}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    move-result v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->z:[I

    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v8, "java/lang/Throwable"

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, v11

    aput v7, v2, v1

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    invoke-static {v1, v4, v6}, Lorg/objectweb/asm/Handler;->a(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Handler;

    move-result-object v1

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    :cond_115
    iget-object v1, v4, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    move-object v4, v1

    goto :goto_bb

    :cond_119
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    iput v5, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    :goto_11d
    if-eqz v1, :cond_128

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    iget-object v1, v1, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    goto :goto_11d

    :cond_128
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    :goto_12a
    return-void

    :cond_12b
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-ne v0, v3, :cond_213

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    move-object v1, v0

    :goto_132
    if-eqz v1, :cond_167

    iget-object v0, v1, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    iget-object v2, v1, Lorg/objectweb/asm/Handler;->c:Lorg/objectweb/asm/Label;

    iget-object v4, v1, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    :goto_13a
    if-eq v0, v4, :cond_163

    new-instance v6, Lorg/objectweb/asm/Edge;

    invoke-direct {v6}, Lorg/objectweb/asm/Edge;-><init>()V

    iput v12, v6, Lorg/objectweb/asm/Edge;->a:I

    iput-object v2, v6, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iget v7, v0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_154

    iget-object v7, v0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iput-object v7, v6, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iput-object v6, v0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    :goto_151
    iget-object v0, v0, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_13a

    :cond_154
    iget-object v7, v0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget-object v7, v7, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iget-object v7, v7, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iput-object v7, v6, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iget-object v7, v0, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget-object v7, v7, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iput-object v6, v7, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    goto :goto_151

    :cond_163
    iget-object v0, v1, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    move-object v1, v0

    goto :goto_132

    :cond_167
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->L:I

    if-lez v0, :cond_1cb

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    const-wide/16 v6, 0x1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->L:I

    invoke-virtual {v0, v10, v6, v7, v1}, Lorg/objectweb/asm/Label;->b(Lorg/objectweb/asm/Label;JI)V

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    move v0, v5

    :goto_177
    if-eqz v1, :cond_1a2

    iget v2, v1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_19f

    iget-object v2, v1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iget v4, v2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_19f

    add-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    const-wide/16 v8, 0x20

    div-long/2addr v6, v8

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    const-wide/16 v8, 0x1

    rem-int/lit8 v4, v0, 0x20

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->L:I

    invoke-virtual {v2, v10, v6, v7, v4}, Lorg/objectweb/asm/Label;->b(Lorg/objectweb/asm/Label;JI)V

    :cond_19f
    iget-object v1, v1, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_177

    :cond_1a2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    move-object v1, v0

    :goto_1a5
    if-eqz v1, :cond_1cb

    iget v0, v1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1c7

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    :goto_1af
    if-eqz v0, :cond_1ba

    iget v2, v0, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v0, Lorg/objectweb/asm/Label;->a:I

    iget-object v0, v0, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_1af

    :cond_1ba
    iget-object v0, v1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget-object v0, v0, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    iget-object v0, v0, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    const-wide/16 v6, 0x0

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->L:I

    invoke-virtual {v0, v1, v6, v7, v2}, Lorg/objectweb/asm/Label;->b(Lorg/objectweb/asm/Label;JI)V

    :cond_1c7
    iget-object v0, v1, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    move-object v1, v0

    goto :goto_1a5

    :cond_1cb
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->N:Lorg/objectweb/asm/Label;

    move-object v2, v4

    move v1, v5

    :goto_1cf
    if-eqz v2, :cond_20b

    iget-object v4, v2, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    iget v6, v2, Lorg/objectweb/asm/Label;->f:I

    iget v0, v2, Lorg/objectweb/asm/Label;->g:I

    add-int/2addr v0, v6

    if-le v0, v1, :cond_21d

    :goto_1da
    iget-object v1, v2, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/Edge;

    iget v2, v2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_21b

    iget-object v1, v1, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    move-object v5, v1

    :goto_1e5
    if-eqz v5, :cond_208

    iget-object v2, v5, Lorg/objectweb/asm/Edge;->b:Lorg/objectweb/asm/Label;

    iget v1, v2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_219

    iget v1, v5, Lorg/objectweb/asm/Edge;->a:I

    if-ne v1, v12, :cond_204

    move v1, v3

    :goto_1f4
    iput v1, v2, Lorg/objectweb/asm/Label;->f:I

    iget v1, v2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v2, Lorg/objectweb/asm/Label;->a:I

    iput-object v4, v2, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    move-object v1, v2

    :goto_1ff
    iget-object v2, v5, Lorg/objectweb/asm/Edge;->c:Lorg/objectweb/asm/Edge;

    move-object v5, v2

    move-object v4, v1

    goto :goto_1e5

    :cond_204
    iget v1, v5, Lorg/objectweb/asm/Edge;->a:I

    add-int/2addr v1, v6

    goto :goto_1f4

    :cond_208
    move-object v2, v4

    move v1, v0

    goto :goto_1cf

    :cond_20b
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    goto/16 :goto_12a

    :cond_213
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->s:I

    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    goto/16 :goto_12a

    :cond_219
    move-object v1, v4

    goto :goto_1ff

    :cond_21b
    move-object v5, v1

    goto :goto_1e5

    :cond_21d
    move v0, v1

    goto :goto_1da

    :cond_21f
    move-object v1, v2

    goto/16 :goto_b3

    :cond_222
    move v0, v1

    goto/16 :goto_95

    :cond_225
    move v1, v0

    goto/16 :goto_73
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const/16 v5, 0xb9

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v0, v2, Lorg/objectweb/asm/Item;->c:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_22

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v1, :cond_3a

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1, v4, v3, v2}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_22
    :goto_22
    if-ne p1, v5, :cond_64

    if-nez v0, :cond_2c

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/objectweb/asm/Item;->c:I

    :cond_2c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v5, v2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0, v4}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    :goto_39
    return-void

    :cond_3a
    if-nez v0, :cond_42

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/objectweb/asm/Item;->c:I

    :cond_42
    move v1, v0

    const/16 v0, 0xb8

    if-ne p1, v0, :cond_5b

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    shr-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v3

    and-int/lit8 v3, v1, 0x3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    :goto_51
    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v0, v3, :cond_57

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_57
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    move v0, v1

    goto :goto_22

    :cond_5b
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    shr-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v3

    and-int/lit8 v3, v1, 0x3

    add-int/2addr v0, v3

    goto :goto_51

    :cond_64
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v2, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_39
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 7

    const/16 v3, 0xc5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_1f

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v1, :cond_2b

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, v3, p2, v2, v0}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_1f
    :goto_1f
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, v3, v0}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_2b
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_1f
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_b

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    :cond_b
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Z:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->$:Lorg/objectweb/asm/ByteVector;

    if-nez p1, :cond_1e

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_1e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    goto :goto_16
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 10

    const/4 v2, 0x0

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const-string v0, "Ljava/lang/Synthetic;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p3, :cond_55

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    if-nez v1, :cond_4a

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    :cond_4a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v1, v1, p1

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->o:[Lorg/objectweb/asm/AnnotationWriter;

    aput-object v0, v1, p1

    goto :goto_21

    :cond_55
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    if-nez v1, :cond_64

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    :cond_64
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v1, v1, p1

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->p:[Lorg/objectweb/asm/AnnotationWriter;

    aput-object v0, v1, p1

    goto :goto_21
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xaa

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p3, p0, v2, v1, v5}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_31
    array-length v2, p4

    if-ge v0, v2, :cond_3e

    aget-object v2, p4, v0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v1, v5}, Lorg/objectweb/asm/Label;->a(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3e
    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/MethodWriter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 11

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->a(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_2c

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->W:Lorg/objectweb/asm/AnnotationWriter;

    :goto_2b
    return-object v0

    :cond_2c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->X:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_2b
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    new-instance v1, Lorg/objectweb/asm/Handler;

    invoke-direct {v1}, Lorg/objectweb/asm/Handler;-><init>()V

    iput-object p1, v1, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    iput-object p2, v1, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    iput-object p3, v1, Lorg/objectweb/asm/Handler;->c:Lorg/objectweb/asm/Label;

    iput-object p4, v1, Lorg/objectweb/asm/Handler;->d:Ljava/lang/String;

    if-eqz p4, :cond_26

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    :goto_1b
    iput v0, v1, Lorg/objectweb/asm/Handler;->e:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/Handler;

    if-nez v0, :cond_28

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->B:Lorg/objectweb/asm/Handler;

    :goto_23
    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/Handler;

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_1b

    :cond_28
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/Handler;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    goto :goto_23
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 11

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->a(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_2c

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->U:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->U:Lorg/objectweb/asm/AnnotationWriter;

    :goto_2b
    return-object v0

    :cond_2c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->V:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->V:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_2b
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_21

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v1, :cond_29

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_21
    :goto_21
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v1, p1, v0}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_29
    const/16 v1, 0xbb

    if-ne p1, v1, :cond_21

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v1, v2, :cond_37

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_37
    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_21
.end method

.method public visitVarInsn(II)V
    .registers 7

    const/16 v3, 0xa9

    const/16 v2, 0x36

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_5d

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/Frame;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/objectweb/asm/Frame;->a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_1a
    :goto_1a
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x37

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x39

    if-ne p1, v0, :cond_81

    :cond_2f
    add-int/lit8 v0, p2, 0x2

    :goto_31
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    if-le v0, v1, :cond_37

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    :cond_37
    const/4 v0, 0x4

    if-ge p2, v0, :cond_8c

    if-eq p1, v3, :cond_8c

    if-ge p1, v2, :cond_84

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    :goto_45
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_4a
    if-lt p1, v2, :cond_5c

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-nez v0, :cond_5c

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->A:I

    if-lez v0, :cond_5c

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_5c
    return-void

    :cond_5d
    if-ne p1, v3, :cond_71

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    iput v1, v0, Lorg/objectweb/asm/Label;->f:I

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->e()V

    goto :goto_1a

    :cond_71
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    sget-object v1, Lorg/objectweb/asm/Frame;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-le v0, v1, :cond_7e

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    :cond_7e
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:I

    goto :goto_1a

    :cond_81
    add-int/lit8 v0, p2, 0x1

    goto :goto_31

    :cond_84
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    goto :goto_45

    :cond_8c
    const/16 v0, 0x100

    if-lt p2, v0, :cond_9c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_4a

    :cond_9c
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_4a
.end method
