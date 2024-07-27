.class public abstract Landroid/support/v4/app/B;
.super Landroid/support/v4/view/o;


# instance fields
.field private final FH:Landroid/support/v4/app/r;

.field private Hw:Landroid/support/v4/app/D;

.field private VH:Landroid/support/v4/app/Fragment;

.field private Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/r;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p3, Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    if-eq p3, v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->VH(Z)V

    iget-object v0, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->gn(Z)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->VH(Z)V

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->gn(Z)V

    :cond_1
    iput-object p3, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    :cond_2
    return-void
.end method

.method public FH()Landroid/os/Parcelable;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/Fragment$SavedState;

    iget-object v2, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_0
    const/4 v2, 0x0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->yS()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v4, v1, v3, v0}, Landroid/support/v4/app/r;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_1
    move-object v0, v1

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public abstract FH(I)Landroid/support/v4/app/Fragment;
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v4/app/B;->FH(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->j6(Landroid/support/v4/app/Fragment$SavedState;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->VH(Z)V

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->gn(Z)V

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/D;->j6(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    move-object v0, v1

    goto :goto_0
.end method

.method public j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 9

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_0

    move v1, v2

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    iget-object v4, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    aget-object v0, v3, v1

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v4, p1, v0}, Landroid/support/v4/app/r;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v2}, Landroid/support/v4/app/Fragment;->VH(Z)V

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad fragment at key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FragmentStatePagerAdapt"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/D;->FH()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    :cond_0
    return-void
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    const/4 v1, 0x0

    check-cast p3, Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->yS()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/r;->j6(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/D;->FH(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public j6(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
