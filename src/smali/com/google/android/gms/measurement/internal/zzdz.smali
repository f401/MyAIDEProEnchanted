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

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarw:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v0, :cond_7

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdy;Lcom/google/android/gms/measurement/internal/zzdx;Z)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v3, :cond_1

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-wide v8, v6, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdx;Landroid/os/Bundle;Z)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "_pn"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_pi"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarx:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;J)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzary:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Lcom/google/android/gms/measurement/internal/zzdx;)V

    return-void

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarw:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzarz:Lcom/google/android/gms/measurement/internal/zzdy;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzdy;->zzarq:Lcom/google/android/gms/measurement/internal/zzdx;

    if-eqz v3, :cond_9

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdy;Lcom/google/android/gms/measurement/internal/zzdx;Z)V

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method
