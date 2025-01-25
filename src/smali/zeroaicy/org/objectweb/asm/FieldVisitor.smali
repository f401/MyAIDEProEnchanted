.class public abstract Lzeroaicy/org/objectweb/asm/FieldVisitor;
.super Ljava/lang/Object;
.source "FieldVisitor.java"


# instance fields
.field protected final api:I

.field protected fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;


# direct methods
.method protected constructor <init>(I)V
    .registers 4

    .line 55
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lzeroaicy/org/objectweb/asm/FieldVisitor;

    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/FieldVisitor;-><init>(ILzeroaicy/org/objectweb/asm/FieldVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/FieldVisitor;)V
    .registers 5

    .line 66
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

    .line 74
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

    .line 77
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 79
    :cond_3a
    iput p1, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->api:I

    .line 80
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .registers 2

    .line 89
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    .line 101
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 104
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

    .line 137
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

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

    .line 147
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitEnd()V

    :cond_7
    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7

    .line 122
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_14

    .line 125
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    if-eqz v0, :cond_f

    .line 126
    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 128
    :cond_f
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1

    .line 123
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
