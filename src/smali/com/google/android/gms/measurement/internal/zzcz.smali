.class public final Lcom/google/android/gms/measurement/internal/zzcz;
.super Ljava/lang/Object;


# instance fields
.field zzadg:Z

.field zzadi:Ljava/lang/String;

.field zzaph:Ljava/lang/String;

.field zzapi:Ljava/lang/String;

.field zzaqb:Ljava/lang/Boolean;

.field zzaqw:Lcom/google/android/gms/measurement/internal/zzan;

.field final zzri:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)V
    .registers 6

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzadg:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzri:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzaqw:Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzan;->zzadi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzadi:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzan;->origin:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzaph:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzan;->zzadh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzapi:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzan;->zzadg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzadg:Z

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzan;->zzadj:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "dataCollectionDefaultEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcz;->zzaqb:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
