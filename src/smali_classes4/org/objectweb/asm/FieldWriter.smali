.class final Lorg/objectweb/asm/FieldWriter;
.super Lorg/objectweb/asm/FieldVisitor;


# instance fields
.field private final b:Lorg/objectweb/asm/ClassWriter;

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field private h:Lorg/objectweb/asm/AnnotationWriter;

.field private i:Lorg/objectweb/asm/AnnotationWriter;

.field private j:Lorg/objectweb/asm/Attribute;

.field private k:Lorg/objectweb/asm/AnnotationWriter;

.field private l:Lorg/objectweb/asm/AnnotationWriter;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/FieldVisitor;-><init>(I)V

    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->B:Lorg/objectweb/asm/FieldWriter;

    if-nez v0, :cond_30

    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->B:Lorg/objectweb/asm/FieldWriter;

    :goto_b
    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->C:Lorg/objectweb/asm/FieldWriter;

    iput-object p1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iput p2, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->d:I

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->e:I

    if-eqz p5, :cond_25

    invoke-virtual {p1, p5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    :cond_25
    if-eqz p6, :cond_2f

    invoke-virtual {p1, p6}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->a:I

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->g:I

    :cond_2f
    return-void

    :cond_30
    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->C:Lorg/objectweb/asm/FieldWriter;

    iput-object p0, v0, Lorg/objectweb/asm/FieldWriter;->fv:Lorg/objectweb/asm/FieldVisitor;

    goto :goto_b
.end method


# virtual methods
.method a()I
    .registers 8

    const/4 v4, -0x1

    const/16 v0, 0x8

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->g:I

    if-eqz v1, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    const/16 v0, 0x10

    :cond_10
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_32

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->b:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_29

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_32

    :cond_29
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_32
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_42

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_42
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_4f
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_63

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_63
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_77

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_77
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_8b
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v6, v0

    :goto_a0
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v6, v0

    :cond_b0
    return v6

    :cond_b1
    move v6, v0

    goto :goto_a0
.end method

.method a(Lorg/objectweb/asm/ByteVector;)V
    .registers 10

    const/16 v7, 0x31

    const/4 v6, 0x2

    const/4 v4, -0x1

    const/high16 v5, 0x40000

    const/4 v3, 0x0

    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    and-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x40

    const/high16 v1, 0x60000

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->d:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->e:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->g:I

    if-eqz v0, :cond_13d

    const/4 v0, 0x1

    :goto_28
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->b:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-lt v1, v7, :cond_3d

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_3f

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    :cond_3f
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_48

    add-int/lit8 v0, v0, 0x1

    :cond_48
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    if-eqz v1, :cond_4e

    add-int/lit8 v0, v0, 0x1

    :cond_4e
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_54

    add-int/lit8 v0, v0, 0x1

    :cond_54
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_5a

    add-int/lit8 v0, v0, 0x1

    :cond_5a
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_60

    add-int/lit8 v0, v0, 0x1

    :cond_60
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_66

    add-int/lit8 v0, v0, 0x1

    :cond_66
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_71
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->g:I

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->g:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_8c
    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->b:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-lt v0, v7, :cond_a1

    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_b0

    :cond_a1
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_b0
    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_c6
    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    if-eqz v0, :cond_de

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_de
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_f2
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_106
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_11a
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->a(Lorg/objectweb/asm/ByteVector;)V

    :cond_12e
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    move v5, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->a(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    :cond_13c
    return-void

    :cond_13d
    move v0, v3

    goto/16 :goto_28
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p2, :cond_26

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    :goto_25
    return-object v0

    :cond_26
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_25
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->a:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 11

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->a(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->b:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_2c

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/AnnotationWriter;

    :goto_2b
    return-object v0

    :cond_2c
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_2b
.end method
