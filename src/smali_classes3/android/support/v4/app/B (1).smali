.class public abstract Landroid/support/v4/app/B;
.super Landroid/support/v4/view/o;


# instance fields
.field private final FH:Landroid/support/v4/app/r;

.field private Hw:Landroid/support/v4/app/D;

.field private VH:Landroid/support/v4/app/Fragment;

.field private Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/r;)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/ViewGroup;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    return-void

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ViewPager with adapter "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " requires a view id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/support/v4/app/Fragment;

    iget-object p1, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    if-eq p3, p1, :cond_1c

    if-eqz p1, :cond_11

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->VH(Z)V

    iget-object p1, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->gn(Z)V

    :cond_11
    if-eqz p3, :cond_1a

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->VH(Z)V

    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->gn(Z)V

    :cond_1a
    iput-object p3, p0, Landroid/support/v4/app/B;->VH:Landroid/support/v4/app/Fragment;

    :cond_1c
    return-void
.end method

.method public FH()Landroid/os/Parcelable;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20

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

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const/4 v1, 0x0

    :goto_22
    iget-object v2, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    iget-object v2, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->yS()Z

    move-result v3

    if-eqz v3, :cond_57

    if-nez v0, :cond_41

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v4, v0, v3, v2}, Landroid/support/v4/app/r;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_5a
    return-object v0
.end method

.method public abstract FH(I)Landroid/support/v4/app/Fragment;
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    :cond_1f
    invoke-virtual {p0, p2}, Landroid/support/v4/app/B;->FH(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_38

    iget-object v1, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment$SavedState;

    if-eqz v1, :cond_38

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->j6(Landroid/support/v4/app/Fragment$SavedState;)V

    :cond_38
    :goto_38
    iget-object v1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_47

    iget-object v1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->VH(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->gn(Z)V

    iget-object v1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/D;->j6(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    return-object v0
.end method

.method public j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 8

    if-eqz p1, :cond_86

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "states"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    const/4 v1, 0x0

    :goto_1b
    array-length v2, p2

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    aget-object v3, p2, v1

    check-cast v3, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_32
    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v3, p1, v1}, Landroid/support/v4/app/r;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_6f

    :goto_57
    iget-object v1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_66

    iget-object v1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_66
    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->VH(Z)V

    iget-object v1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad fragment at key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentStatePagerAdapt"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_86
    return-void
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 2

    iget-object p1, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v4/app/D;->FH()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    :cond_a
    return-void
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    check-cast p3, Landroid/support/v4/app/Fragment;

    iget-object p1, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    if-nez p1, :cond_e

    iget-object p1, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {p1}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    :cond_e
    :goto_e
    iget-object p1, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1d

    iget-object p1, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    iget-object p1, p0, Landroid/support/v4/app/B;->v5:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->yS()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/support/v4/app/B;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/r;->j6(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    move-object v1, v0

    :goto_2d
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroid/support/v4/app/B;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroid/support/v4/app/B;->Hw:Landroid/support/v4/app/D;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/D;->FH(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    return-void
.end method

.method public j6(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
