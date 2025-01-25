.class public Lorg/objectweb/asm/commons/RemappingFieldAdapter;
.super Lorg/objectweb/asm/FieldVisitor;


# instance fields
.field private final remapper:Lorg/objectweb/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/FieldVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/FieldVisitor;-><init>(ILorg/objectweb/asm/FieldVisitor;)V

    iput-object p3, p0, Lorg/objectweb/asm/commons/RemappingFieldAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/FieldVisitor;Lorg/objectweb/asm/commons/Remapper;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/commons/RemappingFieldAdapter;-><init>(ILorg/objectweb/asm/FieldVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingFieldAdapter;->fv:Lorg/objectweb/asm/FieldVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/commons/RemappingFieldAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingFieldAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_f
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/commons/RemappingFieldAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/commons/RemappingFieldAdapter;->remapper:Lorg/objectweb/asm/commons/Remapper;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/commons/RemappingAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    goto :goto_d
.end method
