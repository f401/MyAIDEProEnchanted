.class Lorg/objectweb/asm/tree/analysis/Subroutine;
.super Ljava/lang/Object;


# instance fields
.field access:[Z

.field callers:Ljava/util/List;

.field start:Lorg/objectweb/asm/tree/LabelNode;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/objectweb/asm/tree/LabelNode;ILorg/objectweb/asm/tree/JumpInsnNode;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->start:Lorg/objectweb/asm/tree/LabelNode;

    new-array v0, p2, [Z

    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/objectweb/asm/tree/analysis/Subroutine;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lorg/objectweb/asm/tree/analysis/Subroutine;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/analysis/Subroutine;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->start:Lorg/objectweb/asm/tree/LabelNode;

    iput-object v1, v0, Lorg/objectweb/asm/tree/analysis/Subroutine;->start:Lorg/objectweb/asm/tree/LabelNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, v0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    iget-object v2, v0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    iget-object v3, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    return-object v0
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/Subroutine;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_4
    iget-object v4, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    array-length v4, v4

    if-ge v2, v4, :cond_1d

    iget-object v4, p1, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_1a

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->access:[Z

    aput-boolean v3, v0, v2

    move v0, v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lorg/objectweb/asm/tree/analysis/Subroutine;->start:Lorg/objectweb/asm/tree/LabelNode;

    iget-object v4, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->start:Lorg/objectweb/asm/tree/LabelNode;

    if-ne v2, v4, :cond_46

    move v2, v0

    :goto_24
    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v4, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_42
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_24

    :cond_46
    move v2, v0

    :cond_47
    return v2

    :cond_48
    move v0, v2

    goto :goto_42
.end method
