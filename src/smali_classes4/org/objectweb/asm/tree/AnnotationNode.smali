.class public Lorg/objectweb/asm/tree/AnnotationNode;
.super Lorg/objectweb/asm/AnnotationVisitor;


# static fields
.field static class$org$objectweb$asm$tree$AnnotationNode:Ljava/lang/Class;


# instance fields
.field public desc:Ljava/lang/String;

.field public values:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.tree.AnnotationNode"

    invoke-static {v0}, Lorg/objectweb/asm/tree/AnnotationNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/tree/AnnotationNode;->class$org$objectweb$asm$tree$AnnotationNode:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    iput-object p2, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/AnnotationNode;->class$org$objectweb$asm$tree$AnnotationNode:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 3

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    return-void
.end method

.method static accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    instance-of v1, p2, [Ljava/lang/String;

    if-eqz v1, :cond_12

    check-cast p2, [Ljava/lang/String;

    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    instance-of v1, p2, Lorg/objectweb/asm/tree/AnnotationNode;

    if-eqz v1, :cond_22

    check-cast p2, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v0, p2, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    goto :goto_11

    :cond_22
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_43

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    if-eqz v1, :cond_11

    check-cast p2, Ljava/util/List;

    :goto_2e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3f

    const/4 v2, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3f
    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    goto :goto_11

    :cond_43
    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11
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
.method public accept(Lorg/objectweb/asm/AnnotationVisitor;)V
    .registers 6

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_8

    :cond_27
    invoke-virtual {p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_2a
    return-void
.end method

.method public check(I)V
    .registers 2

    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1f
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_29

    const/4 v0, 0x2

    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v1, v0}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_29
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_28

    move v0, v1

    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_28
    move v0, v2

    goto :goto_b
.end method
