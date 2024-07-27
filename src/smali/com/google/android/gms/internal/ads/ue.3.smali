.class final Lcom/google/android/gms/internal/ads/ue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/te;

.field private final j6:Lcom/google/android/gms/internal/ads/se;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/se;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ue;->j6:Lcom/google/android/gms/internal/ads/se;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/te;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->DW(Lcom/google/android/gms/internal/ads/te;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/te;->FH(Lcom/google/android/gms/internal/ads/te;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/Je;)Lcom/google/android/gms/internal/ads/Je;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->Hw(Lcom/google/android/gms/internal/ads/te;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/te;->j6(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->v5(Lcom/google/android/gms/internal/ads/te;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/te;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->Zo(Lcom/google/android/gms/internal/ads/te;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x38

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as delayed impression is not supported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/te;->j6(I)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->j6:Lcom/google/android/gms/internal/ads/se;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/se;->j6(Lcom/google/android/gms/internal/ads/xe;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ue;->j6:Lcom/google/android/gms/internal/ads/se;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/se;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
