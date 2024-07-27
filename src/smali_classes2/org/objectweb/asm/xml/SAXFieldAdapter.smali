.class public final Lorg/objectweb/asm/xml/SAXFieldAdapter;
.super Lorg/objectweb/asm/FieldVisitor;


# instance fields
.field sa:Lorg/objectweb/asm/xml/SAXAdapter;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/xml/SAXAdapter;Lorg/xml/sax/Attributes;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/FieldVisitor;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/xml/SAXFieldAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v0, "field"

    invoke-virtual {p1, v0, p2}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXFieldAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "annotation"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public visitEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXFieldAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "field"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 13

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXFieldAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "typeAnnotation"

    const/4 v4, 0x0

    move-object v5, p3

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/objectweb/asm/TypePath;)V

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method
