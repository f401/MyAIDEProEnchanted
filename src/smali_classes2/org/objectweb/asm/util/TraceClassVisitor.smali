.class public final Lorg/objectweb/asm/util/TraceClassVisitor;
.super Lorg/objectweb/asm/ClassVisitor;


# instance fields
.field public final p:Lorg/objectweb/asm/util/Printer;

.field private final pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/util/TraceClassVisitor;-><init>(Lorg/objectweb/asm/ClassVisitor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassVisitor;Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Lorg/objectweb/asm/util/Textifier;

    invoke-direct {v0}, Lorg/objectweb/asm/util/Textifier;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/objectweb/asm/util/TraceClassVisitor;-><init>(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/util/Printer;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/util/Printer;Ljava/io/PrintWriter;)V
    .registers 5

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    iput-object p3, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->pw:Ljava/io/PrintWriter;

    iput-object p2, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/util/Printer;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/util/Printer;->visitClassAttribute(Lorg/objectweb/asm/Attribute;)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Printer;->visitClassEnd()V

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->pw:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    iget-object v1, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/util/Printer;->print(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    invoke-super {p0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 13

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/Printer;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/Printer;

    move-result-object v6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/objectweb/asm/util/TraceFieldVisitor;

    invoke-direct {v1, v0, v6}, Lorg/objectweb/asm/util/TraceFieldVisitor;-><init>(Lorg/objectweb/asm/FieldVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 13

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/Printer;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;

    move-result-object v6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/objectweb/asm/util/TraceMethodVisitor;

    invoke-direct {v1, v0, v6}, Lorg/objectweb/asm/util/TraceMethodVisitor;-><init>(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/util/Printer;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitClassTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceClassVisitor;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method
