.class public final Lcom/google/android/gms/internal/ads/xu;
.super Lcom/google/android/gms/internal/ads/st;

# interfaces
.implements Lcom/google/android/gms/internal/ads/yu;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/st<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/yu;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/xu;

.field private static final FH:Lcom/google/android/gms/internal/ads/yu;


# instance fields
.field private final Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/xu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xu;->DW:Lcom/google/android/gms/internal/ads/xu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/st;->Mr()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xu;->FH:Lcom/google/android/gms/internal/ads/yu;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/xu;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/xu;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/st;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    return-void
.end method

.method private static j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yt;->DW()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ju;->FH([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Hw(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a8()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/yu;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/google/android/gms/internal/ads/yu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/yu;->a8()Ljava/util/List;

    move-result-object p2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xu;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/xu;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/st;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_d
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v1, :cond_23

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->FH()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object v1

    :cond_23
    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ju;->FH([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ju;->DW([B)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/st;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic j3()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/st;->j3()Z

    move-result v0

    return v0
.end method

.method public final synthetic j6(I)Lcom/google/android/gms/internal/ads/ou;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xu;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/google/android/gms/internal/ads/xu;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/xu;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final lg()Lcom/google/android/gms/internal/ads/yu;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xu;->j3()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/Av;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Av;-><init>(Lcom/google/android/gms/internal/ads/yu;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xu;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/st;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/st;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/st;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xu;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
