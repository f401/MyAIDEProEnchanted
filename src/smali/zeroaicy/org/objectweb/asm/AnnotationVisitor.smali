.class public abstract Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
.super Ljava/lang/Object;
.source "AnnotationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    .line 59
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    invoke-direct {p0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;-><init>(ILzeroaicy/org/objectweb/asm/AnnotationVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/AnnotationVisitor;)V
    .locals 3

    const/high16 v1, 0x10a0000

    .line 70
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

    .line 78
    :cond_0
    if-ne p1, v1, :cond_1

    .line 81
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 83
    :cond_1
    iput p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->api:I

    .line 84
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-void

    .line 78
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
.method public getDelegate()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 95
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 2

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 2

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    .line 159
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method

.method public visitEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
