.class final Lcom/google/android/gms/internal/ads/Fw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ew;

.field private j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ew;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fw;->DW:Lcom/google/android/gms/internal/ads/Ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Fw;->j6:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Fw;->j6:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fw;->DW:Lcom/google/android/gms/internal/ads/Ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ew;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fw;->DW:Lcom/google/android/gms/internal/ads/Ew;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ew;->FH:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Fw;->j6:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fw;->DW:Lcom/google/android/gms/internal/ads/Ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ew;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fw;->DW:Lcom/google/android/gms/internal/ads/Ew;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ew;->DW:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Fw;->j6:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Fw;->j6:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fw;->DW:Lcom/google/android/gms/internal/ads/Ew;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ew;->DW:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ew;->FH:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
