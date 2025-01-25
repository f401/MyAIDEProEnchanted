.class public Labcd/hK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/hK$a;,
        Labcd/hK$b;
    }
.end annotation


# direct methods
.method public static DW(Ljava/util/Collection;)Labcd/jK;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/jK;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Labcd/fK;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v0}, Labcd/hK;->j6([Labcd/fK;)Labcd/jK;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->atLeastOnePathIsRequired:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_38

    :goto_37
    throw p0

    :goto_38
    goto :goto_37
.end method

.method public static j6(Ljava/util/Collection;)Labcd/jK;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/fK;",
            ">;)",
            "Labcd/jK;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Labcd/fK;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v0}, Labcd/hK;->j6([Labcd/fK;)Labcd/jK;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->atLeastOnePathIsRequired:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j6([Labcd/fK;)Labcd/jK;
    .registers 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    new-instance v0, Labcd/hK$b;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0, v2}, Labcd/hK$b;-><init>(Labcd/fK;Labcd/hK$b;)V

    return-object v0

    :cond_e
    new-instance v0, Labcd/hK$a;

    invoke-direct {v0, p0, v2}, Labcd/hK$a;-><init>([Labcd/fK;Labcd/hK$a;)V

    return-object v0
.end method
