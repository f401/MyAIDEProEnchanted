.class public abstract Lzeroaicy/org/objectweb/asm/ClassVisitor;
.super Ljava/lang/Object;
.source "ClassVisitor.java"


# instance fields
.field protected final api:I

.field protected cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;


# direct methods
.method protected constructor <init>(I)V
    .registers 4

    .line 58
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lzeroaicy/org/objectweb/asm/ClassVisitor;

    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V
    .registers 5

    .line 69
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

    .line 77
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

    .line 80
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 82
    :cond_3a
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

    if-ge v0, v1, :cond_14

    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-nez v0, :cond_c

    goto :goto_14

    .line 120
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Records requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_14
    :goto_14
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_21

    .line 123
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    .line 211
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_9

    .line 212
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 214
    :cond_9
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1
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

    if-eqz v0, :cond_7

    .line 250
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

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

    .line 394
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_7

    .line 395
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitEnd()V

    :cond_7
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .registers 12

    .line 355
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_e

    .line 356
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;

    move-result-object p1

    return-object p1

    .line 358
    :cond_e
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/FieldVisitor;

    return-object p1
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

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 12

    .line 383
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_e

    .line 384
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move-result-object p1

    return-object p1

    .line 386
    :cond_e
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/MethodVisitor;

    return-object p1
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;
    .registers 6

    .line 152
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x60000

    if-lt v0, v1, :cond_14

    .line 155
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_f

    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    move-result-object p1

    return-object p1

    .line 158
    :cond_f
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/ModuleVisitor;

    return-object p1

    .line 153
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Module requires ASM6"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-lt v0, v1, :cond_e

    .line 176
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 174
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestHost requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-lt v0, v1, :cond_e

    .line 267
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_d

    .line 268
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 265
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestMember requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_7

    .line 198
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
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

    if-lt v0, v1, :cond_e

    .line 283
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_d

    .line 284
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 281
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PermittedSubclasses requires ASM9"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;
    .registers 6

    .line 322
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x80000

    if-lt v0, v1, :cond_14

    .line 325
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_f

    .line 326
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    move-result-object p1

    return-object p1

    .line 328
    :cond_f
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    return-object p1

    .line 323
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Record requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 234
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_14

    .line 237
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    if-eqz v0, :cond_f

    .line 238
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 240
    :cond_f
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1

    .line 235
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "TypeAnnotation requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
