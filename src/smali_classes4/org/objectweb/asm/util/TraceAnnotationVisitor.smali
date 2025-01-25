.class public final Lorg/objectweb/asm/util/TraceAnnotationVisitor;
.super Lorg/objectweb/asm/AnnotationVisitor;


# instance fields
.field private final p:Lorg/objectweb/asm/util/Printer;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(ILorg/objectweb/asm/AnnotationVisitor;)V

    iput-object p2, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->p:Lorg/objectweb/asm/util/Printer;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/util/Printer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/util/Printer;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_b
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_b
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Printer;->visitAnnotationEnd()V

    invoke-super {p0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceAnnotationVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/util/Printer;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
