.class public abstract Lzeroaicy/org/objectweb/asm/ClassVisitor;
.super Ljava/lang/Object;
.source "ClassVisitor.java"


# instance fields
.field protected final api:I

.field protected cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 58
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V
    .registers 6

    const/high16 v1, 0x10a0000

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
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

    .line 77
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

    .line 79
    :cond_0
    if-ne p1, v1, :cond_1

    .line 80
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 82
    :cond_1
    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    .line 83
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lzeroaicy/org/objectweb/asm/ClassVisitor;
    .registers 2

    .line 92
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 119
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Records requires ASM8"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    .line 211
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 214
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

    .line 249
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

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

    .line 394
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .registers 12

    .line 355
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/FieldVisitor;

    goto :goto_0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 12

    .line 383
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/MethodVisitor;

    goto :goto_0
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;
    .registers 6

    .line 152
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x60000

    if-ge v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Module requires ASM6"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    goto :goto_0
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x70000

    if-ge v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "NestHost requires ASM7"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 264
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x70000

    if-ge v0, v1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "NestMember requires ASM7"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 280
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x90000

    if-ge v0, v1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PermittedSubclasses requires ASM9"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;
    .registers 6

    .line 322
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Record requires ASM8"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    goto :goto_0
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 234
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TypeAnnotation requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method
