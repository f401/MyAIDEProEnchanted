.class Lorg/objectweb/asm/tree/analysis/SmallSet;
.super Ljava/util/AbstractSet;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field e1:Ljava/lang/Object;

.field e2:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    return-void
.end method

.method static final emptySet()Ljava/util/Set;
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lorg/objectweb/asm/tree/analysis/SmallSet;

    invoke-direct {v0, v1, v1}, Lorg/objectweb/asm/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lorg/objectweb/asm/tree/analysis/SmallSet;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method union(Lorg/objectweb/asm/tree/analysis/SmallSet;)Ljava/util/Set;
    .registers 5

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-eq v0, v1, :cond_18

    :cond_c
    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-ne v0, v1, :cond_19

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-ne v0, v1, :cond_19

    :cond_18
    :goto_18
    return-object p0

    :cond_19
    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-nez v0, :cond_23

    move-object p0, p1

    goto :goto_18

    :cond_23
    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-nez v0, :cond_42

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-nez v0, :cond_36

    new-instance v0, Lorg/objectweb/asm/tree/analysis/SmallSet;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v2, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_18

    :cond_36
    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-eq v0, v1, :cond_18

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-eq v0, v1, :cond_18

    :cond_42
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-nez v0, :cond_54

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-eq v0, v1, :cond_52

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-ne v0, v1, :cond_54

    :cond_52
    move-object p0, p1

    goto :goto_18

    :cond_54
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_68
    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-eqz v1, :cond_76

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_76
    move-object p0, v0

    goto :goto_18
.end method
