.class public Lorg/objectweb/asm/tree/MethodNode;
.super Lorg/objectweb/asm/MethodVisitor;


# static fields
.field static class$org$objectweb$asm$tree$MethodNode:Ljava/lang/Class;


# instance fields
.field public access:I

.field public annotationDefault:Ljava/lang/Object;

.field public attrs:Ljava/util/List;

.field public desc:Ljava/lang/String;

.field public exceptions:Ljava/util/List;

.field public instructions:Lorg/objectweb/asm/tree/InsnList;

.field public invisibleAnnotations:Ljava/util/List;

.field public invisibleLocalVariableAnnotations:Ljava/util/List;

.field public invisibleParameterAnnotations:[Ljava/util/List;

.field public invisibleTypeAnnotations:Ljava/util/List;

.field public localVariables:Ljava/util/List;

.field public maxLocals:I

.field public maxStack:I

.field public name:Ljava/lang/String;

.field public parameters:Ljava/util/List;

.field public signature:Ljava/lang/String;

.field public tryCatchBlocks:Ljava/util/List;

.field public visibleAnnotations:Ljava/util/List;

.field public visibleLocalVariableAnnotations:Ljava/util/List;

.field public visibleParameterAnnotations:[Ljava/util/List;

.field public visibleTypeAnnotations:Ljava/util/List;

.field private visited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.tree.MethodNode"

    invoke-static {v0}, Lorg/objectweb/asm/tree/MethodNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/tree/MethodNode;->class$org$objectweb$asm$tree$MethodNode:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/MethodNode;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/MethodNode;->class$org$objectweb$asm$tree$MethodNode:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    iput p2, p0, Lorg/objectweb/asm/tree/MethodNode;->access:I

    iput-object p3, p0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    iput-object p5, p0, Lorg/objectweb/asm/tree/MethodNode;->signature:Ljava/lang/String;

    if-nez p6, :cond_3f

    move v0, v1

    :goto_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/objectweb/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-nez v1, :cond_25

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-eqz p6, :cond_37

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_37
    new-instance v0, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    return-void

    :cond_3f
    array-length v0, p6

    goto :goto_f
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/MethodNode;->class$org$objectweb$asm$tree$MethodNode:Ljava/lang/Class;

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

.method private getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    array-length v0, p1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_1a

    aget-object v0, p1, v1

    instance-of v3, v0, Lorg/objectweb/asm/Label;

    if-eqz v3, :cond_14

    check-cast v0, Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    :cond_14
    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1a
    return-object v2
.end method

.method private getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;
    .registers 5

    array-length v0, p1

    new-array v1, v0, [Lorg/objectweb/asm/tree/LabelNode;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;)V
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget v1, p0, Lorg/objectweb/asm/tree/MethodNode;->access:I

    iget-object v2, p0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->signature:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/MethodNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :cond_1f
    return-void
.end method

.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    if-nez v0, :cond_1d

    move v1, v2

    :goto_7
    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_25

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/ParameterNode;

    iget-object v4, v0, Lorg/objectweb/asm/tree/ParameterNode;->name:Ljava/lang/String;

    iget v0, v0, Lorg/objectweb/asm/tree/ParameterNode;->access:I

    invoke-virtual {p1, v4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_1d
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_7

    :cond_25
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_38
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-nez v0, :cond_55

    move v1, v2

    :goto_3d
    move v3, v2

    :goto_3e
    if-ge v3, v1, :cond_5d

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v4, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v7}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3e

    :cond_55
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_3d

    :cond_5d
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v0, :cond_7a

    move v1, v2

    :goto_62
    move v3, v2

    :goto_63
    if-ge v3, v1, :cond_82

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v4, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_63

    :cond_7a
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_62

    :cond_82
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_a3

    move v1, v2

    :goto_87
    move v3, v2

    :goto_88
    if-ge v3, v1, :cond_ab

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_88

    :cond_a3
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_87

    :cond_ab
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_cc

    move v1, v2

    :goto_b0
    move v3, v2

    :goto_b1
    if-ge v3, v1, :cond_d4

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b1

    :cond_cc
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_b0

    :cond_d4
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v0, :cond_e6

    move v1, v2

    :goto_d9
    move v4, v2

    :goto_da
    if-ge v4, v1, :cond_105

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v5, v0, v4

    if-nez v5, :cond_eb

    :cond_e2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_da

    :cond_e6
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    array-length v0, v0

    move v1, v0

    goto :goto_d9

    :cond_eb
    move v3, v2

    :goto_ec
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_e2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v6, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v6, v7}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ec

    :cond_105
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v0, :cond_117

    move v1, v2

    :goto_10a
    move v4, v2

    :goto_10b
    if-ge v4, v1, :cond_136

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v5, v0, v4

    if-nez v5, :cond_11c

    :cond_113
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_10b

    :cond_117
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    array-length v0, v0

    move v1, v0

    goto :goto_10a

    :cond_11c
    move v3, v2

    :goto_11d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_113

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v6, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v6, v2}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_11d

    :cond_136
    iget-boolean v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visited:Z

    if-eqz v0, :cond_13f

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->resetLabels()V

    :cond_13f
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_156

    move v1, v2

    :goto_144
    move v3, v2

    :goto_145
    if-ge v3, v1, :cond_15e

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_145

    :cond_156
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_144

    :cond_15e
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-lez v0, :cond_1fe

    invoke-virtual {p1}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-nez v0, :cond_18b

    move v1, v2

    :goto_16e
    move v3, v2

    :goto_16f
    if-ge v3, v1, :cond_193

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->updateIndex(I)V

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16f

    :cond_18b
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_16e

    :cond_193
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    if-nez v0, :cond_1af

    move v1, v2

    :goto_19d
    move v3, v2

    :goto_19e
    if-ge v3, v1, :cond_1b7

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LocalVariableNode;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/LocalVariableNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_19e

    :cond_1af
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_19d

    :cond_1b7
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v0, :cond_1ce

    move v1, v2

    :goto_1bc
    move v3, v2

    :goto_1bd
    if-ge v3, v1, :cond_1d6

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v0, p1, v7}, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/objectweb/asm/MethodVisitor;Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1bd

    :cond_1ce
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1bc

    :cond_1d6
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v0, :cond_1ed

    move v1, v2

    :goto_1db
    move v3, v2

    :goto_1dc
    if-ge v3, v1, :cond_1f5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v0, p1, v2}, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/objectweb/asm/MethodVisitor;Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1dc

    :cond_1ed
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1db

    :cond_1f5
    iget v0, p0, Lorg/objectweb/asm/tree/MethodNode;->maxStack:I

    iget v1, p0, Lorg/objectweb/asm/tree/MethodNode;->maxLocals:I

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    iput-boolean v7, p0, Lorg/objectweb/asm/tree/MethodNode;->visited:Z

    :cond_1fe
    invoke-virtual {p1}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public check(I)V
    .registers 7

    const/4 v2, 0x0

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_de

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-nez v0, :cond_4b

    move v1, v2

    :goto_2e
    move v3, v2

    :goto_2f
    if-ge v3, v1, :cond_69

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object v4, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v4, :cond_53

    iget-object v4, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_53

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4b
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_2e

    :cond_53
    iget-object v4, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v4, :cond_65

    iget-object v0, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_65

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_65
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2f

    :cond_69
    move v3, v2

    :goto_6a
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-ge v3, v0, :cond_ba

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    iget-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_8a

    iget-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8a
    iget-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_9c

    iget-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9c
    instance-of v0, v1, Lorg/objectweb/asm/tree/MethodInsnNode;

    if-eqz v0, :cond_b6

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-boolean v4, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->itf:Z

    iget v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->opcode:I

    const/16 v1, 0xb9

    if-ne v0, v1, :cond_b4

    const/4 v0, 0x1

    :goto_ac
    if-eq v4, v0, :cond_b6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b4
    move v0, v2

    goto :goto_ac

    :cond_b6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6a

    :cond_ba
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_cc

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_cc
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_de

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_de
    return-void
.end method

.method protected getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;
    .registers 3

    iget-object v0, p1, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    instance-of v0, v0, Lorg/objectweb/asm/tree/LabelNode;

    if-nez v0, :cond_d

    new-instance v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/LabelNode;-><init>()V

    iput-object v0, p1, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    :cond_d
    iget-object v0, p1, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_19

    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    :cond_24
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    new-instance v1, Lorg/objectweb/asm/tree/MethodNode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/objectweb/asm/tree/MethodNode$1;-><init>(Lorg/objectweb/asm/tree/MethodNode;I)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitCode()V
    .registers 1

    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/FieldInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 13

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    if-nez p3, :cond_14

    move-object v3, v5

    :goto_6
    if-nez p5, :cond_19

    :goto_8
    new-instance v0, Lorg/objectweb/asm/tree/FrameNode;

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/FrameNode;-><init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void

    :cond_14
    invoke-direct {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    :cond_19
    invoke-direct {p0, p5}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_8
.end method

.method public visitIincInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/IincInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/IincInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitInsn(I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/InsnNode;

    invoke-direct {v1, p1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    :goto_7
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_7

    :cond_13
    new-instance v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_2b

    iget-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_25

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    :cond_25
    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    return-object v1

    :cond_2b
    iget-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_36

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    :cond_36
    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method public visitIntInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/IntInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/IntInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/LdcInsnNode;

    invoke-direct {v1, p1}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/LineNumberNode;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/objectweb/asm/tree/LineNumberNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 15

    iget-object v7, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    new-instance v0, Lorg/objectweb/asm/tree/LocalVariableNode;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    invoke-virtual {p0, p5}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 16

    const/4 v7, 0x1

    new-instance v0, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;

    invoke-direct {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {p0, p4}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    move v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/tree/LabelNode;[Lorg/objectweb/asm/tree/LabelNode;[ILjava/lang/String;)V

    if-eqz p7, :cond_25

    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v1, :cond_1f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    :cond_1f
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    return-object v0

    :cond_25
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    :cond_30
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;[I[Lorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitMaxs(II)V
    .registers 3

    iput p1, p0, Lorg/objectweb/asm/tree/MethodNode;->maxStack:I

    iput p2, p0, Lorg/objectweb/asm/tree/MethodNode;->maxLocals:I

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/tree/MethodNode;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/MethodInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    goto :goto_9
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    iget v0, p0, Lorg/objectweb/asm/tree/MethodNode;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    iget-object v6, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    goto :goto_9
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    new-instance v1, Lorg/objectweb/asm/tree/ParameterNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/ParameterNode;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    const/4 v3, 0x1

    new-instance v1, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v1, p2}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_30

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/List;

    check-cast v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v0, p1

    :cond_28
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    return-object v1

    :cond_30
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v0, :cond_41

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/List;

    check-cast v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    :cond_41
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_50

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v0, p1

    :cond_50
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 9

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {p0, p4}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/objectweb/asm/tree/TableSwitchInsnNode;-><init>(IILorg/objectweb/asm/tree/LabelNode;[Lorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    const v1, 0xffff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    new-instance v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_27

    iget-object v2, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_21

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    :cond_21
    iget-object v0, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_26
    return-object v1

    :cond_27
    iget-object v2, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_32

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    :cond_32
    iget-object v0, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    new-instance v1, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p4}, Lorg/objectweb/asm/tree/TryCatchBlockNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    const/4 v2, 0x1

    new-instance v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_19

    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    :cond_24
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/TypeInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/TypeInsnNode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/VarInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/VarInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method
