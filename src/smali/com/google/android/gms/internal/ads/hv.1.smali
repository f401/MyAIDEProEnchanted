.class final Lcom/google/android/gms/internal/ads/hv;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/xv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation
.end field

.field private static final FH:Lcom/google/android/gms/internal/ads/xv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation
.end field

.field private static final Hw:Lcom/google/android/gms/internal/ads/xv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/hv;->Hw()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/hv;->j6:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->j6(Z)Lcom/google/android/gms/internal/ads/xv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/hv;->DW:Lcom/google/android/gms/internal/ads/xv;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->j6(Z)Lcom/google/android/gms/internal/ads/xv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/hv;->FH:Lcom/google/android/gms/internal/ads/xv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hv;->Hw:Lcom/google/android/gms/internal/ads/xv;

    return-void
.end method

.method static DW(ILjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/yt;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v1

    mul-int/2addr v0, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method static DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ">;",
            "Lcom/google/android/gms/internal/ads/fv;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static DW(ILjava/util/List;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hv;->DW(Ljava/util/List;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static DW(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/Du;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Du;->v5(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Ot;->v5(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->v5(J)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static DW()Lcom/google/android/gms/internal/ads/xv;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/hv;->FH:Lcom/google/android/gms/internal/ads/xv;

    return-object v0
.end method

.method public static DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/yt;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Lcom/google/android/gms/internal/ads/fv;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)V

    :cond_0
    return-void
.end method

.method public static DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->J8(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static EQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->FH(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static FH(ILjava/util/List;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hv;->FH(Ljava/util/List;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static FH(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/Du;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Du;->v5(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Ot;->Zo(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->Zo(J)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static FH()Lcom/google/android/gms/internal/ads/xv;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/hv;->Hw:Lcom/google/android/gms/internal/ads/xv;

    return-object v0
.end method

.method public static FH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static Hw(ILjava/util/List;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hv;->Hw(Ljava/util/List;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static Hw(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/iu;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/iu;->v5(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->EQ(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(I)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static Hw()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Hw(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->we(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static J0(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->VH(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static J8(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->Zo(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static VH(ILjava/util/List;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hv;->VH(Ljava/util/List;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static VH(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/iu;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/iu;->v5(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->gn(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->gn(I)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static VH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->gn(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static Zo(ILjava/util/List;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hv;->Zo(Ljava/util/List;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static Zo(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/iu;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/iu;->v5(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static Zo(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->EQ(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static gn(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(II)I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method static gn(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static gn(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)I
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wu;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/wu;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(ILcom/google/android/gms/internal/ads/wu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ot;->DW(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto :goto_0
.end method

.method static j6(ILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v1

    mul-int/2addr v1, v3

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/yu;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/yu;

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/yu;->Hw(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :goto_3
    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_3
.end method

.method static j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/fv;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v1

    mul-int/2addr v1, v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/wu;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/wu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/wu;)I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static j6(ILjava/util/List;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/util/List;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static j6(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Du;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/Du;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Du;->v5(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Ot;->Hw(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->Hw(J)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/xv;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/hv;->DW:Lcom/google/android/gms/internal/ads/xv;

    return-object v0
.end method

.method private static j6(Z)Lcom/google/android/gms/internal/ads/xv;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/hv;->v5()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xv;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static j6(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/xv;->j6()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method static j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/mu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/mu;",
            "TUB;",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object p3

    :cond_0
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    move v3, v0

    move-object v2, p3

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/mu;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v3, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, v2, p4}, Lcom/google/android/gms/internal/ads/hv;->j6(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    goto :goto_2

    :cond_3
    if-eq v1, v4, :cond_4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_3
    move-object p3, v2

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/mu;->j6(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0, v0, p3, p4}, Lcom/google/android/gms/internal/ads/hv;->j6(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_7
    move-object v2, p3

    goto :goto_3
.end method

.method public static j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Lcom/google/android/gms/internal/ads/fv;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)V

    :cond_0
    return-void
.end method

.method public static j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->J0(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Ku;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Ku;",
            "TT;TT;J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ku;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Vt;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/gms/internal/ads/_t",
            "<TFT;>;>(",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<TFT;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->DW()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Vt;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Yt;)V

    :cond_0
    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/xv;->FH(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static j6(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/hv;->j6:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static j6(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static tp(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/Ot;->DW(IZ)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method static tp(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static tp(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->v5(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static u7(ILjava/util/List;Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(IJ)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method static u7(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static u7(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->u7(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static v5(ILjava/util/List;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hv;->v5(Ljava/util/List;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static v5(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/iu;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/iu;->v5(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->Zo(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->Zo(I)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static v5()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v5(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->Hw(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static we(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tv;->tp(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method
