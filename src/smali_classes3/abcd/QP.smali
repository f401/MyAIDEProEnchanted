.class public Labcd/QP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/SP;


# instance fields
.field private j6:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Labcd/QP;->j6:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public j6(Labcd/RP;)Ljava/util/Collection;
    .registers 6

    if-nez p1, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/QP;->j6:Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Labcd/QP;->j6:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    return-object v0

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Labcd/RP;->j6(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method
