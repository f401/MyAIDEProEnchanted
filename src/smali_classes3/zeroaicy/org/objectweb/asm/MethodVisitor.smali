.class public abstract Lzeroaicy/org/objectweb/asm/MethodVisitor;
.super Ljava/lang/Object;
.source "MethodVisitor.java"


# static fields
.field private static final REQUIRES_ASM5:Ljava/lang/String; = "This feature requires ASM5"


# instance fields
.field protected final api:I

.field protected mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 71
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;-><init>(ILzeroaicy/org/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/MethodVisitor;)V
    .registers 6

    const/high16 v1, 0x10a0000

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/high16 v0, 0x90000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported api "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    if-ne p1, v1, :cond_1

    .line 93
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 95
    :cond_1
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    .line 96
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 2

    .line 106
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    return-object v0
.end method

.method public visitAnnotableParameterCount(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    .line 153
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 2

    .line 138
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute;",
            ")V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitCode()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitCode()V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_0
    return-void
.end method

.method public visitInsn(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_0
    return-void
.end method

.method public visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 641
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 647
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitIntInsn(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_0
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzeroaicy/org/objectweb/asm/Handle;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 470
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 553
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Handle;

    if-nez v0, :cond_0

    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lzeroaicy/org/objectweb/asm/Type;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x70000

    if-ge v0, v1, :cond_2

    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    if-eqz v0, :cond_2

    .line 559
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM7"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_2
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "I)V"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V

    :cond_0
    return-void
.end method

.method public visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 16

    .line 753
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 754
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 760
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitLookupSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[I[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "[I[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[I[Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitMaxs(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    .line 421
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    const/16 v0, 0x100

    .line 422
    :goto_0
    const/16 v1, 0xb9

    if-eq p1, v1, :cond_1

    :goto_1
    or-int v1, p1, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v0, v5

    .line 421
    goto :goto_0

    .line 422
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v2, 0xb9

    .line 442
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_4

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_4

    .line 443
    if-nez p5, :cond_1

    if-ne p1, v2, :cond_2

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "INVOKESPECIAL/STATIC on interfaces requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    if-ne p1, v2, :cond_0

    .line 446
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_3
    :goto_0
    return-void

    .line 449
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    and-int/lit16 v1, p1, -0x101

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 121
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5

    .line 222
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public varargs visitTableSwitchInsn(IILzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 690
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 696
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitTryCatchBlock(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 177
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_0
    return-void
.end method
