.class final Lcom/google/android/gms/measurement/internal/zzbd;
.super Lcom/google/android/gms/measurement/internal/zzcs;


# static fields
.field static final zzamy:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzabr:Landroid/content/SharedPreferences;

.field public zzamz:Lcom/google/android/gms/measurement/internal/zzbh;

.field public final zzana:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanb:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanc:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzand:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzane:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzang:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanh:Lcom/google/android/gms/measurement/internal/zzbi;

.field private zzani:Ljava/lang/String;

.field private zzanj:Z

.field private zzank:J

.field public final zzanl:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanm:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzann:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final zzano:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

.field public zzanq:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzamy:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "last_upload"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "last_upload_attempt"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanb:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "backoff"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanc:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "last_delete_stale"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzand:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "time_before_start"

    const-wide/16 v3, 0x2710

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanl:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "session_timeout"

    const-wide/32 v3, 0x1b7740

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanm:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v0, "start_new_session"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbf;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "last_pause_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "time_active"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "midnight_offset"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzane:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v0, "app_install_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzang:Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbi;

    const-string v0, "app_instance_id"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbi;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanh:Lcom/google/android/gms/measurement/internal/zzbi;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final zzju()Landroid/content/SharedPreferences;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method final setMeasurementEnabled(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Setting measurementEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzaf(J)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanm:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method final zzbz(Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzani:Ljava/lang/String;

    if-eqz v3, :cond_23

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_23

    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanj:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaiv:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:J

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzani:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanj:Z

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzani:Ljava/lang/String;

    if-nez p1, :cond_61

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzani:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_50} :catch_51

    goto :goto_61

    :catch_51
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzani:Ljava/lang/String;

    :cond_61
    :goto_61
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzani:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanj:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final zzca(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzbz(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfy;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    return-object p1

    :cond_13
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v4, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzcb(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzcc(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "admob_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzg(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Setting useService"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgz()V
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanq:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_24
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v5, "health_monitor"

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaiw:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzbe;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzamz:Lcom/google/android/gms/measurement/internal/zzbh;

    return-void
.end method

.method final zzh(Z)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method final zzi(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Updating deferred analytics collection"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzjv()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzjw()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "admob_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzjx()Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final zzjy()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Clearing collection preferences."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzalc:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjz()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbd;->setMeasurementEnabled(Z)V

    :cond_37
    return-void

    :cond_38
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzh(Z)Z

    move-result v1

    :cond_49
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_5c

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->setMeasurementEnabled(Z)V

    :cond_5c
    return-void
.end method

.method final zzjz()Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final zzka()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "previous_os_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_31
    return-object v0
.end method

.method final zzkb()Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final zzkc()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
