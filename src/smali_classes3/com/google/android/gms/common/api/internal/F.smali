.class public final Lcom/google/android/gms/common/api/internal/F;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk<",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Labcd/Zx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZx<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Hw:I

.field private final j6:Labcd/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk<",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Z


# virtual methods
.method public final j6()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/F;->j6:Labcd/k;

    invoke-virtual {v0}, Labcd/k;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/F;->j6:Labcd/k;

    invoke-virtual {v0, p1, p2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/F;->DW:Labcd/k;

    invoke-virtual {v0, p1, p3}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/common/api/internal/F;->Hw:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/common/api/internal/F;->Hw:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->Zo()Z

    move-result p1

    if-nez p1, :cond_18

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/F;->v5:Z

    :cond_18
    iget p1, p0, Lcom/google/android/gms/common/api/internal/F;->Hw:I

    if-nez p1, :cond_34

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/F;->v5:Z

    if-eqz p1, :cond_2d

    new-instance p1, Lcom/google/android/gms/common/api/c;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/F;->j6:Labcd/k;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/c;-><init>(Labcd/k;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/F;->FH:Labcd/Zx;

    invoke-virtual {p2, p1}, Labcd/Zx;->j6(Ljava/lang/Exception;)V

    return-void

    :cond_2d
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/F;->FH:Labcd/Zx;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/F;->DW:Labcd/k;

    invoke-virtual {p1, p2}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    :cond_34
    return-void
.end method
