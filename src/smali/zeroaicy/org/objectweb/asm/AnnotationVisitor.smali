.class public abstract Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
.super Ljava/lang/Object;
.source "AnnotationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;


# direct methods
.method protected constructor <init>(I)V
    .registers 4

    .line 59
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;-><init>(ILzeroaicy/org/objectweb/asm/AnnotationVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/AnnotationVisitor;)V
    .registers 5

    .line 70
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

    .line 78
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

    .line 81
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 83
    :cond_3a
    iput p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->api:I

    .line 84
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 2

    .line 95
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
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

    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    .line 138
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 141
    :cond_9
    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 3

    .line 156
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_9

    .line 157
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    .line 159
    :cond_9
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_7

    .line 165
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_7
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 123
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->av:Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
