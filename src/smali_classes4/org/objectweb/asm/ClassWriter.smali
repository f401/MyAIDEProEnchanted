.class public Lorg/objectweb/asm/ClassWriter;
.super Lorg/objectweb/asm/ClassVisitor;


# static fields
.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final a:[B


# instance fields
.field A:Lorg/objectweb/asm/ByteVector;

.field B:Lorg/objectweb/asm/FieldWriter;

.field C:Lorg/objectweb/asm/FieldWriter;

.field D:Lorg/objectweb/asm/MethodWriter;

.field E:Lorg/objectweb/asm/MethodWriter;

.field private G:S

.field H:[Lorg/objectweb/asm/Item;

.field I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field L:Z

.field M:Lorg/objectweb/asm/ClassReader;

.field private N:Lorg/objectweb/asm/AnnotationWriter;

.field private O:Lorg/objectweb/asm/AnnotationWriter;

.field b:I

.field c:I

.field final d:Lorg/objectweb/asm/ByteVector;

.field e:[Lorg/objectweb/asm/Item;

.field f:I

.field final g:Lorg/objectweb/asm/Item;

.field final h:Lorg/objectweb/asm/Item;

.field final i:Lorg/objectweb/asm/Item;

.field final j:Lorg/objectweb/asm/Item;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:[I

.field private q:I

.field private r:Lorg/objectweb/asm/ByteVector;

.field private s:I

.field private t:I

.field private u:Lorg/objectweb/asm/AnnotationWriter;

.field private v:Lorg/objectweb/asm/AnnotationWriter;

.field private w:Lorg/objectweb/asm/Attribute;

.field private x:I

.field private y:Lorg/objectweb/asm/ByteVector;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/objectweb/asm/ClassWriter;->_clinit_()V

    const/16 v0, 0xdc

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1a

    const-string v2, "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x41

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    sput-object v1, Lorg/objectweb/asm/ClassWriter;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/objectweb/asm/Item;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    const-wide/high16 v4, 0x3fe8000000000000L  # 0.75

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    array-length v0, v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->j:Lorg/objectweb/asm/Item;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_41
    iput-boolean v0, p0, Lorg/objectweb/asm/ClassWriter;->K:Z

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4c

    :goto_47
    iput-boolean v1, p0, Lorg/objectweb/asm/ClassWriter;->J:Z

    return-void

    :cond_4a
    move v0, v2

    goto :goto_41

    :cond_4c
    move v1, v2

    goto :goto_47
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassReader;I)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/objectweb/asm/ClassWriter;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/ClassWriter;)V

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->M:Lorg/objectweb/asm/ClassReader;

    return-void
.end method

.method static _clinit_()V
    .registers 0

    return-void
.end method

.method private a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    iget v1, p1, Lorg/objectweb/asm/Item;->j:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_a
    if-eqz v0, :cond_1b

    iget v1, v0, Lorg/objectweb/asm/Item;->b:I

    iget v2, p1, Lorg/objectweb/asm/Item;->b:I

    if-ne v1, v2, :cond_18

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Item;->a(Lorg/objectweb/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_18
    iget-object v0, v0, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    goto :goto_a

    :cond_1b
    return-object v0
.end method

.method private a(III)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method private b(Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_29
    return-object v0
.end method

.method private b(III)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method private b(Lorg/objectweb/asm/Item;)V
    .registers 9

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    iget-short v1, p0, Lorg/objectweb/asm/ClassWriter;->G:S

    add-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    if-le v0, v1, :cond_39

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [Lorg/objectweb/asm/Item;

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_15
    if-ltz v2, :cond_30

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    aget-object v0, v0, v2

    :goto_1b
    if-eqz v0, :cond_2c

    iget v1, v0, Lorg/objectweb/asm/Item;->j:I

    array-length v5, v4

    rem-int v5, v1, v5

    iget-object v1, v0, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    aget-object v6, v4, v5

    iput-object v6, v0, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    aput-object v0, v4, v5

    move-object v0, v1

    goto :goto_1b

    :cond_2c
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_15

    :cond_30
    iput-object v4, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    int-to-double v0, v3

    const-wide/high16 v2, 0x3fe8000000000000L  # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    :cond_39
    iget v0, p1, Lorg/objectweb/asm/Item;->j:I

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    aget-object v1, v1, v0

    iput-object v1, p1, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    aput-object p1, v1, v0

    return-void
.end method

.method private c(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;
    .registers 7

    const/4 v4, 0x0

    iget-short v0, p0, Lorg/objectweb/asm/ClassWriter;->G:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/objectweb/asm/ClassWriter;->G:S

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-short v1, p0, Lorg/objectweb/asm/ClassWriter;->G:S

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    if-nez v1, :cond_1f

    const/16 v1, 0x10

    new-array v1, v1, [Lorg/objectweb/asm/Item;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    :cond_1f
    iget-short v1, p0, Lorg/objectweb/asm/ClassWriter;->G:S

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    array-length v2, v2

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    iget-object v3, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    :cond_37
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    iget-short v2, p0, Lorg/objectweb/asm/ClassWriter;->G:S

    aput-object v0, v1, v2

    return-object v0
.end method


# virtual methods
.method a(II)I
    .registers 9

    const/16 v1, 0x20

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    iput v1, v0, Lorg/objectweb/asm/Item;->b:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    int-to-long v2, p1

    int-to-long v4, p2

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, v0, Lorg/objectweb/asm/Item;->d:J

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    const v1, 0x7fffffff

    add-int/lit8 v2, p1, 0x20

    add-int/2addr v2, p2

    and-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Item;->j:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    aget-object v1, v1, p2

    iget-object v1, v1, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/objectweb/asm/Item;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_44
    iget v0, v0, Lorg/objectweb/asm/Item;->c:I

    return v0
.end method

.method a(Ljava/lang/String;I)I
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    const/16 v1, 0x1f

    iput v1, v0, Lorg/objectweb/asm/Item;->b:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    iput p2, v0, Lorg/objectweb/asm/Item;->c:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    iput-object p1, v0, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    const v1, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, p2

    and-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Item;->j:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->c(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    :cond_2b
    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method a(D)Lorg/objectweb/asm/Item;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/Item;->a(D)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    iget-wide v2, v1, Lorg/objectweb/asm/Item;->d:J

    invoke-virtual {v0, v2, v3}, Lorg/objectweb/asm/ByteVector;->putLong(J)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_2d
    return-object v0
.end method

.method a(F)Lorg/objectweb/asm/Item;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/Item;->a(F)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    iget v1, v1, Lorg/objectweb/asm/Item;->c:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_2b
    return-object v0
.end method

.method a(I)Lorg/objectweb/asm/Item;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/Item;->a(I)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_27
    return-object v0
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .registers 8

    const/16 v2, 0xf

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->j:Lorg/objectweb/asm/Item;

    add-int/lit8 v1, p1, 0x14

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->j:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2c

    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v2, p1, v0}, Lorg/objectweb/asm/ClassWriter;->b(III)V

    :goto_1b
    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->j:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_2b
    return-object v0

    :cond_2c
    const/16 v0, 0x9

    if-ne p1, v0, :cond_39

    const/4 v0, 0x1

    :goto_31
    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/objectweb/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-direct {p0, v2, p1, v0}, Lorg/objectweb/asm/ClassWriter;->b(III)V

    goto :goto_1b

    :cond_39
    const/4 v0, 0x0

    goto :goto_31
.end method

.method a(J)Lorg/objectweb/asm/Item;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/Item;->a(J)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->putLong(J)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_29
    return-object v0
.end method

.method a(Ljava/lang/Object;)Lorg/objectweb/asm/Item;
    .registers 6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_1e
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2d

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_2d
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3c

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_3c
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_50

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    :goto_49
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_4e
    const/4 v0, 0x0

    goto :goto_49

    :cond_50
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5f

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(F)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_5f
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6e

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassWriter;->a(J)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_6e
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7d

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassWriter;->a(D)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_7d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_88

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_88
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_b8

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a0

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_e

    :cond_a0
    const/16 v1, 0xb

    if-ne v0, v1, :cond_ae

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_e

    :cond_ae
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_e

    :cond_b8
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_cc

    check-cast p1, Lorg/objectweb/asm/Handle;

    iget v0, p1, Lorg/objectweb/asm/Handle;->a:I

    iget-object v1, p1, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    iget-object v2, p1, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    iget-object v3, p1, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/objectweb/asm/ClassWriter;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_e

    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .registers 5

    const/4 v2, 0x7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_28
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .registers 6

    const/16 v2, 0xc

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_2b
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .registers 7

    const/16 v2, 0x9

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2a

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_2a
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Item;
    .registers 8

    if-eqz p4, :cond_2d

    const/16 v0, 0xb

    :goto_4
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v1

    if-nez v1, :cond_30

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :goto_2c
    return-object v0

    :cond_2d
    const/16 v0, 0xa

    goto :goto_4

    :cond_30
    move-object v0, v1

    goto :goto_2c
.end method

.method varargs a(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Item;
    .registers 16

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_c

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    :cond_c
    iget v4, v0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p3}, Lorg/objectweb/asm/Handle;->hashCode()I

    move-result v1

    iget v3, p3, Lorg/objectweb/asm/Handle;->a:I

    iget-object v5, p3, Lorg/objectweb/asm/Handle;->b:Ljava/lang/String;

    iget-object v6, p3, Lorg/objectweb/asm/Handle;->c:Ljava/lang/String;

    iget-object v7, p3, Lorg/objectweb/asm/Handle;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6, v7}, Lorg/objectweb/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    array-length v5, p4

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v3, v2

    :goto_26
    if-ge v3, v5, :cond_39

    aget-object v6, p4, v3

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    xor-int/2addr v1, v7

    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassWriter;->newConst(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_39
    iget-object v6, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    const v3, 0x7fffffff

    and-int v7, v1, v3

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    iget-object v3, p0, Lorg/objectweb/asm/ClassWriter;->e:[Lorg/objectweb/asm/Item;

    array-length v3, v3

    rem-int v3, v7, v3

    aget-object v1, v1, v3

    move-object v3, v1

    :goto_4a
    if-eqz v3, :cond_74

    iget v1, v3, Lorg/objectweb/asm/Item;->b:I

    const/16 v8, 0x21

    if-ne v1, v8, :cond_56

    iget v1, v3, Lorg/objectweb/asm/Item;->j:I

    if-eq v1, v7, :cond_5a

    :cond_56
    iget-object v1, v3, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    move-object v3, v1

    goto :goto_4a

    :cond_5a
    iget v8, v3, Lorg/objectweb/asm/Item;->c:I

    move v1, v2

    :goto_5d
    add-int/lit8 v9, v5, 0x2

    shl-int/lit8 v9, v9, 0x1

    if-ge v1, v9, :cond_74

    add-int v9, v4, v1

    aget-byte v9, v6, v9

    add-int v10, v8, v1

    aget-byte v10, v6, v10

    if-eq v9, v10, :cond_71

    iget-object v1, v3, Lorg/objectweb/asm/Item;->k:Lorg/objectweb/asm/Item;

    move-object v3, v1

    goto :goto_4a

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_74
    if-eqz v3, :cond_a2

    iget v1, v3, Lorg/objectweb/asm/Item;->a:I

    iput v4, v0, Lorg/objectweb/asm/ByteVector;->b:I

    move v0, v1

    :goto_7b
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-virtual {v1, p1, p2, v0}, Lorg/objectweb/asm/Item;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v1

    if-nez v1, :cond_b4

    const/16 v1, 0x12

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :goto_a1
    return-object v0

    :cond_a2
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->z:I

    new-instance v1, Lorg/objectweb/asm/Item;

    invoke-direct {v1, v0}, Lorg/objectweb/asm/Item;-><init>(I)V

    invoke-virtual {v1, v4, v7}, Lorg/objectweb/asm/Item;->a(II)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    goto :goto_7b

    :cond_b4
    move-object v0, v1

    goto :goto_a1
.end method

.method c(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->c(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    :cond_16
    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method c(Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .registers 5

    const/16 v2, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/ByteVector;->b(II)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->h:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_29
    return-object v0
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v5, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/16 v0, 0x2f

    const/16 v2, 0x2e

    :try_start_10
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_2d

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_2c
    return-object p1

    :catch_2d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_60

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_4a
    const-string p1, "java/lang/Object"

    goto :goto_2c

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_60
    move-object p1, p2

    goto :goto_2c
.end method

.method public newClass(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public newMethodType(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->g:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_28
    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    return v0
.end method

.method public toByteArray()[B
    .registers 14

    const/high16 v12, 0x40000

    const v11, 0xffff

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    if-le v0, v11, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Class file too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->o:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x18

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->B:Lorg/objectweb/asm/FieldWriter;

    move v9, v3

    :goto_1d
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lorg/objectweb/asm/FieldWriter;->a()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v0, v0, Lorg/objectweb/asm/FieldWriter;->fv:Lorg/objectweb/asm/FieldVisitor;

    check-cast v0, Lorg/objectweb/asm/FieldWriter;

    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_1d

    :cond_2c
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->D:Lorg/objectweb/asm/MethodWriter;

    move v8, v3

    :goto_2f
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodWriter;->a()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v0, v0, Lorg/objectweb/asm/MethodWriter;->mv:Lorg/objectweb/asm/MethodVisitor;

    check-cast v0, Lorg/objectweb/asm/MethodWriter;

    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_2f

    :cond_3e
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_318

    const/4 v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string v5, "BootstrapMethods"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :goto_4f
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->m:I

    if-eqz v5, :cond_5c

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    const-string v5, "Signature"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_5c
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    if-eqz v5, :cond_69

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    const-string v5, "SourceFile"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_69
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    if-eqz v5, :cond_7b

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v1, v5

    const-string v5, "SourceDebugExtension"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_7b
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->s:I

    if-eqz v5, :cond_88

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0xa

    const-string v5, "EnclosingMethod"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_88
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_98

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x6

    const-string v5, "Deprecated"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_98
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_b3

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v5, v11

    const/16 v6, 0x31

    if-lt v5, v6, :cond_aa

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_b3

    :cond_aa
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x6

    const-string v5, "Synthetic"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_b3
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    if-eqz v5, :cond_c5

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string v5, "InnerClasses"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_c5
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->u:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_d9

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->u:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string v5, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_d9
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->v:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_ed

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->v:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string v5, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_ed
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->N:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_101

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->N:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string v5, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_101
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->O:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_115

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->O:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string v5, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_115
    move v6, v1

    move v7, v0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_315

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v0}, Lorg/objectweb/asm/Attribute;->a()I

    move-result v10

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v6, v0

    add-int/2addr v7, v10

    move v0, v6

    :goto_12c
    new-instance v6, Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, v1

    invoke-direct {v6, v0}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    const v0, -0x35014542  # -8346975.0f

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->d:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v0, v1, v3, v5}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    and-int/2addr v0, v12

    div-int/lit8 v0, v0, 0x40

    const/high16 v1, 0x60000

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->l:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->n:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->o:I

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v3

    :goto_175
    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->o:I

    if-ge v0, v1, :cond_183

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->p:[I

    aget v1, v1, v0

    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_175

    :cond_183
    invoke-virtual {v6, v9}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->B:Lorg/objectweb/asm/FieldWriter;

    :goto_188
    if-eqz v0, :cond_192

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/FieldWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, v0, Lorg/objectweb/asm/FieldWriter;->fv:Lorg/objectweb/asm/FieldVisitor;

    check-cast v0, Lorg/objectweb/asm/FieldWriter;

    goto :goto_188

    :cond_192
    invoke-virtual {v6, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->D:Lorg/objectweb/asm/MethodWriter;

    :goto_197
    if-eqz v0, :cond_1a1

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/MethodWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, v0, Lorg/objectweb/asm/MethodWriter;->mv:Lorg/objectweb/asm/MethodVisitor;

    check-cast v0, Lorg/objectweb/asm/MethodWriter;

    goto :goto_197

    :cond_1a1
    invoke-virtual {v6, v7}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1cb

    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->z:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v6, v0, v3, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1cb
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->m:I

    if-eqz v0, :cond_1e3

    const-string v0, "Signature"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->m:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_1e3
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    if-eqz v0, :cond_1fb

    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_1fb
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_217

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    const-string v1, "SourceDebugExtension"

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    invoke-virtual {v6, v1, v3, v0}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_217
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->s:I

    if-eqz v0, :cond_234

    const-string v0, "EnclosingMethod"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->s:I

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->t:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_234
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_248

    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_248
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_267

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v0, v11

    const/16 v1, 0x31

    if-lt v0, v1, :cond_25a

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_267

    :cond_25a
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_267
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_28e

    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->x:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v6, v0, v3, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_28e
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->u:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2a0

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->u:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_2a0
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->v:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2b2

    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->v:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_2b2
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->N:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2c4

    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->N:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_2c4
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->O:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2d6

    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->O:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_2d6
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_2e1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    :cond_2e1
    iget-boolean v0, p0, Lorg/objectweb/asm/ClassWriter;->L:Z

    if-eqz v0, :cond_312

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->u:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->v:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    iput v3, p0, Lorg/objectweb/asm/ClassWriter;->x:I

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    iput v3, p0, Lorg/objectweb/asm/ClassWriter;->z:I

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->A:Lorg/objectweb/asm/ByteVector;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->B:Lorg/objectweb/asm/FieldWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->C:Lorg/objectweb/asm/FieldWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->D:Lorg/objectweb/asm/MethodWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->E:Lorg/objectweb/asm/MethodWriter;

    iput-boolean v3, p0, Lorg/objectweb/asm/ClassWriter;->K:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/ClassWriter;->J:Z

    iput-boolean v3, p0, Lorg/objectweb/asm/ClassWriter;->L:Z

    new-instance v0, Lorg/objectweb/asm/ClassReader;

    iget-object v1, v6, Lorg/objectweb/asm/ByteVector;->a:[B

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    invoke-virtual {p0}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    :goto_311
    return-object v0

    :cond_312
    iget-object v0, v6, Lorg/objectweb/asm/ByteVector;->a:[B

    goto :goto_311

    :cond_315
    move v0, v6

    goto/16 :goto_12c

    :cond_318
    move v0, v3

    goto/16 :goto_4f
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    iput p2, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->l:I

    iput-object p3, p0, Lorg/objectweb/asm/ClassWriter;->I:Ljava/lang/String;

    if-eqz p4, :cond_15

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->m:I

    :cond_15
    if-nez p5, :cond_39

    move v0, v1

    :goto_18
    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->n:I

    if-eqz p6, :cond_3e

    array-length v0, p6

    if-lez v0, :cond_3e

    array-length v0, p6

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->o:I

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->o:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->p:[I

    :goto_28
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->o:I

    if-ge v1, v0, :cond_3e

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->p:[I

    aget-object v2, p6, v1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_39
    invoke-virtual {p0, p5}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    goto :goto_18

    :cond_3e
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p2, :cond_23

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->u:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->u:Lorg/objectweb/asm/AnnotationWriter;

    :goto_22
    return-object v0

    :cond_23
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->v:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->v:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_22
.end method

.method public final visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->w:Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public final visitEnd()V
    .registers 1

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 13

    new-instance v0, Lorg/objectweb/asm/FieldWriter;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/FieldWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_c

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    :cond_c
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v0, v2, Lorg/objectweb/asm/Item;->c:I

    if-nez v0, :cond_39

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->x:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    iget v3, v2, Lorg/objectweb/asm/Item;->a:I

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v3, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    if-nez p2, :cond_3a

    move v0, v1

    :goto_26
    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    if-nez p3, :cond_3f

    :goto_2d
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->x:I

    iput v0, v2, Lorg/objectweb/asm/Item;->c:I

    :cond_39
    return-void

    :cond_3a
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    :cond_3f
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    goto :goto_2d
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 15

    new-instance v0, Lorg/objectweb/asm/MethodWriter;

    iget-boolean v7, p0, Lorg/objectweb/asm/ClassWriter;->K:Z

    iget-boolean v8, p0, Lorg/objectweb/asm/ClassWriter;->J:Z

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lorg/objectweb/asm/MethodWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->s:I

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->t:I

    :cond_10
    return-void
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    :cond_8
    if-eqz p2, :cond_19

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, p2, v1, v2}, Lorg/objectweb/asm/ByteVector;->c(Ljava/lang/String;II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    :cond_19
    return-void
.end method

.method public final visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 11

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->a(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    const/4 v2, 0x1

    iget v1, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v1, -0x2

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_29

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->N:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->N:Lorg/objectweb/asm/AnnotationWriter;

    :goto_28
    return-object v0

    :cond_29
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->O:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->O:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_28
.end method
