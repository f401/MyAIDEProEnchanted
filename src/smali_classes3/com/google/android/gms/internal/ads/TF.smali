.class final synthetic Lcom/google/android/gms/internal/ads/TF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/JF;

.field private final FH:Lcom/google/android/gms/internal/ads/zzty;

.field private final Hw:Lcom/google/android/gms/internal/ads/Rm;

.field private final j6:Lcom/google/android/gms/internal/ads/SF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/SF;Lcom/google/android/gms/internal/ads/JF;Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TF;->j6:Lcom/google/android/gms/internal/ads/SF;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/TF;->DW:Lcom/google/android/gms/internal/ads/JF;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/TF;->FH:Lcom/google/android/gms/internal/ads/zzty;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/TF;->Hw:Lcom/google/android/gms/internal/ads/Rm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TF;->j6:Lcom/google/android/gms/internal/ads/SF;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TF;->DW:Lcom/google/android/gms/internal/ads/JF;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/TF;->FH:Lcom/google/android/gms/internal/ads/zzty;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/TF;->Hw:Lcom/google/android/gms/internal/ads/Rm;

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/JF;->j6()Lcom/google/android/gms/internal/ads/NF;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/NF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztv;->DW()Z

    move-result v2

    if-nez v2, :cond_26

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/QF;->j6(Lcom/google/android/gms/internal/ads/QF;)V

    return-void

    :cond_26
    new-instance v2, Lcom/google/android/gms/internal/ads/VF;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztv;->FH()Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/VF;-><init>(Lcom/google/android/gms/internal/ads/SF;Ljava/io/InputStream;I)V

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3e

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void

    :cond_3e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_46} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_46} :catch_46

    :catch_46
    move-exception v1

    goto :goto_49

    :catch_48
    move-exception v1

    :goto_49
    const-string v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->j6(Lcom/google/android/gms/internal/ads/QF;)V

    return-void
.end method
