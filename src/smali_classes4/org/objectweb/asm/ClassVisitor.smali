.class public abstract Lorg/objectweb/asm/ClassVisitor;
.super Ljava/lang/Object;


# instance fields
.field protected final api:I

.field protected cv:Lorg/objectweb/asm/ClassVisitor;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/ClassVisitor;)V
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
    iput p1, p0, Lorg/objectweb/asm/ClassVisitor;->api:I

    iput-object p2, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    :cond_9
    return-void
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    :cond_9
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 12

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 12

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/objectweb/asm/ClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
