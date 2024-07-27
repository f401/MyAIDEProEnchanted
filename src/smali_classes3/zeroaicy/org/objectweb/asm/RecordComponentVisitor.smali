.class public abstract Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;
.super Ljava/lang/Object;
.source "RecordComponentVisitor.java"


# instance fields
.field protected final api:I

.field protected delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 57
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;-><init>(ILzeroaicy/org/objectweb/asm/RecordComponentVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILzeroaicy/org/objectweb/asm/RecordComponentVisitor;)V
    .registers 6

    const/high16 v1, 0x10a0000

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
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

    .line 76
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

    .line 78
    :cond_0
    if-ne p1, v1, :cond_1

    .line 79
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 81
    :cond_1
    iput p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->api:I

    .line 82
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;
    .registers 2

    .line 92
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    .line 104
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 107
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

    .line 139
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V

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

    .line 149
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6

    .line 127
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;

    goto :goto_0
.end method
