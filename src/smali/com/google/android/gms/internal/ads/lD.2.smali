.class public final Lcom/google/android/gms/internal/ads/lD;
.super Ljava/io/InputStream;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/mD;

.field private final FH:[B

.field private Hw:Z

.field private Zo:J

.field private final j6:Lcom/google/android/gms/internal/ads/iD;

.field private v5:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->Hw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->v5:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lD;->DW:Lcom/google/android/gms/internal/ads/mD;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->FH:[B

    return-void
.end method

.method private final FH()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->Hw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lD;->DW:Lcom/google/android/gms/internal/ads/mD;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->Hw:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final DW()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lD;->Zo:J

    return-wide v0
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->v5:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/iD;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->v5:Z

    :cond_0
    return-void
.end method

.method public final j6()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lD;->FH()V

    return-void
.end method

.method public final read()I
    .registers 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lD;->FH:[B

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/lD;->read([B)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->FH:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/lD;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 10

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/lD;->v5:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lD;->FH()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/lD;->Zo:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lD;->Zo:J

    move v0, v1

    goto :goto_0
.end method
