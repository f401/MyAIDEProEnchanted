.class public Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;
.super Lorg/objectweb/asm/AnnotationVisitor;


# instance fields
.field protected final remapper:Lorg/objectweb/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(ILorg/objectweb/asm/AnnotationVisitor;)V

    iput-object p3, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(ILorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lorg/objectweb/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 p0, 0x0

    :cond_f
    :goto_f
    return-object p0

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eq v1, v0, :cond_f

    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    move-object p0, v0

    goto :goto_f
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 p0, 0x0

    :cond_9
    :goto_9
    return-object p0

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eq v1, v0, :cond_9

    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    move-object p0, v0

    goto :goto_9
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
