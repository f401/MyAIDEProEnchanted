.class public final Lorg/objectweb/asm/util/TraceMethodVisitor;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field public final p:Lorg/objectweb/asm/util/Printer;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/util/Printer;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    iput-object p2, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/util/Printer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/util/TraceMethodVisitor;-><init>(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Printer;->visitAnnotationDefault()Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/util/Printer;->visitMethodAttribute(Lorg/objectweb/asm/Attribute;)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitCode()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Printer;->visitCode()V

    invoke-super {p0}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    return-void
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Printer;->visitMethodEnd()V

    invoke-super {p0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 12

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/Printer;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitIincInsn(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitIincInsn(II)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public visitInsn(I)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/util/Printer;->visitInsn(I)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public visitIntInsn(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitIntInsn(II)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/util/Printer;->visitLabel(Lorg/objectweb/asm/Label;)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/util/Printer;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 14

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/util/Printer;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 17

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/objectweb/asm/util/Printer;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v8

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_13
    new-instance v1, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v1, v0, v8}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v1

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_13
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/util/Printer;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitMaxs(II)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    iget v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitParameter(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/util/Printer;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitMethodTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitTypeInsn(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceMethodVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitVarInsn(II)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method
