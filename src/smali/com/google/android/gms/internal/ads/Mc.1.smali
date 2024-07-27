.class final Lcom/google/android/gms/internal/ads/Mc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/zzwb;

.field private final FH:Ljava/lang/String;

.field private final Hw:I

.field private final j6:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/Nc;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->j6:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mc;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Mc;->FH:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/Mc;->Hw:I

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/Mc;)Lcom/google/android/gms/internal/ads/zzwb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Mc;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->FH:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Mc;->Hw:I

    return v0
.end method

.method final FH()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->j6:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method final Hw()Lcom/google/android/gms/internal/ads/zzwb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    return-object v0
.end method

.method final VH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mc;->v5:Z

    return-void
.end method

.method final Zo()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->j6:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Nc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Nc;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method final gn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mc;->v5:Z

    return v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/Nc;
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mc;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->j6:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Nc;

    return-object v0
.end method

.method final j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->FH:Ljava/lang/String;

    return-object v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/fc;Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/Nc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Nc;-><init>(Lcom/google/android/gms/internal/ads/Mc;Lcom/google/android/gms/internal/ads/fc;Lcom/google/android/gms/internal/ads/zzwb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mc;->j6:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/fc;)Z
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/Nc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Nc;-><init>(Lcom/google/android/gms/internal/ads/Mc;Lcom/google/android/gms/internal/ads/fc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mc;->j6:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Nc;->j6()Z

    move-result v0

    return v0
.end method

.method final v5()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mc;->j6:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Nc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Nc;->v5:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method
