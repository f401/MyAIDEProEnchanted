.class public abstract Lorg/objectweb/asm/FieldVisitor;
.super Ljava/lang/Object;


# instance fields
.field protected final api:I

.field protected fv:Lorg/objectweb/asm/FieldVisitor;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/FieldVisitor;-><init>(ILorg/objectweb/asm/FieldVisitor;)V

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/FieldVisitor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_11

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    iput p1, p0, Lorg/objectweb/asm/FieldVisitor;->api:I

    iput-object p2, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    :cond_9
    return-void
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    :cond_9
    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/FieldVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/objectweb/asm/FieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
