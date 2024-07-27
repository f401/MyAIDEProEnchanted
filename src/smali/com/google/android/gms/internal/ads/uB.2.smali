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

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uB;->j6:[Lcom/google/android/gms/internal/ads/Oz;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uB;->DW:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Rz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    throw v0

    :catch_0
    move-exception v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->j6:[Lcom/google/android/gms/internal/ads/Oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->j6([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "None of the available extractors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/OB;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/OB;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v0
.end method

.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oz;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uB;->FH:Lcom/google/android/gms/internal/ads/Oz;

    :cond_0
    return-void
.end method
