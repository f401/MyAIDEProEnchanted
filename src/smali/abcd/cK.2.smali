.class public abstract Labcd/cK;
.super Labcd/jK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/cK$a;,
        Labcd/cK$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/jK;-><init>()V

    return-void
.end method

.method public static j6(Labcd/jK;Labcd/jK;)Labcd/jK;
    .registers 3

    sget-object v0, Labcd/jK;->j6:Labcd/jK;

    if-ne p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/cK$a;

    invoke-direct {v0, p0, p1}, Labcd/cK$a;-><init>(Labcd/jK;Labcd/jK;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public static j6(Ljava/util/Collection;)Labcd/jK;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/jK;",
            ">;)",
            "Labcd/jK;"
        }
    .end annotation

    const/4 v2, 0x2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v1, v0, [Labcd/jK;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v0, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/cK$b;

    invoke-direct {v0, v1}, Labcd/cK$b;-><init>([Labcd/jK;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->atLeastTwoFiltersNeeded:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
