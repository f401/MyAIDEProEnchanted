.class public Lorg/objectweb/asm/tree/TryCatchBlockNode;
.super Ljava/lang/Object;


# instance fields
.field public end:Lorg/objectweb/asm/tree/LabelNode;

.field public handler:Lorg/objectweb/asm/tree/LabelNode;

.field public invisibleTypeAnnotations:Ljava/util/List;

.field public start:Lorg/objectweb/asm/tree/LabelNode;

.field public type:Ljava/lang/String;

.field public visibleTypeAnnotations:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    iput-object p2, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    iput-object p3, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    iput-object p4, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v3

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    if-nez v0, :cond_39

    const/4 v0, 0x0

    :goto_12
    iget-object v4, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v0, v4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_40

    move v1, v2

    :goto_1c
    move v3, v2

    :goto_1d
    if-ge v3, v1, :cond_48

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :cond_39
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v0

    goto :goto_12

    :cond_40
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1c

    :cond_48
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_69

    move v1, v2

    :goto_4d
    move v3, v2

    :goto_4e
    if-ge v3, v1, :cond_71

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4e

    :cond_69
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_4d

    :cond_71
    return-void
.end method

.method public updateIndex(I)V
    .registers 5

    shl-int/lit8 v0, p1, 0x8

    const/high16 v1, 0x42000000  # 32.0f

    or-int/2addr v1, v0

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iput v1, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    goto :goto_f

    :cond_1e
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iput v1, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    goto :goto_28

    :cond_37
    return-void
.end method
