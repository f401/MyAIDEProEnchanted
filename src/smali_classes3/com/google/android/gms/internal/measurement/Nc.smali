.class final Lcom/google/android/gms/internal/measurement/Nc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private DW:Z

.field private FH:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/android/gms/internal/measurement/Fc;

.field private j6:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/Fc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/Fc;Lcom/google/android/gms/internal/measurement/Gc;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/Nc;-><init>(Lcom/google/android/gms/internal/measurement/Fc;)V

    return-void
.end method

.method private final j6()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->FH:Ljava/util/Iterator;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Fc;->FH(Lcom/google/android/gms/internal/measurement/Fc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->FH:Ljava/util/Iterator;

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->FH:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/Fc;->DW(Lcom/google/android/gms/internal/measurement/Fc;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Fc;->FH(Lcom/google/android/gms/internal/measurement/Fc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Nc;->j6()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->DW:Z

    iget v1, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Fc;->DW(Lcom/google/android/gms/internal/measurement/Fc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Fc;->DW(Lcom/google/android/gms/internal/measurement/Fc;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_20
    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_23
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Nc;->j6()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_20
.end method

.method public final remove()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->DW:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->DW:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Fc;->j6(Lcom/google/android/gms/internal/measurement/Fc;)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/Fc;->DW(Lcom/google/android/gms/internal/measurement/Fc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Nc;->Hw:Lcom/google/android/gms/internal/measurement/Fc;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/Nc;->j6:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/Fc;->j6(Lcom/google/android/gms/internal/measurement/Fc;I)Ljava/lang/Object;

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Nc;->j6()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
