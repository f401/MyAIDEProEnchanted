.class public Lorg/objectweb/asm/commons/RemappingClassAdapter;
.super Lorg/objectweb/asm/ClassVisitor;


# instance fields
.field protected className:Ljava/lang/String;

.field protected final remapper:Lorg/objectweb/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    iput-object p3, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/commons/RemappingClassAdapter;-><init>(ILorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method protected createRemappingAnnotationAdapter(Lorg/objectweb/asm/AnnotationVisitor;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createRemappingFieldAdapter(Lorg/objectweb/asm/FieldVisitor;)Lorg/objectweb/asm/FieldVisitor;
    .registers 4

    new-instance v0, Lorg/objectweb/asm/commons/RemappingFieldAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/commons/RemappingFieldAdapter;-><init>(Lorg/objectweb/asm/FieldVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createRemappingMethodAdapter(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)Lorg/objectweb/asm/MethodVisitor;
    .registers 6

    new-instance v0, Lorg/objectweb/asm/commons/RemappingMethodAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/objectweb/asm/commons/RemappingMethodAdapter;-><init>(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14

    iput-object p3, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->className:Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lorg/objectweb/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p5}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-super/range {v0 .. v6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p6}, Lorg/objectweb/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/RemappingClassAdapter;->createRemappingAnnotationAdapter(Lorg/objectweb/asm/AnnotationVisitor;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 12

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lorg/objectweb/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Lorg/objectweb/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p5}, Lorg/objectweb/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/RemappingClassAdapter;->createRemappingFieldAdapter(Lorg/objectweb/asm/FieldVisitor;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v1, v0, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 13

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lorg/objectweb/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lorg/objectweb/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez p5, :cond_0

    move-object v5, v6

    :goto_0
    move-object v0, p0

    move v1, p1

    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-object v6

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p5}, Lorg/objectweb/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v3, v0}, Lorg/objectweb/asm/commons/RemappingClassAdapter;->createRemappingMethodAdapter(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v6

    goto :goto_1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    invoke-super {p0, v2, v1, v0}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p1, p2, p3}, Lorg/objectweb/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingClassAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/RemappingClassAdapter;->createRemappingAnnotationAdapter(Lorg/objectweb/asm/AnnotationVisitor;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method
