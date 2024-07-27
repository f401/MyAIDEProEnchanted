.class final Lcom/google/android/gms/internal/measurement/nb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/od;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/measurement/lb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/lb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/lb;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/lb;->FH:Lcom/google/android/gms/internal/measurement/nb;

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/measurement/lb;)Lcom/google/android/gms/internal/measurement/nb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb;->FH:Lcom/google/android/gms/internal/measurement/nb;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/nb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/nb;-><init>(Lcom/google/android/gms/internal/measurement/lb;)V

    goto :goto_0
.end method


# virtual methods
.method public final DW(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    return-void
.end method

.method public final DW(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->v5(II)V

    return-void
.end method

.method public final DW(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->FH(IJ)V

    return-void
.end method

.method public final DW(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    check-cast p2, Lcom/google/android/gms/internal/measurement/lc;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/lb;->FH:Lcom/google/android/gms/internal/measurement/nb;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    return-void
.end method

.method public final DW(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/Wb;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/Wb;

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/Wb;->FH(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    check-cast v1, Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILcom/google/android/gms/internal/measurement/Wa;)V

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final DW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/Cc;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/nb;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Cc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final DW(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->Hw(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->j6(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->j6(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final EQ(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->VH(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->FH(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->FH(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final FH(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->DW(II)V

    return-void
.end method

.method public final FH(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->DW(IJ)V

    return-void
.end method

.method public final FH(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->u7(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->Hw(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->v5(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final Hw(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->FH(II)V

    return-void
.end method

.method public final Hw(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->j6(IJ)V

    return-void
.end method

.method public final Hw(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->Zo(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->DW(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->DW(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final J0(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->DW(D)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->j6(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->j6(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final J8(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->DW(F)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final VH(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->EQ(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->DW(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final Zo(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->DW(II)V

    return-void
.end method

.method public final Zo(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->DW(Z)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final gn(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->gn(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->FH(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->FH(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final j6()I
    .registers 2

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->we:I

    return v0
.end method

.method public final j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    return-void
.end method

.method public final j6(ID)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->j6(ID)V

    return-void
.end method

.method public final j6(IF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->j6(IF)V

    return-void
.end method

.method public final j6(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->Hw(II)V

    return-void
.end method

.method public final j6(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->FH(IJ)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/measurement/Wa;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILcom/google/android/gms/internal/measurement/Wa;)V

    return-void
.end method

.method public final j6(ILjava/lang/Object;)V
    .registers 4

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/Wa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    check-cast p2, Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->DW(ILcom/google/android/gms/internal/measurement/Wa;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    check-cast p2, Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->DW(ILcom/google/android/gms/internal/measurement/lc;)V

    goto :goto_0
.end method

.method public final j6(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    check-cast p2, Lcom/google/android/gms/internal/measurement/lc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)V

    return-void
.end method

.method public final j6(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILjava/lang/String;)V

    return-void
.end method

.method public final j6(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/Wa;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILcom/google/android/gms/internal/measurement/Wa;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j6(ILjava/util/List;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/Cc;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/nb;->DW(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Cc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j6(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->Zo(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->DW(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final j6(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->j6(IZ)V

    return-void
.end method

.method public final tp(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->tp(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->Hw(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->v5(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final u7(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->FH(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final v5(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->v5(II)V

    return-void
.end method

.method public final v5(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->j6(IJ)V

    return-void
.end method

.method public final v5(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->gn(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/lb;->FH(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->Hw(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final we(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/lb;->j6(II)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->j6(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/nb;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lb;->j6(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
