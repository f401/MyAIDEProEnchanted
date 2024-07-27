.class public final Lorg/objectweb/asm/util/TraceFieldVisitor;
.super Lorg/objectweb/asm/FieldVisitor;


# instance fields
.field public final p:Lorg/objectweb/asm/util/Printer;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/FieldVisitor;Lorg/objectweb/asm/util/Printer;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/FieldVisitor;-><init>(ILorg/objectweb/asm/FieldVisitor;)V

    iput-object p2, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->p:Lorg/objectweb/asm/util/Printer;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/util/Printer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/util/TraceFieldVisitor;-><init>(Lorg/objectweb/asm/FieldVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/util/Printer;->visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/util/Printer;->visitFieldAttribute(Lorg/objectweb/asm/Attribute;)V

    invoke-super {p0, p1}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Printer;->visitFieldEnd()V

    invoke-super {p0}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->p:Lorg/objectweb/asm/util/Printer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitFieldTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/objectweb/asm/util/TraceAnnotationVisitor;

    invoke-direct {v2, v0, v1}, Lorg/objectweb/asm/util/TraceAnnotationVisitor;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/util/Printer;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/TraceFieldVisitor;->fv:Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method
