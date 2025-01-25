.class final Lcom/google/android/gms/internal/ads/uB;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Rz;

.field private FH:Lcom/google/android/gms/internal/ads/Oz;

.field private final j6:[Lcom/google/android/gms/internal/ads/Oz;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/Oz;Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uB;->j6:[Lcom/google/android/gms/internal/ads/Oz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uB;->DW:Lcom/google/android/gms/internal/ads/Rz;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/Oz;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->j6:[Lcom/google/android/gms/internal/ads/Oz;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    :try_start_d
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_15} :catch_1e
    .catchall {:try_start_d .. :try_end_15} :catchall_19

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    goto :goto_25

    :catchall_19
    move-exception p2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    throw p2

    :catch_1e
    move-exception v3

    :cond_1f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    if-eqz p1, :cond_31

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/uB;->DW:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Rz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    return-object p1

    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uB;->j6:[Lcom/google/android/gms/internal/ads/Oz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/TD;->j6([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "None of the available extractors ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/google/android/gms/internal/ads/OB;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/OB;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_5e

    :goto_5d
    throw p1

    :goto_5e
    goto :goto_5d
.end method

.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oz;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    :cond_a
    return-void
.end method
