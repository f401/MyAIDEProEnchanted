.class public final Lcom/google/android/gms/measurement/internal/zzfd;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private handler:Landroid/os/Handler;

.field private zzasy:J

.field private zzasz:J

.field private final zzata:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzatb:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzatc:Lcom/google/android/gms/measurement/internal/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzata:Lcom/google/android/gms/measurement/internal/zzy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzff;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzff;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzfg;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasy:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasz:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlq()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfd;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzai(J)V

    return-void
.end method

.method private final zzai(J)V
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasy:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasz:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbi(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaj(J)V

    return-void

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzata:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_67

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6c

    :cond_67
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzaf(J)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_93

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbf;->get()Z

    move-result p1

    if-eqz p1, :cond_be

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzata:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanl:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return-void

    :cond_be
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return-void
.end method

.method private final zzak(J)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzata:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanm:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    :cond_48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasy:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_78

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasy:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_78
    return-void
.end method

.method private final zzal(J)V
    .registers 12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_39

    :cond_38
    move-object v0, v1

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sno"

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, "_sid"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzfd;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzak(J)V

    return-void
.end method

.method private final zzlm()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->handler:Landroid/os/Handler;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/d;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->handler:Landroid/os/Handler;

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private final zzlq()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(ZZ)Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zzm(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(JZ)V
    .registers 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzata:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbd;->zzaf(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbf;->get()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzal(J)V

    return-void

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    if-nez p3, :cond_82

    return-void

    :cond_82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzbj(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d5

    :cond_c1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanm:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    :cond_d5
    return-void
.end method

.method public final zza(ZZ)Z
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasy:J

    sub-long v2, v0, v2

    if-nez p1, :cond_3e

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v4, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzdy;->zzle()Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdx;Landroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzala:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v2

    if-eqz v2, :cond_97

    if-nez p2, :cond_a4

    goto :goto_a1

    :cond_97
    if-eqz p2, :cond_a1

    const-string v2, "_fr"

    const-wide/16 v4, 0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_a4

    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlp()J

    :cond_a4
    :goto_a4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzala:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v2

    if-eqz v2, :cond_ba

    if-nez p2, :cond_c5

    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object p2

    const-string v2, "auto"

    const-string v4, "_e"

    invoke-virtual {p2, v2, v4, p1}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_c5
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasy:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return v3
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method final zzaj(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(JZ)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzda;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzeb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzdy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzfd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzln()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzata:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasy:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasz:J

    return-void
.end method

.method protected final zzlo()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzal(J)V

    return-void
.end method

.method final zzlp()J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasz:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzasz:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
