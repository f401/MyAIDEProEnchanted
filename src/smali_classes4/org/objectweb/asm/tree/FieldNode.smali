.class public Lorg/objectweb/asm/tree/FieldNode;
.super Lorg/objectweb/asm/FieldVisitor;


# static fields
.field static class$org$objectweb$asm$tree$FieldNode:Ljava/lang/Class;


# instance fields
.field public access:I

.field public attrs:Ljava/util/List;

.field public desc:Ljava/lang/String;

.field public invisibleAnnotations:Ljava/util/List;

.field public invisibleTypeAnnotations:Ljava/util/List;

.field public name:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public value:Ljava/lang/Object;

.field public visibleAnnotations:Ljava/util/List;

.field public visibleTypeAnnotations:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.tree.FieldNode"

    invoke-static {v0}, Lorg/objectweb/asm/tree/FieldNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/tree/FieldNode;->class$org$objectweb$asm$tree$FieldNode:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0, p1}, Lorg/objectweb/asm/FieldVisitor;-><init>(I)V

    iput p2, p0, Lorg/objectweb/asm/tree/FieldNode;->access:I

    iput-object p3, p0, Lorg/objectweb/asm/tree/FieldNode;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/objectweb/asm/tree/FieldNode;->desc:Ljava/lang/String;

    iput-object p5, p0, Lorg/objectweb/asm/tree/FieldNode;->signature:Ljava/lang/String;

    iput-object p6, p0, Lorg/objectweb/asm/tree/FieldNode;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 13

    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/FieldNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/FieldNode;->class$org$objectweb$asm$tree$FieldNode:Ljava/lang/Class;

    if-eq v0, v1, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_19
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget v1, p0, Lorg/objectweb/asm/tree/FieldNode;->access:I

    iget-object v2, p0, Lorg/objectweb/asm/tree/FieldNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/tree/FieldNode;->desc:Ljava/lang/String;

    iget-object v4, p0, Lorg/objectweb/asm/tree/FieldNode;->signature:Ljava/lang/String;

    iget-object v5, p0, Lorg/objectweb/asm/tree/FieldNode;->value:Ljava/lang/Object;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v3

    if-nez v3, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    if-nez v0, :cond_31

    move v1, v6

    :goto_19
    move v2, v6

    :goto_1a
    if-ge v2, v1, :cond_39

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v4, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    :cond_31
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_19

    :cond_39
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v0, :cond_56

    move v1, v6

    :goto_3e
    move v2, v6

    :goto_3f
    if-ge v2, v1, :cond_5e

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v4, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3f

    :cond_56
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_3e

    :cond_5e
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_7f

    move v1, v6

    :goto_63
    move v2, v6

    :goto_64
    if-ge v2, v1, :cond_87

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v7, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v7, v8}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_64

    :cond_7f
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_63

    :cond_87
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_a8

    move v1, v6

    :goto_8c
    move v2, v6

    :goto_8d
    if-ge v2, v1, :cond_b0

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v7, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v7, v6}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8d

    :cond_a8
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_8c

    :cond_b0
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_c7

    move v1, v6

    move v2, v6

    :goto_b6
    if-ge v1, v2, :cond_d0

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Attribute;

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    add-int/lit8 v6, v1, 0x1

    move v1, v6

    goto :goto_b6

    :cond_c7
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v6

    move v2, v0

    goto :goto_b6

    :cond_d0
    invoke-virtual {v3}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    goto/16 :goto_13
.end method

.method public check(I)V
    .registers 3

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_19

    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    :cond_24
    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    const/4 v2, 0x1

    new-instance v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_19

    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    :cond_24
    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method
