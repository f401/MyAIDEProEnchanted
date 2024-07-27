.class final Lcom/google/android/gms/internal/measurement/n;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final VH:Ljava/lang/String;

.field private final Zo:Ljava/lang/String;

.field private final gn:Landroid/os/Bundle;

.field private final u7:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/n;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/n;->VH:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/n;->gn:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 14

    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/m;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to connect to measurement client."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->Zo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->VH:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/n;->VH:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/n;->Zo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/m;->FH(Landroid/content/Context;)I

    move-result v2

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzdy;

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v4, v3

    if-ge v2, v0, :cond_2

    move v6, v11

    :goto_2
    const-wide/16 v2, 0x32c9

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/n;->gn:Landroid/os/Bundle;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzdy;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/e;->j6(Labcd/ox;Lcom/google/android/gms/internal/measurement/zzdy;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v1, v0, v11, v12}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Exception;ZZ)V

    goto :goto_0

    :cond_1
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    goto :goto_1

    :cond_2
    move v6, v12

    goto :goto_2
.end method
