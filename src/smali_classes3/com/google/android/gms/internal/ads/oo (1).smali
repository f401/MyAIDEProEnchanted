.class public final Lcom/google/android/gms/internal/ads/oo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/ads/mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/mo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oo;->j6:Ljava/util/List;

    return-void
.end method

.method static DW(Lcom/google/android/gms/internal/ads/Dn;)Lcom/google/android/gms/internal/ads/mo;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oo;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/mo;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/mo;->Hw:Lcom/google/android/gms/internal/ads/Dn;

    if-ne v2, p0, :cond_8

    return-object v1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Dn;)Z
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oo;->DW(Lcom/google/android/gms/internal/ads/Dn;)Lcom/google/android/gms/internal/ads/mo;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/mo;->v5:Lcom/google/android/gms/internal/ads/po;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/po;->DW()V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/mo;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oo;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/ads/mo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oo;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j6()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oo;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mo;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oo;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
