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
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Ljava/util/Map;)Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/m;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/e;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/m;->FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to connect to measurement client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->Zo:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/n;->VH:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->VH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->Zo:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m;->FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v2

    move-object v10, v3

    move-object v9, v4

    goto :goto_49

    :cond_45
    const/4 v2, 0x0

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_49
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/m;->DW(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/m;->FH(Landroid/content/Context;)I

    move-result v3

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzdy;

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v6, v4

    if-ge v3, v2, :cond_60

    const/4 v8, 0x1

    goto :goto_61

    :cond_60
    const/4 v8, 0x0

    :goto_61
    const-wide/16 v4, 0x32c9

    iget-object v12, p0, Lcom/google/android/gms/internal/measurement/n;->gn:Landroid/os/Bundle;

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/measurement/zzdy;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->v5:Landroid/content/Context;

    invoke-static {v3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    invoke-interface {v2, v3, v13, v4, v5}, Lcom/google/android/gms/internal/measurement/e;->j6(Labcd/ox;Lcom/google/android/gms/internal/measurement/zzdy;J)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7a} :catch_7b

    return-void

    :catch_7b
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/n;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v3, v2, v1, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Exception;ZZ)V

    return-void
.end method
