.class final Lcom/google/android/gms/measurement/internal/zzt;
.super Lcom/google/android/gms/measurement/internal/zzfn;


# static fields
.field private static final zzagz:[Ljava/lang/String;

.field private static final zzaha:[Ljava/lang/String;

.field private static final zzahb:[Ljava/lang/String;

.field private static final zzahc:[Ljava/lang/String;

.field private static final zzahd:[Ljava/lang/String;

.field private static final zzahe:[Ljava/lang/String;


# instance fields
.field private final zzahf:Lcom/google/android/gms/measurement/internal/zzw;

.field private final zzahg:Lcom/google/android/gms/measurement/internal/zzfj;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "last_bundled_timestamp"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "last_bundled_day"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "last_sampled_complex_event_id"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "last_sampling_rate"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "last_exempt_from_sampling"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzt;->zzagz:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "origin"

    aput-object v2, v1, v3

    const-string v2, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    aput-object v2, v1, v4

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzt;->zzaha:[Ljava/lang/String;

    const/16 v1, 0x2e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "app_version"

    aput-object v2, v1, v3

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    aput-object v2, v1, v4

    const-string v2, "app_store"

    aput-object v2, v1, v5

    const-string v2, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    aput-object v2, v1, v6

    const-string v2, "gmp_version"

    aput-object v2, v1, v7

    const-string v2, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    aput-object v2, v1, v8

    const-string v2, "dev_cert_hash"

    aput-object v2, v1, v9

    const-string v2, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    aput-object v2, v1, v10

    const-string v2, "measurement_enabled"

    aput-object v2, v1, v11

    const-string v2, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    aput-object v2, v1, v12

    const-string v2, "last_bundle_start_timestamp"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "day"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "daily_public_events_count"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "daily_events_count"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "daily_conversions_count"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "remote_config"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "config_fetched_time"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "failed_config_fetch_time"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "app_version_int"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "firebase_instance_id"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "daily_error_events_count"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "daily_realtime_events_count"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "health_monitor_sample"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "android_id"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "adid_reporting_enabled"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string v2, "ssaid_reporting_enabled"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    const-string v2, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    aput-object v2, v1, v0

    const/16 v0, 0x2a

    const-string v2, "admob_app_id"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string v2, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "linked_admob_app_id"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    aput-object v2, v1, v0

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzt;->zzahb:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "realtime"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzahc:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "has_realtime"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "retry_count"

    aput-object v1, v0, v5

    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzahd:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "previous_install_count"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzahe:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzahg:Lcom/google/android/gms/measurement/internal/zzfj;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzahf:Lcom/google/android/gms/measurement/internal/zzw;

    return-void
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x0

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_24
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide p1

    :cond_1a
    :try_start_1a
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_22} :catch_24
    .catchall {:try_start_1a .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p1

    goto :goto_33

    :catch_24
    move-exception p2

    :try_start_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Database error"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_22

    :goto_33
    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_38
    throw p1
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x0

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_22
    .catchall {:try_start_5 .. :try_end_14} :catchall_20

    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide p1

    :cond_1a
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1f
    return-wide p3

    :catchall_20
    move-exception p1

    goto :goto_31

    :catch_22
    move-exception p2

    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string p4, "Database error"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_20

    :goto_31
    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzt;)Lcom/google/android/gms/measurement/internal/zzfj;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzahg:Lcom/google/android/gms/measurement/internal/zzfj;

    return-object p0
.end method

.method private final zza(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 6

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    const/4 p1, 0x4

    if-eq v0, p1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object v1

    :cond_33
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_38
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_41
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-object v1
.end method

.method private static zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_1a
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_24

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/X;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/X;->v5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_31
    :try_start_31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v0

    new-array v2, v0, [B

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/measurement/X;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/qd;->j6()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_9f

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "filter_id"

    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "event_name"

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/X;->v5:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "event_filters"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, p3, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_8a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_8a} :catch_8c

    :cond_8a
    const/4 p1, 0x1

    return p1

    :catch_8c
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string v0, "Error storing event filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_9f
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize event filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/aa;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/aa;->v5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_31
    :try_start_31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v0

    new-array v2, v0, [B

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/measurement/aa;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/qd;->j6()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_a0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "filter_id"

    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "property_name"

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/aa;->v5:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "property_filters"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, p3, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_8b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_8a} :catch_8d

    return v1

    :cond_8b
    const/4 p1, 0x1

    return p1

    :catch_8d
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string v0, "Error storing property filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_a0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize property filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_e
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_19} :catch_b5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzai;->zzajz:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result v2

    const/16 v6, 0x7d0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v6, v2

    cmp-long v8, v4, v6

    if-gtz v8, :cond_33

    return v1

    :cond_33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5b

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_5a

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_4c

    goto :goto_5a

    :cond_4c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_5a
    :goto_5a
    return v1

    :cond_5b
    const-string p2, ","

    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x8c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "audience_filter_values"

    invoke-virtual {v0, p1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_b4

    return v3

    :cond_b4
    return v1

    :catch_b5
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final zzip()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic zziq()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzagz:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzir()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaha:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzis()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzahb:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzit()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzahd:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zziu()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzahc:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zziv()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzahe:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final beginTransaction()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final endTransaction()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzahf:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public final setTransactionSuccessful()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/ka;)J
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ka;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/qd;->j6()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_86

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzaf()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfy;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    if-nez v2, :cond_43

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Failed to get MD5"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    goto :goto_4b

    :cond_43
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc([B)J

    move-result-wide v2

    :goto_4b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "metadata_fingerprint"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "metadata"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v1, v4, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65 .. :try_end_70} :catch_71

    return-wide v2

    :catch_71
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing raw event metadata. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :catch_86
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Data loss. Failed to serialize event metadata. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/ha;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_1e} :catch_76
    .catchall {:try_start_7 .. :try_end_1e} :catchall_74

    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_31} :catch_72
    .catchall {:try_start_1e .. :try_end_31} :catchall_8b

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object v0

    :cond_37
    :try_start_37
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    array-length v3, v2

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/measurement/ha;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/ha;-><init>()V
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_49} :catch_72
    .catchall {:try_start_37 .. :try_end_49} :catchall_8b

    :try_start_49
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/ha;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_4c} :catch_72
    .catchall {:try_start_49 .. :try_end_4c} :catchall_8b

    :try_start_4c
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_54} :catch_72
    .catchall {:try_start_4c .. :try_end_54} :catchall_8b

    if-eqz v1, :cond_59

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_59
    return-object p1

    :catch_5a
    move-exception v2

    :try_start_5b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_6c} :catch_72
    .catchall {:try_start_5b .. :try_end_6c} :catchall_8b

    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_71
    return-object v0

    :catch_72
    move-exception p1

    goto :goto_78

    :catchall_74
    move-exception p1

    goto :goto_8d

    :catch_76
    move-exception p1

    move-object v1, v0

    :goto_78
    :try_start_78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_8b

    if-eqz v1, :cond_8a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8a
    return-object v0

    :catchall_8b
    move-exception p1

    move-object v0, v1

    :goto_8d
    if-eqz v0, :cond_92

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_92
    throw p1
.end method

.method public final zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzu;
    .registers 30

    const-string v0, "daily_realtime_events_count"

    const-string v1, "daily_error_events_count"

    const-string v2, "daily_conversions_count"

    const-string v3, "daily_public_events_count"

    const-string v4, "daily_events_count"

    const-string v5, "day"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzu;

    invoke-direct {v6}, Lcom/google/android/gms/measurement/internal/zzu;-><init>()V

    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v9, "apps"

    const/4 v8, 0x6

    new-array v10, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v5, v10, v14

    const/4 v13, 0x1

    aput-object v4, v10, v13

    const/4 v12, 0x2

    aput-object v3, v10, v12

    const/4 v11, 0x3

    aput-object v2, v10, v11

    const/4 v8, 0x4

    aput-object v1, v10, v8

    const/4 v7, 0x5

    aput-object v0, v10, v7

    const-string v16, "app_id=?"

    new-array v12, v13, [Ljava/lang/String;

    aput-object p3, v12, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v7, 0x4

    move-object v8, v15

    const/4 v7, 0x3

    move-object/from16 v11, v16

    const/4 v7, 0x2

    const/4 v7, 0x1

    move-object/from16 v13, v17

    const/4 v7, 0x0

    move-object/from16 v14, v18

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_55} :catch_118
    .catchall {:try_start_1a .. :try_end_55} :catchall_115

    :try_start_55
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_72

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Not updating daily counts, app is not known. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_6c} :catch_112
    .catchall {:try_start_55 .. :try_end_6c} :catchall_10f

    if-eqz v8, :cond_71

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_71
    return-object v6

    :cond_72
    :try_start_72
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v11, v9, p1

    if-nez v11, :cond_9d

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahi:J

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahh:J

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahj:J

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahk:J

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahl:J

    :cond_9d
    const-wide/16 v9, 0x1

    if-eqz p4, :cond_a6

    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahi:J

    add-long/2addr v11, v9

    iput-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahi:J

    :cond_a6
    if-eqz p5, :cond_ad

    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahh:J

    add-long/2addr v11, v9

    iput-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahh:J

    :cond_ad
    if-eqz p6, :cond_b4

    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahj:J

    add-long/2addr v11, v9

    iput-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahj:J

    :cond_b4
    if-eqz p7, :cond_bb

    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahk:J

    add-long/2addr v11, v9

    iput-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahk:J

    :cond_bb
    if-eqz p8, :cond_c2

    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahl:J

    add-long/2addr v11, v9

    iput-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahl:J

    :cond_c2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v10, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahh:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v10, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahi:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v3, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahj:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, v6, Lcom/google/android/gms/measurement/internal/zzu;->zzahl:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "apps"

    const-string v1, "app_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v7

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_109
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_109} :catch_112
    .catchall {:try_start_72 .. :try_end_109} :catchall_10f

    if-eqz v8, :cond_10e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_10e
    return-object v6

    :catchall_10f
    move-exception v0

    move-object v7, v8

    goto :goto_132

    :catch_112
    move-exception v0

    move-object v7, v8

    goto :goto_11a

    :catchall_115
    move-exception v0

    const/4 v7, 0x0

    goto :goto_132

    :catch_118
    move-exception v0

    const/4 v7, 0x0

    :goto_11a
    :try_start_11a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error updating daily counts. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12b
    .catchall {:try_start_11a .. :try_end_12b} :catchall_131

    if-eqz v7, :cond_130

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_130
    return-object v6

    :catchall_131
    move-exception v0

    :goto_132
    if-eqz v7, :cond_137

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_137
    throw v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzac;)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lifetime_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bundle_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_fire_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_bundled_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundled_day"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_sampled_complex_event_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_sampling_rate"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6f

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_70

    :cond_6f
    move-object v1, v2

    :goto_70
    const-string v3, "last_exempt_from_sampling"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_99

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_99} :catch_9a

    :cond_99
    return-void

    :catch_9a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing event aggregates. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 10

    const-string v0, "apps"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gmp_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "resettable_device_id_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_index"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_start_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhe()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_end_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "app_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_store"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gmp_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dev_cert_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "measurement_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzho()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_public_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_conversions_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "config_fetched_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "failed_config_fetch_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "app_version_int"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "firebase_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_error_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_realtime_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "health_monitor_sample"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzht()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "android_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "adid_reporting_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ssaid_reporting_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "admob_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_14b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_187

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_187

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Failed to insert/update app (got -1). appId"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_187
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14b .. :try_end_187} :catch_188

    :cond_187
    return-void

    :catch_188
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing app. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/W;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "app_id=? and audience_id=?"

    const-string v4, "event_filters"

    const-string v5, "app_id=?"

    const-string v6, "property_filters"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v6, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v10, v9, [Ljava/lang/String;

    aput-object v0, v10, v11

    invoke-virtual {v8, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v5, v2
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_132

    const/4 v8, 0x0

    :goto_40
    if-ge v8, v5, :cond_116

    aget-object v10, v2, v8

    :try_start_44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    invoke-static {v12}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    invoke-static {v12}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    if-nez v12, :cond_72

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v10

    const-string v12, "Audience with no ID. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6f
    :goto_6f
    const/4 v13, 0x1

    goto/16 :goto_111

    :cond_72
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_7c
    if-ge v15, v14, :cond_9c

    aget-object v9, v13, v15

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    if-nez v9, :cond_98

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v12, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    :goto_94
    invoke-virtual {v9, v12, v13, v10}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6f

    :cond_98
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x1

    goto :goto_7c

    :cond_9c
    iget-object v9, v10, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    array-length v13, v9

    const/4 v14, 0x0

    :goto_a0
    if-ge v14, v13, :cond_bc

    aget-object v15, v9, v14

    iget-object v15, v15, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    if-nez v15, :cond_b9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v9

    const-string v12, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    goto :goto_94

    :cond_b9
    add-int/lit8 v14, v14, 0x1

    goto :goto_a0

    :cond_bc
    iget-object v9, v10, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    array-length v13, v9

    const/4 v14, 0x0

    :goto_c0
    if-ge v14, v13, :cond_cf

    aget-object v15, v9, v14

    invoke-direct {v1, v0, v12, v15}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/X;)Z

    move-result v15

    if-nez v15, :cond_cc

    const/4 v9, 0x0

    goto :goto_d0

    :cond_cc
    add-int/lit8 v14, v14, 0x1

    goto :goto_c0

    :cond_cf
    const/4 v9, 0x1

    :goto_d0
    if-eqz v9, :cond_e5

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    array-length v13, v10

    const/4 v14, 0x0

    :goto_d6
    if-ge v14, v13, :cond_e5

    aget-object v15, v10, v14

    invoke-direct {v1, v0, v12, v15}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/aa;)Z

    move-result v15

    if-nez v15, :cond_e2

    const/4 v9, 0x0

    goto :goto_e5

    :cond_e2
    add-int/lit8 v14, v14, 0x1

    goto :goto_d6

    :cond_e5
    :goto_e5
    if-nez v9, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/String;

    aput-object v0, v13, v11

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-virtual {v9, v6, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v10, v10, [Ljava/lang/String;

    aput-object v0, v10, v11

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v10, v13

    invoke-virtual {v9, v4, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_111
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto/16 :goto_40

    :cond_116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    :goto_11c
    if-ge v11, v4, :cond_128

    aget-object v5, v2, v11

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_11c

    :cond_128
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/util/List;)Z

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12e
    .catchall {:try_start_44 .. :try_end_12e} :catchall_132

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_132
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_138

    :goto_137
    throw v0

    :goto_138
    goto :goto_137
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/ka;Z)Z
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzij()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzib()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3d

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzib()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v6, v2, v4

    if-lez v6, :cond_56

    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    const-string v4, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    const/4 v0, 0x0

    :try_start_57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v1

    new-array v2, v1, [B

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ka;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb([B)[B

    move-result-object v1
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6f} :catch_e7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving bundle, size"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bundle_end_timestamp"

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "has_realtime"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/ka;->sG:Ljava/lang/Integer;

    if-eqz p2, :cond_ab

    const-string v1, "retry_count"

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_ab
    :try_start_ab
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "queue"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_d0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Failed to insert bundle (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab .. :try_end_cf} :catch_d2

    return v0

    :cond_d0
    const/4 p1, 0x1

    return p1

    :catch_d2
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing bundle. appId"

    :goto_e3
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :catch_e7
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Data loss. Failed to serialize bundle. appId"

    goto :goto_e3
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzab;JZ)Z
    .registers 13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ha;-><init>()V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzaht:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/ia;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    aput-object v6, v7, v3

    iput-object v4, v6, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzab;->zzahu:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzad;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/Object;)V

    add-int/2addr v3, v5

    goto :goto_2d

    :cond_54
    :try_start_54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v1

    new-array v3, v1, [B

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/ha;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/qd;->j6()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_64} :catch_ef

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzab;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "Saving event, name, data size"

    invoke-virtual {v0, v6, v4, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzab;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzab;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "metadata_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "data"

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p2, "realtime"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_b4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "raw_events"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-nez p4, :cond_d9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Failed to insert raw event (got -1). appId"

    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b4 .. :try_end_d8} :catch_da

    return v2

    :cond_d9
    return v5

    :catch_da
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Error storing raw event. appId"

    :goto_eb
    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :catch_ef
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->zztt:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Data loss. Failed to serialize event params/data. appId"

    goto :goto_eb
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzfx;)Z
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zztt:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_46

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzct(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, 0x19

    const/4 v4, 0x0

    if-eqz v0, :cond_30

    new-array v0, v1, [Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zztt:Ljava/lang/String;

    aput-object v5, v0, v4

    const-string v5, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-ltz v0, :cond_46

    return v4

    :cond_30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zztt:Ljava/lang/String;

    aput-object v5, v0, v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzfx;->origin:Ljava/lang/String;

    aput-object v5, v0, v1

    const-string v5, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-ltz v0, :cond_46

    return v4

    :cond_46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zztt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfx;->origin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zzauk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "set_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_ac

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zztt:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_97} :catch_98

    goto :goto_ac

    :catch_98
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zztt:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing user property. appId"

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ac
    :goto_ac
    return v1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzo;)Z
    .registers 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    new-array v0, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2a

    return v3

    :cond_2a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->origin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "value"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->active:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "trigger_event_name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->triggerEventName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->triggerTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "trigger_timeout"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagt:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "timed_out_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->creationTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "creation_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagu:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "triggered_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzags:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "triggered_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->timeToLive:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time_to_live"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzagv:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "expired_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_bb
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_f5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bb .. :try_end_e0} :catch_e1

    goto :goto_f5

    :catch_e1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing conditional user property"

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f5
    :goto_f5
    return v1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ha;)Z
    .registers 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-static {p5}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v1

    new-array v2, v1, [B

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v3

    invoke-virtual {p5, v3}, Lcom/google/android/gms/internal/measurement/ha;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/qd;->j6()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_8f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Saving complex main event, appId, data size"

    invoke-virtual {p5, v4, v3, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {p5, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_id"

    invoke-virtual {p5, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "children_to_process"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    invoke-virtual {p5, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "main_event_params"

    const/4 p4, 0x0

    const/4 v1, 0x5

    invoke-virtual {p2, p3, p4, p5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 p4, -0x1

    cmp-long v1, p2, p4

    if-nez v1, :cond_7a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Failed to insert complex main event (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_79} :catch_7c

    return v0

    :cond_7a
    const/4 p1, 0x1

    return p1

    :catch_7c
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    const-string p4, "Error storing complex main event. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :catch_8f
    move-exception p3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p4

    const-string p5, "Data loss. Failed to serialize event params/data. appId, eventId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final zzad(J)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_1b} :catch_42
    .catchall {:try_start_7 .. :try_end_1b} :catchall_40

    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2e} :catch_3e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_58

    if-eqz p1, :cond_33

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_33
    return-object v0

    :cond_34
    :try_start_34
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_38} :catch_3e
    .catchall {:try_start_34 .. :try_end_38} :catchall_58

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object p2

    :catch_3e
    move-exception p2

    goto :goto_45

    :catchall_40
    move-exception p1

    goto :goto_5b

    :catch_42
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    :goto_45
    :try_start_45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_58

    if-eqz p1, :cond_57

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_57
    return-object v0

    :catchall_58
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    :goto_5b
    if-eqz v0, :cond_60

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_60
    throw p1
.end method

.method public final zzb(Ljava/lang/String;II)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/ka;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    move/from16 v1, p3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    if-lez v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "queue"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v7, v3

    const-string v0, "data"

    aput-object v0, v7, v2

    const-string v0, "retry_count"

    const/4 v14, 0x2

    aput-object v0, v7, v14

    const-string v8, "app_id=?"

    new-array v9, v2, [Ljava/lang/String;

    aput-object p1, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "rowid"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_50} :catch_d7
    .catchall {:try_start_1e .. :try_end_50} :catchall_d5

    if-eqz v4, :cond_55

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_55
    return-object v0

    :cond_56
    :try_start_56
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :cond_5c
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_60} :catch_d7
    .catchall {:try_start_56 .. :try_end_60} :catchall_d5

    :try_start_60
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([B)[B

    move-result-object v0
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6c} :catch_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_60 .. :try_end_6c} :catch_d7
    .catchall {:try_start_60 .. :try_end_6c} :catchall_d5

    :try_start_6c
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_76

    array-length v9, v0

    add-int/2addr v9, v6

    if-gt v9, v1, :cond_cf

    :cond_76
    array-length v9, v0

    invoke-static {v0, v3, v9}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/measurement/ka;

    invoke-direct {v10}, Lcom/google/android/gms/internal/measurement/ka;-><init>()V
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6c .. :try_end_80} :catch_d7
    .catchall {:try_start_6c .. :try_end_80} :catchall_d5

    :try_start_80
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/ka;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_83} :catch_d7
    .catchall {:try_start_80 .. :try_end_83} :catchall_d5

    :try_start_83
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_93

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v10, Lcom/google/android/gms/internal/measurement/ka;->sG:Ljava/lang/Integer;

    :cond_93
    array-length v0, v0

    add-int/2addr v6, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    :catch_a1
    move-exception v0

    move-object v7, v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v8, "Failed to merge queued bundle. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c7

    :catch_b5
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v7

    const-string v8, "Failed to unzip queued bundle. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_83 .. :try_end_cb} :catch_d7
    .catchall {:try_start_83 .. :try_end_cb} :catchall_d5

    if-eqz v0, :cond_cf

    if-le v6, v1, :cond_5c

    :cond_cf
    if-eqz v4, :cond_d4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_d4
    return-object v5

    :catchall_d5
    move-exception v0

    goto :goto_f3

    :catch_d7
    move-exception v0

    :try_start_d8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error querying bundles. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_ed
    .catchall {:try_start_d8 .. :try_end_ed} :catchall_d5

    if-eqz v4, :cond_f2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f2
    return-object v0

    :goto_f3
    if-eqz v4, :cond_f8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f8
    goto :goto_fa

    :goto_f9
    throw v0

    :goto_fa
    goto :goto_f9
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfx;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_f
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_15} :catch_129
    .catchall {:try_start_f .. :try_end_15} :catchall_125

    move-object/from16 v11, p1

    :try_start_17
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_id=?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_25} :catch_11f
    .catchall {:try_start_17 .. :try_end_25} :catchall_125

    if-nez v5, :cond_37

    move-object/from16 v5, p2

    :try_start_29
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " and origin=?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :catch_32
    move-exception v0

    move-object/from16 v14, p0

    goto/16 :goto_12f

    :cond_37
    move-object/from16 v5, p2

    :goto_39
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " and name glob ?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v13, "user_attributes"

    const/4 v2, 0x4

    new-array v14, v2, [Ljava/lang/String;

    const-string v2, "name"

    const/4 v10, 0x0

    aput-object v2, v14, v10

    const-string v2, "set_timestamp"

    const/4 v8, 0x1

    aput-object v2, v14, v8

    const-string v2, "value"

    const/4 v9, 0x2

    aput-object v2, v14, v9

    const-string v2, "origin"

    aput-object v2, v14, v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "1001"

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_8b} :catch_32
    .catchall {:try_start_29 .. :try_end_8b} :catchall_125

    :try_start_8b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_8f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8b .. :try_end_8f} :catch_11b
    .catchall {:try_start_8b .. :try_end_8f} :catchall_117

    if-nez v4, :cond_97

    if-eqz v2, :cond_96

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_96
    return-object v0

    :cond_97
    :goto_97
    :try_start_97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_b3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v14, p0

    goto :goto_100

    :cond_b3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_97 .. :try_end_bb} :catch_11b
    .catchall {:try_start_97 .. :try_end_bb} :catchall_117

    move-object/from16 v14, p0

    :try_start_bd
    invoke-direct {v14, v2, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_c5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bd .. :try_end_c5} :catch_115
    .catchall {:try_start_bd .. :try_end_c5} :catchall_147

    if-nez v15, :cond_e5

    :try_start_c7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "(2)Read invalid user property value, ignoring it"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v12, p3

    invoke-virtual {v4, v5, v7, v6, v12}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_da
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c7 .. :try_end_da} :catch_e2
    .catchall {:try_start_c7 .. :try_end_da} :catchall_147

    move-object/from16 v17, v6

    const/4 v12, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x1

    goto :goto_fa

    :catch_e2
    move-exception v0

    move-object v5, v6

    goto :goto_130

    :cond_e5
    :try_start_e5
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzfx;
    :try_end_e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e5 .. :try_end_e7} :catch_10f
    .catchall {:try_start_e5 .. :try_end_e7} :catchall_147

    move-object v4, v5

    move-object v3, v5

    move-object/from16 v5, p1

    move-object/from16 v17, v6

    const/16 v18, 0x2

    const/16 v19, 0x1

    move-wide v8, v12

    const/4 v12, 0x0

    move-object v10, v15

    :try_start_f4
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_fa
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_fe
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f4 .. :try_end_fe} :catch_10d
    .catchall {:try_start_f4 .. :try_end_fe} :catchall_147

    if-nez v3, :cond_106

    :goto_100
    if-eqz v2, :cond_105

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_105
    return-object v0

    :cond_106
    move-object/from16 v5, v17

    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto :goto_97

    :catch_10d
    move-exception v0

    goto :goto_112

    :catch_10f
    move-exception v0

    move-object/from16 v17, v6

    :goto_112
    move-object/from16 v5, v17

    goto :goto_130

    :catch_115
    move-exception v0

    goto :goto_130

    :catchall_117
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_148

    :catch_11b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_130

    :catch_11f
    move-exception v0

    move-object/from16 v14, p0

    :goto_122
    move-object/from16 v5, p2

    goto :goto_12f

    :catchall_125
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_149

    :catch_129
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    goto :goto_122

    :goto_12f
    move-object v2, v1

    :goto_130
    :try_start_130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "(2)Error querying user properties"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_141
    .catchall {:try_start_130 .. :try_end_141} :catchall_147

    if-eqz v2, :cond_146

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_146
    return-object v1

    :catchall_147
    move-exception v0

    :goto_148
    move-object v1, v2

    :goto_149
    if-eqz v1, :cond_14e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14e
    goto :goto_150

    :goto_14f
    throw v0

    :goto_150
    goto :goto_14f
.end method

.method public final zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzo;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "app_id"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "origin"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const-string v5, "name"

    const/4 v13, 0x2

    aput-object v5, v4, v13

    const-string v5, "value"

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const-string v5, "active"

    const/4 v15, 0x4

    aput-object v5, v4, v15

    const-string v5, "trigger_event_name"

    const/4 v10, 0x5

    aput-object v5, v4, v10

    const-string v5, "trigger_timeout"

    const/4 v9, 0x6

    aput-object v5, v4, v9

    const-string v5, "timed_out_event"

    const/4 v8, 0x7

    aput-object v5, v4, v8

    const-string v5, "creation_timestamp"

    const/16 v7, 0x8

    aput-object v5, v4, v7

    const-string v5, "triggered_event"

    const/16 v6, 0x9

    aput-object v5, v4, v6

    const-string v5, "triggered_timestamp"

    const/16 v1, 0xa

    aput-object v5, v4, v1

    const-string v5, "time_to_live"

    const/16 v1, 0xb

    aput-object v5, v4, v1

    const-string v5, "expired_event"

    const/16 v1, 0xc

    aput-object v5, v4, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const-string v22, "1001"

    move-object/from16 v5, p1

    const/16 v1, 0x9

    move-object/from16 v6, p2

    const/16 v1, 0x8

    move-object/from16 v7, v19

    const/4 v1, 0x7

    move-object/from16 v8, v20

    const/4 v1, 0x6

    move-object/from16 v9, v21

    const/4 v1, 0x5

    move-object/from16 v10, v22

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_7a} :catch_159
    .catchall {:try_start_b .. :try_end_7a} :catchall_156

    :try_start_7a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_7e} :catch_153
    .catchall {:try_start_7a .. :try_end_7e} :catchall_150

    if-nez v3, :cond_86

    if-eqz v2, :cond_85

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_85
    return-object v0

    :cond_86
    :goto_86
    :try_start_86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_a1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v3, "Read more than the max allowed conditional properties, ignoring extra"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_146

    :cond_a1
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, p0

    invoke-direct {v9, v2, v14}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_bc

    const/16 v22, 0x1

    goto :goto_be

    :cond_bc
    const/16 v22, 0x0

    :goto_be
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v6, 0x6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    const/4 v7, 0x7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v1, v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzag;

    const/16 v6, 0x8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    const/16 v11, 0x9

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v29, v4

    check-cast v29, Lcom/google/android/gms/measurement/internal/zzag;

    const/16 v6, 0xa

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v7, 0xb

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    const/16 v11, 0xc

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v30, v4

    check-cast v30, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v33, Lcom/google/android/gms/measurement/internal/zzfv;

    move-object/from16 v4, v33

    const/16 v34, 0xb

    const/16 v35, 0xa

    const/16 v36, 0x8

    const/16 v37, 0x7

    const/16 v38, 0x6

    move-wide/from16 v6, v16

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzo;

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v33

    move-wide/from16 v20, v27

    move-object/from16 v23, v24

    move-object/from16 v24, v1

    move-object/from16 v27, v29

    move-wide/from16 v28, v31

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_144
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_144} :catch_153
    .catchall {:try_start_86 .. :try_end_144} :catchall_150

    if-nez v1, :cond_14c

    :goto_146
    if-eqz v2, :cond_14b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_14b
    return-object v0

    :cond_14c
    const/4 v1, 0x5

    const/4 v11, 0x0

    goto/16 :goto_86

    :catchall_150
    move-exception v0

    move-object v1, v2

    goto :goto_173

    :catch_153
    move-exception v0

    move-object v1, v2

    goto :goto_15b

    :catchall_156
    move-exception v0

    const/4 v1, 0x0

    goto :goto_173

    :catch_159
    move-exception v0

    const/4 v1, 0x0

    :goto_15b
    :try_start_15b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_16c
    .catchall {:try_start_15b .. :try_end_16c} :catchall_172

    if-eqz v1, :cond_171

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_171
    return-object v0

    :catchall_172
    move-exception v0

    :goto_173
    if-eqz v1, :cond_178

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_178
    goto :goto_17a

    :goto_179
    throw v0

    :goto_17a
    goto :goto_179
.end method

.method public final zzbl(Ljava/lang/String;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfx;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "name"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "origin"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const-string v5, "set_timestamp"

    const/4 v13, 0x2

    aput-object v5, v4, v13

    const-string v5, "value"

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const-string v5, "app_id=?"

    new-array v6, v12, [Ljava/lang/String;

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1000"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_3c} :catch_9a
    .catchall {:try_start_f .. :try_end_3c} :catchall_96

    :try_start_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_40} :catch_92
    .catchall {:try_start_3c .. :try_end_40} :catchall_8d

    if-nez v3, :cond_48

    if-eqz v2, :cond_47

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_47
    return-object v0

    :cond_48
    :try_start_48
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_50} :catch_92
    .catchall {:try_start_48 .. :try_end_50} :catchall_8d

    if-nez v3, :cond_54

    const-string v3, ""

    :cond_54
    move-object/from16 v17, v3

    :try_start_56
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_5a} :catch_92
    .catchall {:try_start_56 .. :try_end_5a} :catchall_8d

    move-object/from16 v3, p0

    :try_start_5c
    invoke-direct {v3, v2, v14}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_74

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "Read invalid user property value, ignoring it. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7f

    :cond_74
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfx;

    move-object v15, v4

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_83} :catch_8b
    .catchall {:try_start_5c .. :try_end_83} :catchall_b5

    if-nez v4, :cond_48

    if-eqz v2, :cond_8a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8a
    return-object v0

    :catch_8b
    move-exception v0

    goto :goto_9e

    :catchall_8d
    move-exception v0

    move-object/from16 v3, p0

    :goto_90
    move-object v1, v2

    goto :goto_b7

    :catch_92
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_9e

    :catchall_96
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_b7

    :catch_9a
    move-exception v0

    move-object/from16 v3, p0

    move-object v2, v1

    :goto_9e
    :try_start_9e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "Error querying user properties. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_9e .. :try_end_af} :catchall_b5

    if-eqz v2, :cond_b4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b4
    return-object v1

    :catchall_b5
    move-exception v0

    goto :goto_90

    :goto_b7
    if-eqz v1, :cond_bc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bc
    goto :goto_be

    :goto_bd
    throw v0

    :goto_be
    goto :goto_bd
.end method

.method public final zzbm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 23

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "apps"

    const/16 v0, 0x1a

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "app_instance_id"

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const-string v0, "gmp_app_id"

    const/4 v12, 0x1

    aput-object v0, v5, v12

    const-string v0, "resettable_device_id_hash"

    const/4 v13, 0x2

    aput-object v0, v5, v13

    const-string v0, "last_bundle_index"

    const/4 v14, 0x3

    aput-object v0, v5, v14

    const-string v0, "last_bundle_start_timestamp"

    const/4 v15, 0x4

    aput-object v0, v5, v15

    const-string v0, "last_bundle_end_timestamp"

    const/4 v10, 0x5

    aput-object v0, v5, v10

    const-string v0, "app_version"

    const/4 v9, 0x6

    aput-object v0, v5, v9

    const-string v0, "app_store"

    const/4 v8, 0x7

    aput-object v0, v5, v8

    const-string v0, "gmp_version"

    const/16 v7, 0x8

    aput-object v0, v5, v7

    const-string v0, "dev_cert_hash"

    const/16 v6, 0x9

    aput-object v0, v5, v6

    const-string v0, "measurement_enabled"

    const/16 v15, 0xa

    aput-object v0, v5, v15

    const-string v0, "day"

    const/16 v15, 0xb

    aput-object v0, v5, v15

    const-string v0, "daily_public_events_count"

    const/16 v15, 0xc

    aput-object v0, v5, v15

    const-string v0, "daily_events_count"

    const/16 v15, 0xd

    aput-object v0, v5, v15

    const-string v0, "daily_conversions_count"

    const/16 v15, 0xe

    aput-object v0, v5, v15

    const-string v0, "config_fetched_time"

    const/16 v15, 0xf

    aput-object v0, v5, v15

    const-string v0, "failed_config_fetch_time"

    const/16 v15, 0x10

    aput-object v0, v5, v15

    const-string v0, "app_version_int"

    const/16 v15, 0x11

    aput-object v0, v5, v15

    const-string v0, "firebase_instance_id"

    const/16 v16, 0x12

    aput-object v0, v5, v16

    const-string v0, "daily_error_events_count"

    const/16 v16, 0x13

    aput-object v0, v5, v16

    const-string v0, "daily_realtime_events_count"

    const/16 v16, 0x14

    aput-object v0, v5, v16

    const-string v0, "health_monitor_sample"

    const/16 v16, 0x15

    aput-object v0, v5, v16

    const-string v0, "android_id"

    const/16 v15, 0x16

    aput-object v0, v5, v15

    const-string v0, "adid_reporting_enabled"

    const/16 v15, 0x17

    aput-object v0, v5, v15

    const-string v0, "ssaid_reporting_enabled"

    const/16 v15, 0x18

    aput-object v0, v5, v15

    const-string v0, "admob_app_id"

    const/16 v17, 0x19

    aput-object v0, v5, v17

    const-string v0, "app_id=?"

    new-array v7, v12, [Ljava/lang/String;

    aput-object v1, v7, v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v15, 0x9

    move-object v6, v0

    const/16 v0, 0x8

    const/4 v15, 0x7

    move-object/from16 v8, v18

    const/4 v0, 0x6

    move-object/from16 v9, v19

    const/4 v15, 0x5

    move-object/from16 v10, v20

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c8} :catch_221
    .catchall {:try_start_c .. :try_end_c8} :catchall_21d

    :try_start_c8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_cc} :catch_219
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_214

    if-nez v4, :cond_d4

    if-eqz v3, :cond_d3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d3
    return-object v2

    :cond_d4
    :try_start_d4
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzg;
    :try_end_d6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d4 .. :try_end_d6} :catch_219
    .catchall {:try_start_d4 .. :try_end_d6} :catchall_214

    move-object/from16 v5, p0

    :try_start_d8
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmh()Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj(Ljava/lang/String;)V

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzak(Ljava/lang/String;)V

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(J)V

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    const/16 v0, 0x9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    const/16 v0, 0xa

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_13e

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_13c

    goto :goto_13e

    :cond_13c
    const/4 v0, 0x0

    goto :goto_13f

    :cond_13e
    :goto_13e
    const/4 v0, 0x1

    :goto_13f
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    const/16 v0, 0xb

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    const/16 v0, 0xc

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzx(J)V

    const/16 v0, 0xd

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(J)V

    const/16 v0, 0xe

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzz(J)V

    const/16 v0, 0xf

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    const/16 v0, 0x10

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv(J)V

    const/16 v0, 0x11

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_184

    const-wide/32 v6, -0x80000000

    goto :goto_189

    :cond_184
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    :goto_189
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    const/16 v0, 0x12

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzan(Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzab(J)V

    const/16 v0, 0x14

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa(J)V

    const/16 v0, 0x15

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    const/16 v0, 0x16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1bb

    const-wide/16 v6, 0x0

    goto :goto_1bf

    :cond_1bb
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :goto_1bf
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(J)V

    const/16 v0, 0x17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1d3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1d1

    goto :goto_1d3

    :cond_1d1
    const/4 v0, 0x0

    goto :goto_1d4

    :cond_1d3
    :goto_1d3
    const/4 v0, 0x1

    :goto_1d4
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Z)V

    const/16 v0, 0x18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1e5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1e6

    :cond_1e5
    const/4 v11, 0x1

    :cond_1e6
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Z)V

    const/16 v0, 0x19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzal(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_20c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v6, "Got multiple records for app, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d8 .. :try_end_20c} :catch_212
    .catchall {:try_start_d8 .. :try_end_20c} :catchall_23c

    :cond_20c
    if-eqz v3, :cond_211

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_211
    return-object v4

    :catch_212
    move-exception v0

    goto :goto_225

    :catchall_214
    move-exception v0

    move-object/from16 v5, p0

    :goto_217
    move-object v2, v3

    goto :goto_23e

    :catch_219
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_225

    :catchall_21d
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_23e

    :catch_221
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    :goto_225
    :try_start_225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v6, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_236
    .catchall {:try_start_225 .. :try_end_236} :catchall_23c

    if-eqz v3, :cond_23b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_23b
    return-object v2

    :catchall_23c
    move-exception v0

    goto :goto_217

    :goto_23e
    if-eqz v2, :cond_243

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_243
    goto :goto_245

    :goto_244
    throw v0

    :goto_245
    goto :goto_244
.end method

.method public final zzbn(Ljava/lang/String;)J
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "raw_events"

    const-string v2, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzai;->zzajj:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v5, p1, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)I

    move-result v5

    const v6, 0xf4240

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_37} :catch_39

    int-to-long v0, p1

    return-wide v0

    :catch_39
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error deleting over the limit events. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzbo(Ljava/lang/String;)[B
    .registers 13

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "remote_config"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const-string v5, "app_id=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_2b} :catch_5c
    .catchall {:try_start_a .. :try_end_2b} :catchall_5a

    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_2f} :catch_58
    .catchall {:try_start_2b .. :try_end_2f} :catchall_76

    if-nez v2, :cond_37

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object v0

    :cond_37
    :try_start_37
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_52} :catch_58
    .catchall {:try_start_37 .. :try_end_52} :catchall_76

    :cond_52
    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_57
    return-object v2

    :catch_58
    move-exception v2

    goto :goto_5f

    :catchall_5a
    move-exception p1

    goto :goto_78

    :catch_5c
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_5f
    :try_start_5f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_76

    if-eqz v1, :cond_75

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_75
    return-object v0

    :catchall_76
    move-exception p1

    move-object v0, v1

    :goto_78
    if-eqz v0, :cond_7d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw p1
.end method

.method final zzbp(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/measurement/la;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_e
    const-string v1, "audience_filter_values"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "audience_id"

    const/4 v9, 0x0

    aput-object v3, v2, v9

    const-string v3, "current_results"

    const/4 v10, 0x1

    aput-object v3, v2, v10

    const-string v3, "app_id=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_2a} :catch_7e
    .catchall {:try_start_e .. :try_end_2a} :catchall_7c

    :try_start_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_2e} :catch_7a
    .catchall {:try_start_2a .. :try_end_2e} :catchall_98

    if-nez v1, :cond_36

    if-eqz v0, :cond_35

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_35
    return-object v8

    :cond_36
    :try_start_36
    new-instance v1, Labcd/k;

    invoke-direct {v1}, Labcd/k;-><init>()V

    :cond_3b
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v9, v4}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/la;-><init>()V
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_4d} :catch_7a
    .catchall {:try_start_36 .. :try_end_4d} :catchall_98

    :try_start_4d
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/la;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_50} :catch_7a
    .catchall {:try_start_4d .. :try_end_50} :catchall_98

    :try_start_50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    :catch_58
    move-exception v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_72} :catch_7a
    .catchall {:try_start_50 .. :try_end_72} :catchall_98

    if-nez v2, :cond_3b

    if-eqz v0, :cond_79

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_79
    return-object v1

    :catch_7a
    move-exception v1

    goto :goto_81

    :catchall_7c
    move-exception p1

    goto :goto_9a

    :catch_7e
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_81
    :try_start_81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_92
    .catchall {:try_start_81 .. :try_end_92} :catchall_98

    if-eqz v0, :cond_97

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_97
    return-object v8

    :catchall_98
    move-exception p1

    move-object v8, v0

    :goto_9a
    if-eqz v8, :cond_9f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9f
    goto :goto_a1

    :goto_a0
    throw p1

    :goto_a1
    goto :goto_a0
.end method

.method public final zzbq(Ljava/lang/String;)J
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-wide/16 v1, 0x0

    const-string p1, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3f

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(I)I

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzip()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_75

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_75
    :try_start_75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7f

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_9c} :catch_9d

    return-void

    :catch_9d
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;
    .registers 25

    move-object/from16 v15, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/16 v16, 0x0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "lifetime_count"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const-string v0, "current_bundle_count"

    const/4 v10, 0x1

    aput-object v0, v3, v10

    const-string v0, "last_fire_timestamp"

    const/4 v11, 0x2

    aput-object v0, v3, v11

    const-string v0, "last_bundled_timestamp"

    const/4 v12, 0x3

    aput-object v0, v3, v12

    const-string v0, "last_bundled_day"

    const/4 v13, 0x4

    aput-object v0, v3, v13

    const-string v0, "last_sampled_complex_event_id"

    const/4 v14, 0x5

    aput-object v0, v3, v14

    const-string v0, "last_sampling_rate"

    const/4 v8, 0x6

    aput-object v0, v3, v8

    const-string v0, "last_exempt_from_sampling"

    const/4 v7, 0x7

    aput-object v0, v3, v7

    const-string v4, "app_id=? and name=?"

    new-array v5, v11, [Ljava/lang/String;

    aput-object p1, v5, v9

    aput-object v15, v5, v10

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object v7, v0

    const/4 v0, 0x6

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_56} :catch_111
    .catchall {:try_start_10 .. :try_end_56} :catchall_10f

    :try_start_56
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_5a} :catch_109
    .catchall {:try_start_56 .. :try_end_5a} :catchall_103

    if-nez v1, :cond_62

    if-eqz v8, :cond_61

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_61
    return-object v16

    :cond_62
    :try_start_62
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v8, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_78

    const-wide/16 v1, 0x0

    :goto_76
    move-wide v11, v1

    goto :goto_7d

    :cond_78
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_76

    :goto_7d
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_86

    move-object/from16 v13, v16

    goto :goto_8f

    :cond_86
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v13, v1

    :goto_8f
    invoke-interface {v8, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_98

    move-object/from16 v14, v16

    goto :goto_a1

    :cond_98
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v14, v1

    :goto_a1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    move-object/from16 v0, v16

    goto :goto_b2

    :cond_aa
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_b2
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_cb

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v17, 0x1

    cmp-long v3, v1, v17

    if-nez v3, :cond_c4

    const/4 v9, 0x1

    :cond_c4
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_cd

    :cond_cb
    move-object/from16 v17, v16

    :goto_cd
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzac;
    :try_end_cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_cf} :catch_109
    .catchall {:try_start_62 .. :try_end_cf} :catchall_103

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v21, v8

    move-wide/from16 v8, v19

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    move-object v14, v0

    move-object/from16 v15, v17

    :try_start_df
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Got multiple records for event aggregates, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_df .. :try_end_f9} :catch_101
    .catchall {:try_start_df .. :try_end_f9} :catchall_ff

    :cond_f9
    if-eqz v21, :cond_fe

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_fe
    return-object v18

    :catchall_ff
    move-exception v0

    goto :goto_106

    :catch_101
    move-exception v0

    goto :goto_10c

    :catchall_103
    move-exception v0

    move-object/from16 v21, v8

    :goto_106
    move-object/from16 v16, v21

    goto :goto_138

    :catch_109
    move-exception v0

    move-object/from16 v21, v8

    :goto_10c
    move-object/from16 v8, v21

    goto :goto_114

    :catchall_10f
    move-exception v0

    goto :goto_138

    :catch_111
    move-exception v0

    move-object/from16 v8, v16

    :goto_114
    :try_start_114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error querying events. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12f
    .catchall {:try_start_114 .. :try_end_12f} :catchall_135

    if-eqz v8, :cond_134

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_134
    return-object v16

    :catchall_135
    move-exception v0

    move-object/from16 v16, v8

    :goto_138
    if-eqz v16, :cond_13d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_13d
    goto :goto_13f

    :goto_13e
    throw v0

    :goto_13f
    goto :goto_13e
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Deleted user attribute rows"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Error deleting user attribute. appId"

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfx;
    .registers 21

    move-object/from16 v8, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v9, 0x0

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "user_attributes"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const-string v0, "set_timestamp"

    const/4 v1, 0x0

    aput-object v0, v12, v1

    const-string v0, "value"

    const/4 v2, 0x1

    aput-object v0, v12, v2

    const-string v0, "origin"

    const/4 v3, 0x2

    aput-object v0, v12, v3

    const-string v13, "app_id=? and name=?"

    new-array v14, v3, [Ljava/lang/String;

    aput-object p1, v14, v1

    aput-object v8, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_38} :catch_88
    .catchall {:try_start_f .. :try_end_38} :catchall_84

    :try_start_38
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_3c} :catch_80
    .catchall {:try_start_38 .. :try_end_3c} :catchall_7b

    if-nez v0, :cond_44

    if-eqz v10, :cond_43

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_43
    return-object v9

    :cond_44
    :try_start_44
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_48} :catch_80
    .catchall {:try_start_44 .. :try_end_48} :catchall_7b

    move-object/from16 v11, p0

    :try_start_4a
    invoke-direct {v11, v10, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfx;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Got multiple records for user property, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_73
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a .. :try_end_73} :catch_79
    .catchall {:try_start_4a .. :try_end_73} :catchall_ab

    :cond_73
    if-eqz v10, :cond_78

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_78
    return-object v0

    :catch_79
    move-exception v0

    goto :goto_8c

    :catchall_7b
    move-exception v0

    move-object/from16 v11, p0

    :goto_7e
    move-object v9, v10

    goto :goto_ad

    :catch_80
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_8c

    :catchall_84
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_ad

    :catch_88
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    :goto_8c
    :try_start_8c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error querying user property. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a5
    .catchall {:try_start_8c .. :try_end_a5} :catchall_ab

    if-eqz v10, :cond_aa

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_aa
    return-object v9

    :catchall_ab
    move-exception v0

    goto :goto_7e

    :goto_ad
    if-eqz v9, :cond_b2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b2
    goto :goto_b4

    :goto_b3
    throw v0

    :goto_b4
    goto :goto_b3
.end method

.method public final zzih()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_b} :catch_28
    .catchall {:try_start_5 .. :try_end_b} :catchall_26

    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_16} :catch_24
    .catchall {:try_start_b .. :try_end_16} :catchall_22

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1b
    return-object v1

    :cond_1c
    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_21
    return-object v1

    :catchall_22
    move-exception v1

    goto :goto_3e

    :catch_24
    move-exception v2

    goto :goto_2b

    :catchall_26
    move-exception v0

    goto :goto_41

    :catch_28
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_22

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v1

    :goto_3e
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_41
    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    throw v0
.end method

.method public final zzii()Z
    .registers 6

    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method final zzij()V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzip()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzand:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzajs:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_86

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzand:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzip()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzq;->zzib()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_86

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_86
    return-void
.end method

.method public final zzik()J
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, "select max(bundle_end_timestamp) from queue"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzil()J
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, "select max(timestamp) from raw_events"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzim()Z
    .registers 6

    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzin()Z
    .registers 6

    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzio()J
    .registers 7

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_11} :catch_26
    .catchall {:try_start_3 .. :try_end_11} :catchall_24

    if-nez v3, :cond_19

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_18
    return-wide v0

    :cond_19
    const/4 v3, 0x0

    :try_start_1a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1e} :catch_26
    .catchall {:try_start_1a .. :try_end_1e} :catchall_24

    if-eqz v2, :cond_23

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_23
    return-wide v0

    :catchall_24
    move-exception v0

    goto :goto_3a

    :catch_26
    move-exception v3

    :try_start_27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_24

    if-eqz v2, :cond_39

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_39
    return-wide v0

    :goto_3a
    if-eqz v2, :cond_3f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;
    .registers 35

    move-object/from16 v7, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v8, 0x0

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "conditional_properties"

    const/16 v0, 0xb

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "origin"

    const/4 v1, 0x0

    aput-object v0, v11, v1

    const-string v0, "value"

    const/4 v2, 0x1

    aput-object v0, v11, v2

    const-string v0, "active"

    const/4 v3, 0x2

    aput-object v0, v11, v3

    const-string v0, "trigger_event_name"

    const/4 v4, 0x3

    aput-object v0, v11, v4

    const-string v0, "trigger_timeout"

    const/4 v5, 0x4

    aput-object v0, v11, v5

    const-string v0, "timed_out_event"

    const/4 v6, 0x5

    aput-object v0, v11, v6

    const-string v0, "creation_timestamp"

    const/4 v15, 0x6

    aput-object v0, v11, v15

    const-string v0, "triggered_event"

    const/4 v14, 0x7

    aput-object v0, v11, v14

    const-string v0, "triggered_timestamp"

    const/16 v13, 0x8

    aput-object v0, v11, v13

    const-string v0, "time_to_live"

    const/16 v12, 0x9

    aput-object v0, v11, v12

    const-string v0, "expired_event"

    const/16 v6, 0xa

    aput-object v0, v11, v6

    const-string v0, "app_id=? and name=?"

    new-array v13, v3, [Ljava/lang/String;

    aput-object p1, v13, v1

    aput-object v7, v13, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v6, 0x9

    move-object v12, v0

    const/16 v0, 0x8

    const/4 v6, 0x7

    move-object/from16 v14, v17

    const/4 v0, 0x6

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_72} :catch_12f
    .catchall {:try_start_f .. :try_end_72} :catchall_12b

    :try_start_72
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_76} :catch_127
    .catchall {:try_start_72 .. :try_end_76} :catchall_122

    if-nez v10, :cond_7e

    if-eqz v9, :cond_7d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7d
    return-object v8

    :cond_7e
    :try_start_7e
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7e .. :try_end_82} :catch_127
    .catchall {:try_start_7e .. :try_end_82} :catchall_122

    move-object/from16 v10, p0

    :try_start_84
    invoke-direct {v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_91

    const/16 v23, 0x1

    goto :goto_93

    :cond_91
    const/16 v23, 0x0

    :goto_93
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/google/android/gms/measurement/internal/zzag;

    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v20, Lcom/google/android/gms/measurement/internal/zzfv;

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object v5, v11

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzo;

    move-object/from16 v17, v0

    move-object/from16 v18, p1

    move-wide/from16 v21, v12

    invoke-direct/range {v17 .. v31}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;)V

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Got multiple records for conditional property, expected one"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_84 .. :try_end_11a} :catch_120
    .catchall {:try_start_84 .. :try_end_11a} :catchall_152

    :cond_11a
    if-eqz v9, :cond_11f

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11f
    return-object v0

    :catch_120
    move-exception v0

    goto :goto_133

    :catchall_122
    move-exception v0

    move-object/from16 v10, p0

    :goto_125
    move-object v8, v9

    goto :goto_154

    :catch_127
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_133

    :catchall_12b
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_154

    :catch_12f
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    :goto_133
    :try_start_133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error querying conditional property"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14c
    .catchall {:try_start_133 .. :try_end_14c} :catchall_152

    if-eqz v9, :cond_151

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_151
    return-object v8

    :catchall_152
    move-exception v0

    goto :goto_125

    :goto_154
    if-eqz v8, :cond_159

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_159
    goto :goto_15b

    :goto_15a
    throw v0

    :goto_15b
    goto :goto_15a
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    const/4 v0, 0x0

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_21} :catch_22

    return p1

    :catch_22
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "Error deleting conditional property"

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method final zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/X;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_16
    const-string v2, "event_filters"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "audience_id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "data"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const-string v5, "app_id=? AND event_name=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v10

    aput-object p2, v6, v11

    const/4 p2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_38} :catch_9b
    .catchall {:try_start_16 .. :try_end_38} :catchall_99

    :try_start_38
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_42} :catch_97
    .catchall {:try_start_38 .. :try_end_42} :catchall_b5

    if-eqz p2, :cond_47

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_47
    return-object p1

    :cond_48
    :try_start_48
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/X;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/X;-><init>()V
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_56} :catch_97
    .catchall {:try_start_48 .. :try_end_56} :catchall_b5

    :try_start_56
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/X;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_59} :catch_97
    .catchall {:try_start_56 .. :try_end_59} :catchall_b5

    :try_start_59
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_75

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :catch_79
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8b
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_8f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_8f} :catch_97
    .catchall {:try_start_59 .. :try_end_8f} :catchall_b5

    if-nez v1, :cond_48

    if-eqz p2, :cond_96

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_96
    return-object v0

    :catch_97
    move-exception v0

    goto :goto_9e

    :catchall_99
    move-exception p1

    goto :goto_b7

    :catch_9b
    move-exception p2

    move-object v0, p2

    move-object p2, v9

    :goto_9e
    :try_start_9e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_9e .. :try_end_af} :catchall_b5

    if-eqz p2, :cond_b4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_b4
    return-object v9

    :catchall_b5
    move-exception p1

    move-object v9, p2

    :goto_b7
    if-eqz v9, :cond_bc

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_bc
    goto :goto_be

    :goto_bd
    throw p1

    :goto_be
    goto :goto_bd
.end method

.method final zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/aa;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_16
    const-string v2, "property_filters"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "audience_id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "data"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const-string v5, "app_id=? AND property_name=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v10

    aput-object p2, v6, v11

    const/4 p2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_38} :catch_9b
    .catchall {:try_start_16 .. :try_end_38} :catchall_99

    :try_start_38
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_42} :catch_97
    .catchall {:try_start_38 .. :try_end_42} :catchall_b5

    if-eqz p2, :cond_47

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_47
    return-object p1

    :cond_48
    :try_start_48
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/aa;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/aa;-><init>()V
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_56} :catch_97
    .catchall {:try_start_48 .. :try_end_56} :catchall_b5

    :try_start_56
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/aa;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_59} :catch_97
    .catchall {:try_start_56 .. :try_end_59} :catchall_b5

    :try_start_59
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_75

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :catch_79
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8b
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_8f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_8f} :catch_97
    .catchall {:try_start_59 .. :try_end_8f} :catchall_b5

    if-nez v1, :cond_48

    if-eqz p2, :cond_96

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_96
    return-object v0

    :catch_97
    move-exception v0

    goto :goto_9e

    :catchall_99
    move-exception p1

    goto :goto_b7

    :catch_9b
    move-exception p2

    move-object v0, p2

    move-object p2, v9

    :goto_9e
    :try_start_9e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_9e .. :try_end_af} :catchall_b5

    if-eqz p2, :cond_b4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_b4
    return-object v9

    :catchall_b5
    move-exception p1

    move-object v9, p2

    :goto_b7
    if-eqz v9, :cond_bc

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_bc
    goto :goto_be

    :goto_bd
    throw p1

    :goto_be
    goto :goto_bd
.end method

.method protected final zzn(Ljava/lang/String;Ljava/lang/String;)J
    .registers 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v4, 0x0

    :try_start_19
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "select "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from app2 where app_id=?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3f} :catch_cb
    .catchall {:try_start_19 .. :try_end_3f} :catchall_cf

    const-wide/16 v9, -0x1

    move-object/from16 v11, p0

    :try_start_43
    invoke-direct {v11, v0, v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v12
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_47} :catch_c9
    .catchall {:try_start_43 .. :try_end_47} :catchall_e9

    const-string v0, "app2"

    const-string v7, "app_id"

    cmp-long v14, v12, v9

    if-nez v14, :cond_89

    :try_start_4f
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v12, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "first_open_count"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "previous_install_count"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v3, v0, v13, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-nez v14, :cond_88

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v6, "Failed to insert column (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_84} :catch_c9
    .catchall {:try_start_4f .. :try_end_84} :catchall_e9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v9

    :cond_88
    move-wide v12, v4

    :cond_89
    :try_start_89
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v15, 0x1

    add-long/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "app_id = ?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-virtual {v3, v0, v14, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-nez v0, :cond_bf

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v4, "Failed to update column (got 0). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_bb} :catch_c6
    .catchall {:try_start_89 .. :try_end_bb} :catchall_e9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v9

    :cond_bf
    :try_start_bf
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_c2} :catch_c6
    .catchall {:try_start_bf .. :try_end_c2} :catchall_e9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_e8

    :catch_c6
    move-exception v0

    move-wide v4, v12

    goto :goto_d3

    :catch_c9
    move-exception v0

    goto :goto_d3

    :catch_cb
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_d3

    :catchall_cf
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_ea

    :goto_d3
    :try_start_d3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v6

    const-string v7, "Error inserting column. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_d3 .. :try_end_e4} :catchall_e9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v12, v4

    :goto_e8
    return-wide v12

    :catchall_e9
    move-exception v0

    :goto_ea
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
