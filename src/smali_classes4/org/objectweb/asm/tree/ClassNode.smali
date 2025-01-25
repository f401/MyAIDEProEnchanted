.class public Lorg/objectweb/asm/tree/ClassNode;
.super Lorg/objectweb/asm/ClassVisitor;


# static fields
.field static class$org$objectweb$asm$tree$ClassNode:Ljava/lang/Class;


# instance fields
.field public access:I

.field public attrs:Ljava/util/List;

.field public fields:Ljava/util/List;

.field public innerClasses:Ljava/util/List;

.field public interfaces:Ljava/util/List;

.field public invisibleAnnotations:Ljava/util/List;

.field public invisibleTypeAnnotations:Ljava/util/List;

.field public methods:Ljava/util/List;

.field public name:Ljava/lang/String;

.field public outerClass:Ljava/lang/String;

.field public outerMethod:Ljava/lang/String;

.field public outerMethodDesc:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public sourceDebug:Ljava/lang/String;

.field public sourceFile:Ljava/lang/String;

.field public superName:Ljava/lang/String;

.field public version:I

.field public visibleAnnotations:Ljava/util/List;

.field public visibleTypeAnnotations:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.tree.ClassNode"

    invoke-static {v0}, Lorg/objectweb/asm/tree/ClassNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/tree/ClassNode;->class$org$objectweb$asm$tree$ClassNode:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/ClassNode;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/ClassNode;->class$org$objectweb$asm$tree$ClassNode:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

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

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget v1, p0, Lorg/objectweb/asm/tree/ClassNode;->version:I

    iget v2, p0, Lorg/objectweb/asm/tree/ClassNode;->access:I

    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/objectweb/asm/tree/ClassNode;->signature:Ljava/lang/String;

    iget-object v5, p0, Lorg/objectweb/asm/tree/ClassNode;->superName:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceFile:Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    if-eqz v0, :cond_2c

    :cond_25
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceFile:Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->outerClass:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->outerClass:Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethod:Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    if-nez v0, :cond_56

    move v1, v7

    :goto_3e
    move v2, v7

    :goto_3f
    if-ge v2, v1, :cond_5e

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v3, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3, v8}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3f

    :cond_56
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_3e

    :cond_5e
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v0, :cond_7b

    move v1, v7

    :goto_63
    move v2, v7

    :goto_64
    if-ge v2, v1, :cond_83

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v3, v0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3, v7}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_64

    :cond_7b
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_63

    :cond_83
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_a4

    move v1, v7

    :goto_88
    move v2, v7

    :goto_89
    if-ge v2, v1, :cond_ac

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v3, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5, v8}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_89

    :cond_a4
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_88

    :cond_ac
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v0, :cond_cd

    move v1, v7

    :goto_b1
    move v2, v7

    :goto_b2
    if-ge v2, v1, :cond_d5

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v3, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v4, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v5, v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5, v7}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b2

    :cond_cd
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_b1

    :cond_d5
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_ec

    move v1, v7

    :goto_da
    move v2, v7

    :goto_db
    if-ge v2, v1, :cond_f4

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_db

    :cond_ec
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_da

    :cond_f4
    move v1, v7

    :goto_f5
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10c

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/InnerClassNode;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InnerClassNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f5

    :cond_10c
    move v1, v7

    :goto_10d
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_124

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/FieldNode;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/FieldNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10d

    :cond_124
    :goto_124
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_13a

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/MethodNode;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/MethodNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_124

    :cond_13a
    invoke-virtual {p1}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public check(I)V
    .registers 4

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_54

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/FieldNode;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/FieldNode;->check(I)V

    goto :goto_2e

    :cond_3e
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/MethodNode;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/MethodNode;->check(I)V

    goto :goto_44

    :cond_54
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    iput p1, p0, Lorg/objectweb/asm/tree/ClassNode;->version:I

    iput p2, p0, Lorg/objectweb/asm/tree/ClassNode;->access:I

    iput-object p3, p0, Lorg/objectweb/asm/tree/ClassNode;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/objectweb/asm/tree/ClassNode;->signature:Ljava/lang/String;

    iput-object p5, p0, Lorg/objectweb/asm/tree/ClassNode;->superName:Ljava/lang/String;

    if-eqz p6, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_19

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    :cond_24
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 12

    new-instance v0, Lorg/objectweb/asm/tree/FieldNode;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/FieldNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Lorg/objectweb/asm/tree/InnerClassNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/InnerClassNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 12

    new-instance v0, Lorg/objectweb/asm/tree/MethodNode;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/MethodNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->outerClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethod:Ljava/lang/String;

    iput-object p3, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceFile:Ljava/lang/String;

    iput-object p2, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    const/4 v2, 0x1

    new-instance v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_19

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    :cond_24
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method
