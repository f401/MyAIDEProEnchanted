.class public final Lcom/google/android/gms/internal/ads/dF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:I

.field private EQ:I

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/rF;

.field private J0:I

.field private J8:Ljava/lang/String;

.field private QX:Ljava/lang/String;

.field private VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ws:Ljava/lang/String;

.field private final Zo:Ljava/lang/Object;

.field private gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:I

.field private tp:I

.field private u7:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/pF;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/internal/ads/AF;

.field private we:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->VH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->gn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->u7:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dF;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dF;->EQ:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dF;->we:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->J8:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Ws:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->QX:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/ads/dF;->j6:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/dF;->DW:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/dF;->FH:I

    new-instance p1, Lcom/google/android/gms/internal/ads/rF;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/rF;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dF;->Hw:Lcom/google/android/gms/internal/ads/rF;

    new-instance p1, Lcom/google/android/gms/internal/ads/AF;

    invoke-direct {p1, p5, p6, p7}, Lcom/google/android/gms/internal/ads/AF;-><init>(III)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dF;->v5:Lcom/google/android/gms/internal/ads/AF;

    return-void
.end method

.method private final FH(Ljava/lang/String;ZFFFF)V
    .registers 14

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->FH:I

    if-ge v0, v1, :cond_b

    goto :goto_3f

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->VH:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->tp:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dF;->tp:I

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dF;->gn:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dF;->u7:Ljava/util/ArrayList;

    new-instance p2, Lcom/google/android/gms/internal/ads/pF;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/pF;-><init>(FFFFI)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3c

    throw p1

    :cond_3f
    :goto_3f
    return-void
.end method

.method private static j6(Ljava/util/ArrayList;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_14
    const/16 v3, 0x64

    if-ge v2, v0, :cond_2e

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_14

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_42

    return-object p0

    :cond_42
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;ZFFFF)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/dF;->FH(Ljava/lang/String;ZFFFF)V

    return-void
.end method

.method public final DW()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->we:I

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->J8:Ljava/lang/String;

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Ws:Ljava/lang/String;

    return-object v0
.end method

.method public final VH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->we:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dF;->we:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final Zo()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->J0:I

    add-int/lit8 v1, v1, -0x64

    iput v1, p0, Lcom/google/android/gms/internal/ads/dF;->J0:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dF;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/dF;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dF;->J8:Ljava/lang/String;

    if-eqz p1, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dF;->J8:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    return v0

    :cond_19
    return v1
.end method

.method public final gn()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->we:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dF;->we:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->J8:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/dF;->J0:I

    return v0
.end method

.method public final j6(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/dF;->EQ:I

    return-void
.end method

.method public final j6(Ljava/lang/String;ZFFFF)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/dF;->FH(Ljava/lang/String;ZFFFF)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget p2, p0, Lcom/google/android/gms/internal/ads/dF;->we:I

    if-gez p2, :cond_f

    const-string p2, "ActivityContent: negative number of WebViews."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dF;->u7()V

    monitor-exit p1

    return-void

    :catchall_14
    move-exception p2

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 12

    iget v0, p0, Lcom/google/android/gms/internal/ads/dF;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->J0:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dF;->tp:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dF;->VH:Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/dF;->j6(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dF;->gn:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/dF;->j6(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dF;->J8:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dF;->Ws:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dF;->QX:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0xa5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "ActivityContent fetchId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " score:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " total_length:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n text: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableText"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n signture: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableSignture: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableSignatureForVertical: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final tp()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/dF;->tp:I

    return v0
.end method

.method public final u7()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/dF;->tp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dF;->EQ:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dF;->j6:I

    mul-int v1, v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/dF;->DW:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/dF;->J0:I

    if-le v1, v2, :cond_52

    iput v1, p0, Lcom/google/android/gms/internal/ads/dF;->J0:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hk;->v5()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->Hw:Lcom/google/android/gms/internal/ads/rF;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dF;->VH:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rF;->j6(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->J8:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->Hw:Lcom/google/android/gms/internal/ads/rF;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dF;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rF;->j6(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->Ws:Ljava/lang/String;

    :cond_38
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hk;->FH()Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->v5:Lcom/google/android/gms/internal/ads/AF;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dF;->gn:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dF;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/AF;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dF;->QX:Ljava/lang/String;

    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public final v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dF;->QX:Ljava/lang/String;

    return-object v0
.end method
