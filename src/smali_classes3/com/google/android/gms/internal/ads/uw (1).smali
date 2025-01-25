.class public abstract Lcom/google/android/gms/internal/ads/uw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Fm;


# static fields
.field private static j6:Lcom/google/android/gms/internal/ads/Gw;


# instance fields
.field private DW:Ljava/lang/String;

.field private EQ:Ljava/nio/ByteBuffer;

.field private FH:Lcom/google/android/gms/internal/ads/fn;

.field Hw:Z

.field private VH:J

.field private Zo:Ljava/nio/ByteBuffer;

.field private gn:J

.field private tp:Lcom/google/android/gms/internal/ads/Aw;

.field private u7:J

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/uw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Gw;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/Gw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/uw;->j6:Lcom/google/android/gms/internal/ads/Gw;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uw;->u7:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->EQ:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uw;->DW:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uw;->v5:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uw;->Hw:Z

    return-void
.end method

.method private final DW()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uw;->v5:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_3b

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->j6:Lcom/google/android/gms/internal/ads/Gw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uw;->DW:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "mem mapping "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1a
    new-instance v1, Ljava/lang/String;

    const-string v2, "mem mapping "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Gw;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->tp:Lcom/google/android/gms/internal/ads/Aw;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/uw;->VH:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/uw;->u7:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Aw;->j6(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->Zo:Ljava/nio/ByteBuffer;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_30} :catch_34
    .catchall {:try_start_5 .. :try_end_30} :catchall_3d

    const/4 v0, 0x1

    :try_start_31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uw;->v5:Z

    goto :goto_3b

    :catch_34
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_3d

    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final j6()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uw;->DW()V

    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->j6:Lcom/google/android/gms/internal/ads/Gw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uw;->DW:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "parsing details of "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_19
    new-instance v1, Ljava/lang/String;

    const-string v2, "parsing details of "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Gw;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->Zo:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/uw;->Hw:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/uw;->j6(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->EQ:Ljava/nio/ByteBuffer;

    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->Zo:Ljava/nio/ByteBuffer;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Aw;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/fl;)V
    .registers 10

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uw;->VH:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uw;->gn:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/uw;->u7:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uw;->tp:Lcom/google/android/gms/internal/ads/Aw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Aw;->j6(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uw;->v5:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uw;->Hw:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uw;->j6()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/fn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uw;->FH:Lcom/google/android/gms/internal/ads/fn;

    return-void
.end method

.method protected abstract j6(Ljava/nio/ByteBuffer;)V
.end method
