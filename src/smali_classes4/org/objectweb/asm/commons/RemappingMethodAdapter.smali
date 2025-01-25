.class public Lorg/objectweb/asm/commons/RemappingMethodAdapter;
.super Lorg/objectweb/asm/commons/LocalVariablesSorter;


# instance fields
.field protected final remapper:Lorg/objectweb/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/LocalVariablesSorter;-><init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    iput-object p5, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 11

    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/RemappingMethodAdapter;-><init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p2, p3, p4}, Lorg/objectweb/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p4}, Lorg/objectweb/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1d
    return-void
.end method

.method private remapEntries(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8

    const/4 v2, 0x0

    move v0, v2

    :goto_2
    if-ge v0, p1, :cond_27

    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_28

    new-array v1, p1, [Ljava/lang/Object;

    if-lez v0, :cond_2d

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    :goto_12
    aget-object v0, p2, v2

    add-int/lit8 v3, v2, 0x1

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_22

    iget-object v4, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_22
    aput-object v0, v1, v2

    if-lt v3, p1, :cond_2b

    move-object p2, v1

    :cond_27
    return-object p2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2b
    move v2, v3

    goto :goto_12

    :cond_2d
    move v2, v0

    goto :goto_12
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v0, v1

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_d
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    invoke-super {p0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v0, v1

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_7
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p2, p3, p4}, Lorg/objectweb/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v2, p4}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, p1, v0, v1, v2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 12

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapEntries(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p4, p5}, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapEntries(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v0, v1

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_d
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    aget-object v2, p4, v0

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/commons/Remapper;->mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Handle;

    invoke-super {p0, v1, v2, v0, p4}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 14

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lorg/objectweb/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 16

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p6}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p7

    invoke-super/range {v0 .. v7}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_15

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_14
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_18

    const/4 v5, 0x1

    :goto_f
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    goto :goto_f
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v0, v1

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_d
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v0, v1

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_d
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 6

    if-nez p4, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-super {p0, p1, p2, p3, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v0, v1

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_d
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method
