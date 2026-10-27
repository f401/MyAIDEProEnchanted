.class public final Lcom/google/android/gms/common/api/internal/F;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk",
            "<",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Labcd/Zx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZx",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Hw:I

.field private final j6:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk",
            "<",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Z


# virtual methods
.method public final j6()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/F;->j6:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/F;->j6:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/F;->DW:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/common/api/internal/F;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/F;->Hw:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->Zo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/F;->v5:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/F;->Hw:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/F;->v5:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/F;->j6:Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroidx/collection/ArrayMap;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/F;->FH:Labcd/Zx;

    invoke-virtual {v1, v0}, Labcd/Zx;->j6(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/F;->FH:Labcd/Zx;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/F;->DW:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    goto :goto_0
.end method
