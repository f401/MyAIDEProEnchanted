.class public final Lcom/google/android/gms/measurement/internal/zzbh;
.super Ljava/lang/Object;


# instance fields
.field private final zzabv:J

.field private final zzant:Lcom/google/android/gms/measurement/internal/zzbd;

.field private final zzanv:Ljava/lang/String;

.field private final zzanw:Ljava/lang/String;

.field private final zzanx:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanv:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanw:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":value"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanx:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzabv:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzbe;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    return-void
.end method

.method private final zzfl()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanw:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanx:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanv:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final zzfn()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanv:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;J)V
    .registers 9

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzfn()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzfl()V

    :cond_12
    if-nez p1, :cond_16

    const-string p1, ""

    :cond_16
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanw:Ljava/lang/String;

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    const-wide/16 v2, 0x1

    cmp-long v4, p2, v0

    if-gtz v4, :cond_40

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanx:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanw:Ljava/lang/String;

    invoke-interface {p2, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmk()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    add-long/2addr p2, v2

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    div-long/2addr v2, p2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanx:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanw:Ljava/lang/String;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzfm()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzfn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzfl()V

    move-wide v0, v2

    goto :goto_28

    :cond_19
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_28
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzabv:J

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-gez v7, :cond_30

    return-object v6

    :cond_30
    const/4 v7, 0x1

    shl-long/2addr v4, v7

    cmp-long v7, v0, v4

    if-lez v7, :cond_3a

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzfl()V

    return-object v6

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanx:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzanw:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzfl()V

    if-eqz v0, :cond_66

    cmp-long v1, v4, v2

    if-gtz v1, :cond_5c

    goto :goto_66

    :cond_5c
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_66
    :goto_66
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzamy:Landroid/util/Pair;

    return-object v0
.end method
