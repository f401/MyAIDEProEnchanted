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

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    return-void
.end method

.method private final DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_2c

    const-class v1, Lcom/google/android/gms/internal/ads/BC;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_2c

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/BC;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/BC;->j6:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2c

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    return v0

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/BC;->Hw:I

    if-nez v0, :cond_1a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    long-to-int v1, v0

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/BC;->Hw:I

    :cond_1a
    iget v0, p0, Lcom/google/android/gms/internal/ads/BC;->Hw:I

    return v0
.end method

.method public final j6(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/BC;->FH:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/BC;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;
    .registers 15

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/BC;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_53

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/BC;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_53

    :cond_11
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/BC;->DW:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_34

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    add-long v8, v6, v2

    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/BC;->j6:J

    cmp-long p2, v8, v10

    if-nez p2, :cond_34

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long v0, p1, v4

    if-nez v0, :cond_2a

    goto :goto_2c

    :cond_2a
    add-long/2addr v2, p1

    move-wide v4, v2

    :goto_2c
    new-instance p1, Lcom/google/android/gms/internal/ads/BC;

    move-object v0, p1

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object p1

    :cond_34
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/BC;->DW:J

    cmp-long p2, v6, v4

    if-eqz p2, :cond_53

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/BC;->j6:J

    add-long v8, p1, v6

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/BC;->j6:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_53

    cmp-long v0, v2, v4

    if-nez v0, :cond_49

    goto :goto_4b

    :cond_49
    add-long/2addr v6, v2

    move-wide v4, v6

    :goto_4b
    new-instance v6, Lcom/google/android/gms/internal/ads/BC;

    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object v6

    :cond_53
    :goto_53
    const/4 p1, 0x0

    return-object p1
.end method
