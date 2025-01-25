.class public final Labcd/Lp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Lp$a;
    }
.end annotation


# instance fields
.field private final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Labcd/Lp$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Labcd/Lp;->j6:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public j6(Labcd/Kp;)V
    .registers 3

    invoke-virtual {p1}, Labcd/Kp;->Hw()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vp;

    invoke-virtual {p0, v0}, Labcd/Lp;->j6(Labcd/vp;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final j6(Labcd/Lt;)V
    .registers 6

    iget-object v0, p0, Labcd/Lp;->j6:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    const-string v1, "\nstatistics:\n"

    invoke-interface {p1, v0, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Labcd/Lp;->j6:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Lp$a;

    invoke-static {v2}, Labcd/Lp$a;->j6(Labcd/Lp$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_32
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Lp$a;

    invoke-virtual {v1, p1}, Labcd/Lp$a;->j6(Labcd/Lt;)V

    goto :goto_3a

    :cond_4a
    return-void
.end method

.method public j6(Labcd/vp;)V
    .registers 5

    invoke-virtual {p1}, Labcd/vp;->Zo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Lp;->j6:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Lp$a;

    if-nez v1, :cond_19

    iget-object v1, p0, Labcd/Lp;->j6:Ljava/util/HashMap;

    new-instance v2, Labcd/Lp$a;

    invoke-direct {v2, p1, v0}, Labcd/Lp$a;-><init>(Labcd/vp;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_19
    invoke-virtual {v1, p1}, Labcd/Lp$a;->j6(Labcd/vp;)V

    :goto_1c
    return-void
.end method
