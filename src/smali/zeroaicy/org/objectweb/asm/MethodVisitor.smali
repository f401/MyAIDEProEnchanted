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
    .registers 4

    .line 71
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lzeroaicy/org/objectweb/asm/MethodVisitor;

    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;-><init>(ILzeroaicy/org/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/MethodVisitor;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_35

    if-ne p1, v1, :cond_20

    goto :goto_35

    .line 90
    :cond_20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unsupported api "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_35
    :goto_35
    if-ne p1, v1, :cond_3a

    .line 93
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 95
    :cond_3a
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

    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    :cond_7
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    .line 153
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 156
    :cond_9
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 3

    .line 138
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 141
    :cond_9
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object v0
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

    if-eqz v0, :cond_7

    .line 235
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    :cond_7
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

    if-eqz v0, :cond_7

    .line 242
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitCode()V

    :cond_7
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

    if-eqz v0, :cond_7

    .line 796
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitEnd()V

    :cond_7
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

    if-eqz v0, :cond_7

    .line 403
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
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

    if-eqz v0, :cond_c

    .line 312
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_c
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

    if-eqz v0, :cond_7

    .line 574
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_7
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

    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_7
    return-void
.end method

.method public visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 641
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_14

    .line 644
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_f

    .line 645
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 647
    :cond_f
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1

    .line 642
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_7

    .line 356
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_7
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

    if-lt v0, v1, :cond_e

    .line 473
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_d

    .line 474
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V

    :cond_d
    return-void

    .line 471
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_7

    .line 490
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V

    :cond_7
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

    if-eqz v0, :cond_7

    .line 501
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_7
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

    if-ge v0, v1, :cond_22

    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Handle;

    if-nez v0, :cond_1a

    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Lzeroaicy/org/objectweb/asm/Type;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1a

    goto :goto_22

    .line 556
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This feature requires ASM5"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 558
    :cond_22
    :goto_22
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x70000

    if-ge v0, v1, :cond_35

    instance-of v0, p1, Lzeroaicy/org/objectweb/asm/ConstantDynamic;

    if-nez v0, :cond_2d

    goto :goto_35

    .line 559
    :cond_2d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This feature requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :cond_35
    :goto_35
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_3c

    .line 562
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_3c
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

    if-eqz v0, :cond_7

    .line 774
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V

    :cond_7
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

    if-eqz v0, :cond_d

    .line 721
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V

    :cond_d
    return-void
.end method

.method public visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 19

    .line 753
    move-object v0, p0

    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v2, 0x50000

    if-lt v1, v2, :cond_1f

    .line 756
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v3, :cond_1a

    .line 757
    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    return-object v1

    .line 760
    :cond_1a
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object v1

    .line 754
    :cond_1f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This feature requires ASM5"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
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

    if-eqz v0, :cond_7

    .line 604
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[I[Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_7
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

    if-eqz v0, :cond_7

    .line 786
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    :cond_7
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
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

    .line 421
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    const/16 v0, 0x100

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/16 v1, 0xb9

    if-eq p1, v1, :cond_11

    const/4 v8, 0x0

    goto :goto_13

    :cond_11
    const/4 v2, 0x1

    const/4 v8, 0x1

    .line 422
    :goto_13
    or-int v4, p1, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
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

    .line 442
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1f

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_1f

    const/16 v0, 0xb9

    if-nez p5, :cond_11

    if-eq p1, v0, :cond_17

    goto :goto_13

    :cond_11
    if-ne p1, v0, :cond_17

    .line 446
    :goto_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 444
    :cond_17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "INVOKESPECIAL/STATIC on interfaces requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 449
    :cond_1f
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_2c

    .line 450
    and-int/lit16 v1, p1, -0x101

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2c
    return-void
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

    if-eqz v0, :cond_7

    .line 616
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_7
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

    if-lt v0, v1, :cond_e

    .line 124
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_d

    .line 125
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    :cond_d
    return-void

    .line 122
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5

    .line 222
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    .line 223
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 225
    :cond_9
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1
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

    if-eqz v0, :cond_7

    .line 590
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_7
    return-void
.end method

.method public visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 690
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_14

    .line 693
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_f

    .line 694
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 696
    :cond_f
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1

    .line 691
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_7

    .line 669
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 177
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_14

    .line 180
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_f

    .line 181
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 183
    :cond_f
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1

    .line 178
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_7

    .line 386
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_7
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

    if-eqz v0, :cond_7

    .line 371
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_7
    return-void
.end method
