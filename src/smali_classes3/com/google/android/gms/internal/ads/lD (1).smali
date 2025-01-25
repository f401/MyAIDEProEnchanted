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

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->Hw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->v5:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lD;->DW:Lcom/google/android/gms/internal/ads/mD;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lD;->FH:[B

    return-void
.end method

.method private final FH()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->Hw:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lD;->DW:Lcom/google/android/gms/internal/ads/mD;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->Hw:Z

    :cond_e
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

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/iD;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->v5:Z

    :cond_c
    return-void
.end method

.method public final j6()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lD;->FH()V

    return-void
.end method

.method public final read()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->FH:[B

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/lD;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->FH:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/lD;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lD;->v5:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lD;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lD;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_14

    return p2

    :cond_14
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/lD;->Zo:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/lD;->Zo:J

    return p1
.end method
