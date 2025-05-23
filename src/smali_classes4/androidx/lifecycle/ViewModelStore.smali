.class public Landroidx/lifecycle/ViewModelStore;
.super Ljava/lang/Object;


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModel;->clear()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method final get(Ljava/lang/String;)Landroidx/lifecycle/ViewModel;
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    return-object v0
.end method

.method keys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method final put(Ljava/lang/String;Landroidx/lifecycle/ViewModel;)V
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    :cond_d
    return-void
.end method
