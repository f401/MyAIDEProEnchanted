.class public abstract Lzeroaicy/org/objectweb/asm/FieldVisitor;
.super Ljava/lang/Object;
.source "FieldVisitor.java"


# instance fields
.field protected final api:I

.field protected fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    .line 55
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/FieldVisitor;

    invoke-direct {p0, p1, v1}, Lzeroaicy/org/objectweb/asm/FieldVisitor;-><init>(ILzeroaicy/org/objectweb/asm/FieldVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/FieldVisitor;)V
    .locals 3

    const/high16 v1, 0x10a0000

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-ne p1, v1, :cond_2

    .line 74
    :cond_0
    if-ne p1, v1, :cond_1

    .line 77
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 79
    :cond_1
    iput p1, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->api:I

    .line 80
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    return-void

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unsupported api "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDelegate()Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .locals 1

    .line 89
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 2

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute;",
            ")V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 3

    const/4 v1, 0x0

    .line 122
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->api:I

    const/high16 v2, 0x50000

    if-lt v0, v2, :cond_1

    .line 125
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
