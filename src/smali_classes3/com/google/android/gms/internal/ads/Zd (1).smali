.class public final Lcom/google/android/gms/internal/ads/Zd;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private Hw:I

.field private final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Zd;->j6:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zd;->DW:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zd;->FH:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I

    const/16 p1, 0x1000

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zd;->v5:I

    return-void
.end method

.method private final j6()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Zd;->v5:I

    if-le v0, v1, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zd;->DW:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zd;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I

    array-length v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    goto :goto_1

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method


# virtual methods
.method public final j6([B)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_2e

    :try_start_3
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Zd;->v5:I

    if-le v0, v1, :cond_9

    goto :goto_2e

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zd;->DW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zd;->FH:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/Zd;->j6:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1b

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zd;->FH:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zd;->j6()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void
.end method

.method public final j6(I)[B
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zd;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zd;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    if-lt v2, p1, :cond_27

    iget p1, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I

    array-length v2, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zd;->Hw:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zd;->FH:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zd;->DW:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_2e

    monitor-exit p0

    return-object v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2a
    :try_start_2a
    new-array p1, p1, [B
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method
