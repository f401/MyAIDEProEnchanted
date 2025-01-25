.class public Lio/github/zeroaicy/aide/CompileOnlyJar;
.super Ljava/lang/Object;
.source "CompileOnlyJar.java"


# static fields
.field public static FilterCompileOnlyJar:Ljava/lang/String; = "_compileonly.jar"


# direct methods
.method static final constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProguardJAVAibraryjars(Ljava/util/List;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_29

    .line 28
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_29

    .line 29
    :cond_9
    invoke-static {p1}, Lio/github/zeroaicy/aide/CompileOnlyJar;->getCompileOnlyJar([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 31
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 29
    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    const-string v1, "-libraryjars"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    :goto_29
    return-void
.end method

.method public static filterCompileOnlyJar(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 59
    :cond_3
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_42

    .line 59
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_28

    goto :goto_12

    .line 63
    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/github/zeroaicy/aide/CompileOnlyJar;->FilterCompileOnlyJar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_41

    goto :goto_12

    :catchall_41
    move-exception p0

    :goto_42
    return-void
.end method

.method public static filterCompileOnlyJar(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    :try_start_0
    sget-object v0, Lio/github/zeroaicy/aide/CompileOnlyJar;->FilterCompileOnlyJar:Ljava/lang/String;

    invoke-static {p0, v0}, Lio/github/zeroaicy/aide/CompileOnlyJar;->filterCompileOnlyJar(Ljava/util/List;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    :goto_7
    return-void
.end method

.method public static filterCompileOnlyJar(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-gez v0, :cond_9

    goto :goto_23

    .line 80
    :cond_9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_12

    goto :goto_1f

    .line 83
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 84
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_22

    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :catchall_22
    move-exception p0

    :goto_23
    return-void
.end method

.method public static filterCompileOnlyJar([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p0

    .line 21
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-static {v0}, Lio/github/zeroaicy/aide/CompileOnlyJar;->filterCompileOnlyJar(Ljava/util/List;)V

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getCompileOnlyJar([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    .line 43
    :goto_9
    array-length v2, p0

    if-lt v1, v2, :cond_d

    return-object v0

    .line 40
    :cond_d
    aget-object v2, p0, v1

    if-nez v2, :cond_12

    goto :goto_21

    .line 42
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/github/zeroaicy/aide/CompileOnlyJar;->FilterCompileOnlyJar:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method
