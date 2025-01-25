.class final Lcom/google/android/gms/measurement/internal/zzdz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzarw:Z

.field private final zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

.field private final zzary:Lcom/google/android/gms/measurement/internal/zzdx;

.field private final zzarz:Lcom/google/android/gms/measurement/internal/zzdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdy;ZLcom/google/android/gms/measurement/internal/zzdx;Lcom/google/android/gms/measurement/internal/zzdx;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarw:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarw:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_3d

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdy;Lcom/google/android/gms/measurement/internal/zzdx;Z)V

    goto :goto_3d

    :cond_2f
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarw:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v3, :cond_3c

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdy;Lcom/google/android/gms/measurement/internal/zzdx;Z)V

    :cond_3c
    const/4 v0, 0x0

    :cond_3d
    :goto_3d
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v3, :cond_63

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    cmp-long v9, v4, v7

    if-nez v9, :cond_63

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_63
    const/4 v2, 0x1

    :cond_64
    if-eqz v2, :cond_cd

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdx;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v1, :cond_8f

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    if-eqz v1, :cond_7d

    const-string v3, "_pn"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    const-string v3, "_pc"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    const-string v1, "_pi"

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_8f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlp()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_c0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;J)V

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    const-string v1, "auto"

    const-string v3, "_vs"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_cd
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Lcom/google/android/gms/measurement/internal/zzdx;)V

    return-void
.end method
