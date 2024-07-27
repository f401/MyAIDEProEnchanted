.class public final Lcom/google/android/gms/internal/ads/BC;
.super Ljava/lang/Object;


# instance fields
.field public final DW:J

.field private final FH:Ljava/lang/String;

.field private Hw:I

.field public final j6:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    return-void
.end method

.method private final DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/BC;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/BC;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/BC;->j6:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/BC;->Hw:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/BC;->Hw:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/BC;->Hw:I

    return v0
.end method

.method public final j6(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/BC;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;
    .registers 15

    const-wide/16 v4, -0x1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/BC;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/BC;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    add-long v8, v2, v6

    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/BC;->j6:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_3

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_2

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/BC;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    add-long v4, v6, v8

    goto :goto_1

    :cond_3
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/BC;->j6:J

    add-long v8, v2, v6

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_4

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/BC;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_4
    add-long v4, v6, v8

    goto :goto_2
.end method
