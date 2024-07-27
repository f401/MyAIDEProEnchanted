.class final Lcom/google/android/gms/internal/ads/ie;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/f;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Rm;

.field private final FH:Lcom/google/android/gms/internal/ads/fe;

.field private final j6:Lcom/google/android/gms/internal/ads/Hd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ie;->FH:Lcom/google/android/gms/internal/ads/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ie;->DW:Lcom/google/android/gms/internal/ads/Rm;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->DW:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v1, Lcom/google/android/gms/internal/ads/Td;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Td;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->DW:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v1, Lcom/google/android/gms/internal/ads/Td;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Td;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    throw v0
.end method

.method public final j6(Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->DW:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ie;->FH:Lcom/google/android/gms/internal/ads/fe;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fe;->j6(Lcom/google/android/gms/internal/ads/fe;)Lcom/google/android/gms/internal/ads/Wd;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/Wd;->j6(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ie;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    throw v0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ie;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    goto :goto_0
.end method
