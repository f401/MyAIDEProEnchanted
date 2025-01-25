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

    if-ne p0, v0, :cond_5

    return-object p1

    :cond_5
    if-ne p1, v0, :cond_8

    return-object p0

    :cond_8
    new-instance v0, Labcd/cK$a;

    invoke-direct {v0, p0, p1}, Labcd/cK$a;-><init>(Labcd/jK;Labcd/jK;)V

    return-object v0
.end method

.method public static j6(Ljava/util/Collection;)Labcd/jK;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/jK;",
            ">;)",
            "Labcd/jK;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_23

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Labcd/jK;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    const/4 p0, 0x0

    aget-object p0, v2, p0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {p0, v0}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object p0

    return-object p0

    :cond_1d
    new-instance p0, Labcd/cK$b;

    invoke-direct {p0, v2}, Labcd/cK$b;-><init>([Labcd/jK;)V

    return-object p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->atLeastTwoFiltersNeeded:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
