.class public Lcom/google/android/gms/internal/ads/xw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/fn;
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fn;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/internal/ads/Fm;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Lcom/google/android/gms/internal/ads/Gw;

.field private static final j6:Lcom/google/android/gms/internal/ads/Fm;


# instance fields
.field protected FH:Lcom/google/android/gms/internal/ads/fl;

.field protected Hw:Lcom/google/android/gms/internal/ads/Aw;

.field VH:J

.field Zo:J

.field gn:J

.field private u7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Fm;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Lcom/google/android/gms/internal/ads/Fm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/yw;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/yw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xw;->j6:Lcom/google/android/gms/internal/ads/Fm;

    const-class v0, Lcom/google/android/gms/internal/ads/xw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Gw;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/Gw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xw;->DW:Lcom/google/android/gms/internal/ads/Gw;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/xw;->Zo:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/xw;->VH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/xw;->gn:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->u7:Ljava/util/List;

    return-void
.end method

.method private final DW()Lcom/google/android/gms/internal/ads/Fm;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/xw;->j6:Lcom/google/android/gms/internal/ads/Fm;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/xw;->Zo:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/xw;->gn:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/xw;->Zo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Aw;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->FH:Lcom/google/android/gms/internal/ads/fl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    invoke-interface {v0, v2, p0}, Lcom/google/android/gms/internal/ads/fl;->j6(Lcom/google/android/gms/internal/ads/Aw;Lcom/google/android/gms/internal/ads/fn;)Lcom/google/android/gms/internal/ads/Fm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/xw;->Zo:J

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/xw;->j6:Lcom/google/android/gms/internal/ads/Fm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Aw;->close()V

    return-void
.end method

.method public hasNext()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;

    sget-object v3, Lcom/google/android/gms/internal/ads/xw;->j6:Lcom/google/android/gms/internal/ads/Fm;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xw;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Fm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/xw;->j6:Lcom/google/android/gms/internal/ads/Fm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;

    move v0, v1

    goto :goto_0
.end method

.method public final j6()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Fm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->v5:Lcom/google/android/gms/internal/ads/Fm;

    sget-object v1, Lcom/google/android/gms/internal/ads/xw;->j6:Lcom/google/android/gms/internal/ads/Fm;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/Ew;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xw;->u7:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/Ew;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->u7:Ljava/util/List;

    goto :goto_0
.end method

.method public j6(Lcom/google/android/gms/internal/ads/Aw;JLcom/google/android/gms/internal/ads/fl;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xw;->VH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xw;->Zo:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Aw;->j6(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xw;->gn:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xw;->FH:Lcom/google/android/gms/internal/ads/fl;

    return-void
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xw;->DW()Lcom/google/android/gms/internal/ads/Fm;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->u7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->u7:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Fm;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
