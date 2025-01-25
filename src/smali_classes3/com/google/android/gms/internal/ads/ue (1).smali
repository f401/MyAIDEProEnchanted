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

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/te;->DW(Lcom/google/android/gms/internal/ads/te;)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_12

    monitor-exit v0

    return-void

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/te;->FH(Lcom/google/android/gms/internal/ads/te;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/Je;)Lcom/google/android/gms/internal/ads/Je;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/te;->Hw(Lcom/google/android/gms/internal/ads/te;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/te;->j6(I)V

    monitor-exit v0

    return-void

    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/te;->v5(Lcom/google/android/gms/internal/ads/te;)Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/te;I)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/te;->Zo(Lcom/google/android/gms/internal/ads/te;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x38

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as delayed impression is not supported"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/te;->j6(I)V

    monitor-exit v0

    return-void

    :cond_6d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->j6:Lcom/google/android/gms/internal/ads/se;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/se;->j6(Lcom/google/android/gms/internal/ads/xe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ue;->DW:Lcom/google/android/gms/internal/ads/te;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ue;->j6:Lcom/google/android/gms/internal/ads/se;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/se;)V

    monitor-exit v0

    return-void

    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7 .. :try_end_7f} :catchall_7d

    throw v1
.end method
