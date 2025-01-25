.class public final Lcom/google/android/gms/measurement/internal/zzao;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private final zzalm:Lcom/google/android/gms/measurement/internal/zzap;

.field private zzaln:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzao;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzalm:Lcom/google/android/gms/measurement/internal/zzap;

    return-void
.end method

.method private final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzalm:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method private final zza(I[B)Z
    .registers 20

    move-object/from16 v1, p0

    const-string v2, "Error writing entry to local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgg()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzaf()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    return v3

    :cond_10
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v5, p2

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    :goto_28
    if-ge v6, v5, :cond_14f

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_2c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_30} :catch_124
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2c .. :try_end_30} :catch_10f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_30} :catch_e5
    .catchall {:try_start_2c .. :try_end_30} :catchall_df

    if-nez v10, :cond_43

    :try_start_32
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_32 .. :try_end_34} :catch_40
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_32 .. :try_end_34} :catch_d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_34} :catch_3d
    .catchall {:try_start_32 .. :try_end_34} :catchall_3a

    if-eqz v10, :cond_39

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_39
    return v3

    :catchall_3a
    move-exception v0

    goto/16 :goto_144

    :catch_3d
    move-exception v0

    goto/16 :goto_d4

    :catch_40
    move-exception v0

    goto/16 :goto_128

    :cond_43
    :try_start_43
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    invoke-virtual {v10, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_43 .. :try_end_4c} :catch_db
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_43 .. :try_end_4c} :catch_d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_4c} :catch_d1
    .catchall {:try_start_43 .. :try_end_4c} :catchall_cc

    if-eqz v11, :cond_59

    :try_start_4e
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4e .. :try_end_58} :catch_a9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4e .. :try_end_58} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_58} :catch_a5
    .catchall {:try_start_4e .. :try_end_58} :catchall_a3

    goto :goto_5b

    :cond_59
    const-wide/16 v12, 0x0

    :goto_5b
    const-string v0, "messages"

    const-wide/32 v14, 0x186a0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_ab

    :try_start_64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v9, "Data loss, local db full"

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    sub-long/2addr v14, v12

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    const-string v5, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3

    invoke-virtual {v10, v0, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v12, v5

    cmp-long v5, v12, v14

    if-eqz v5, :cond_ab

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v9, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v9, v3, v8, v12}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ab

    :catchall_a3
    move-exception v0

    goto :goto_c1

    :catch_a5
    move-exception v0

    goto :goto_c4

    :catch_a7
    move-exception v0

    goto :goto_c6

    :catch_a9
    move-exception v0

    goto :goto_c9

    :cond_ab
    :goto_ab
    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_64 .. :try_end_b5} :catch_a9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_64 .. :try_end_b5} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_b5} :catch_a5
    .catchall {:try_start_64 .. :try_end_b5} :catchall_a3

    if-eqz v11, :cond_ba

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_ba
    if-eqz v10, :cond_bf

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_bf
    const/4 v2, 0x1

    return v2

    :goto_c1
    move-object v9, v11

    goto/16 :goto_144

    :goto_c4
    move-object v9, v11

    goto :goto_d4

    :goto_c6
    move-object v9, v11

    goto/16 :goto_113

    :goto_c9
    move-object v9, v11

    goto/16 :goto_128

    :catchall_cc
    move-exception v0

    move-object v3, v9

    :goto_ce
    move-object v9, v3

    goto/16 :goto_144

    :catch_d1
    move-exception v0

    move-object v3, v9

    move-object v9, v3

    :goto_d4
    move-object v3, v9

    move-object v9, v10

    goto :goto_e8

    :catch_d7
    move-exception v0

    move-object v3, v9

    move-object v9, v3

    goto :goto_113

    :catch_db
    move-exception v0

    move-object v3, v9

    move-object v9, v3

    goto :goto_128

    :catchall_df
    move-exception v0

    move-object v3, v9

    move-object v9, v3

    move-object v10, v9

    goto/16 :goto_144

    :catch_e5
    move-exception v0

    move-object v3, v9

    move-object v9, v3

    :goto_e8
    if-eqz v9, :cond_f3

    :try_start_ea
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_f3

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_f3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z
    :try_end_101
    .catchall {:try_start_ea .. :try_end_101} :catchall_10c

    if-eqz v3, :cond_106

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_106
    if-eqz v9, :cond_13e

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_13e

    :catchall_10c
    move-exception v0

    move-object v10, v9

    goto :goto_ce

    :catch_10f
    move-exception v0

    move-object v3, v9

    move-object v9, v3

    move-object v10, v9

    :goto_113
    int-to-long v11, v7

    :try_start_114
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_3a

    add-int/lit8 v7, v7, 0x14

    if-eqz v9, :cond_11e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11e
    if-eqz v10, :cond_13e

    :goto_120
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_13e

    :catch_124
    move-exception v0

    move-object v3, v9

    move-object v9, v3

    move-object v10, v9

    :goto_128
    :try_start_128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z
    :try_end_136
    .catchall {:try_start_128 .. :try_end_136} :catchall_3a

    if-eqz v9, :cond_13b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_13b
    if-eqz v10, :cond_13e

    goto :goto_120

    :cond_13e
    :goto_13e
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_28

    :goto_144
    if-eqz v9, :cond_149

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_149
    if-eqz v10, :cond_14e

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14e
    throw v0

    :cond_14f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final resetAnalyticsData()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzaf()V

    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzao;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzag;)Z
    .registers 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return v1

    :cond_22
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzfv;)Z
    .registers 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfv;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return v1

    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzo;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(I[B)Z

    move-result p1

    return p1
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

.method public final zzr(I)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzaf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    return-object v3

    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "google_app_measurement_local.db"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_26

    return-object v4

    :cond_26
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    :goto_2a
    if-ge v7, v5, :cond_1fd

    const/4 v9, 0x1

    :try_start_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2d .. :try_end_31} :catch_1d4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2d .. :try_end_31} :catch_1be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_31} :catch_199
    .catchall {:try_start_2d .. :try_end_31} :catchall_195

    if-nez v15, :cond_46

    :try_start_33
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_33 .. :try_end_35} :catch_42
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_33 .. :try_end_35} :catch_181
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_35} :catch_3e
    .catchall {:try_start_33 .. :try_end_35} :catchall_3b

    if-eqz v15, :cond_3a

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3a
    return-object v3

    :catchall_3b
    move-exception v0

    goto/16 :goto_1f2

    :catch_3e
    move-exception v0

    move-object v10, v3

    goto/16 :goto_19c

    :catch_42
    move-exception v0

    move-object v10, v3

    goto/16 :goto_1d7

    :cond_46
    :try_start_46
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const-string v11, "messages"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v12, v6

    const-string v0, "type"

    aput-object v0, v12, v9

    const-string v0, "entry"

    const/4 v14, 0x2

    aput-object v0, v12, v14

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v19, "rowid asc"
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_46 .. :try_end_69} :catch_184
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_46 .. :try_end_69} :catch_181
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46 .. :try_end_69} :catch_18b
    .catchall {:try_start_46 .. :try_end_69} :catchall_187

    move-object v10, v15

    const/4 v5, 0x2

    move-object v14, v0

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    :try_start_73
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_77
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_73 .. :try_end_77} :catch_17f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_73 .. :try_end_77} :catch_17d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_73 .. :try_end_77} :catch_17b
    .catchall {:try_start_73 .. :try_end_77} :catchall_179

    const-wide/16 v11, -0x1

    :cond_79
    :goto_79
    :try_start_79
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v0, :cond_c1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_79 .. :try_end_91} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_79 .. :try_end_91} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_79 .. :try_end_91} :catch_16e
    .catchall {:try_start_79 .. :try_end_91} :catchall_16a

    :try_start_91
    array-length v0, v13

    invoke-virtual {v14, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzag;
    :try_end_a0
    .catch Lcom/google/android/gms/common/internal/safeparcel/a$a; {:try_start_91 .. :try_end_a0} :catch_ab
    .catchall {:try_start_91 .. :try_end_a0} :catchall_a9

    :try_start_a0
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_79

    :goto_a5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a0 .. :try_end_a8} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a0 .. :try_end_a8} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_a8} :catch_16e
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_16a

    goto :goto_79

    :catchall_a9
    move-exception v0

    goto :goto_bd

    :catch_ab
    move-exception v0

    :try_start_ac
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_ac .. :try_end_b9} :catchall_a9

    :try_start_b9
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    goto :goto_79

    :goto_bd
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_c1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b9 .. :try_end_c1} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b9 .. :try_end_c1} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b9 .. :try_end_c1} :catch_16e
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_16a

    :cond_c1
    const-string v14, "Failed to load user property from local database"

    if-ne v0, v9, :cond_f5

    :try_start_c5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_c9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c5 .. :try_end_c9} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c5 .. :try_end_c9} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c5 .. :try_end_c9} :catch_16e
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_16a

    :try_start_c9
    array-length v0, v13

    invoke-virtual {v15, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfv;
    :try_end_d8
    .catch Lcom/google/android/gms/common/internal/safeparcel/a$a; {:try_start_c9 .. :try_end_d8} :catch_de
    .catchall {:try_start_c9 .. :try_end_d8} :catchall_dc

    :try_start_d8
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_db
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d8 .. :try_end_db} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d8 .. :try_end_db} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d8 .. :try_end_db} :catch_16e
    .catchall {:try_start_d8 .. :try_end_db} :catchall_16a

    goto :goto_ee

    :catchall_dc
    move-exception v0

    goto :goto_f1

    :catch_de
    move-exception v0

    :try_start_df
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_df .. :try_end_ea} :catchall_dc

    :try_start_ea
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_ee
    if-eqz v0, :cond_79

    goto :goto_a5

    :goto_f1
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_f5
    if-ne v0, v5, :cond_127

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_fb
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ea .. :try_end_fb} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ea .. :try_end_fb} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_fb} :catch_16e
    .catchall {:try_start_ea .. :try_end_fb} :catchall_16a

    :try_start_fb
    array-length v0, v13

    invoke-virtual {v15, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzo;
    :try_end_10a
    .catch Lcom/google/android/gms/common/internal/safeparcel/a$a; {:try_start_fb .. :try_end_10a} :catch_110
    .catchall {:try_start_fb .. :try_end_10a} :catchall_10e

    :try_start_10a
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_10d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10a .. :try_end_10d} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10a .. :try_end_10d} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10a .. :try_end_10d} :catch_16e
    .catchall {:try_start_10a .. :try_end_10d} :catchall_16a

    goto :goto_120

    :catchall_10e
    move-exception v0

    goto :goto_123

    :catch_110
    move-exception v0

    :try_start_111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_111 .. :try_end_11c} :catchall_10e

    :try_start_11c
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_120
    if-eqz v0, :cond_79

    goto :goto_a5

    :goto_123
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v13, "Unknown record type in local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto/16 :goto_79

    :cond_136
    const-string v0, "messages"

    const-string v5, "rowid <= ?"

    new-array v13, v9, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v6

    invoke-virtual {v3, v0, v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_159

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v5, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_159
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11c .. :try_end_15f} :catch_175
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11c .. :try_end_15f} :catch_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11c .. :try_end_15f} :catch_16e
    .catchall {:try_start_11c .. :try_end_15f} :catchall_16a

    if-eqz v10, :cond_164

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_164
    if-eqz v3, :cond_169

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_169
    return-object v4

    :catchall_16a
    move-exception v0

    move-object v15, v3

    goto/16 :goto_1d2

    :catch_16e
    move-exception v0

    move-object v15, v3

    goto :goto_19c

    :catch_171
    move-exception v0

    move-object v15, v3

    goto/16 :goto_1c1

    :catch_175
    move-exception v0

    move-object v15, v3

    goto/16 :goto_1d7

    :catchall_179
    move-exception v0

    goto :goto_189

    :catch_17b
    move-exception v0

    goto :goto_18d

    :catch_17d
    move-exception v0

    goto :goto_18f

    :catch_17f
    move-exception v0

    goto :goto_192

    :catch_181
    move-exception v0

    move-object v3, v15

    goto :goto_18f

    :catch_184
    move-exception v0

    move-object v3, v15

    goto :goto_192

    :catchall_187
    move-exception v0

    move-object v3, v15

    :goto_189
    move-object v15, v3

    goto :goto_197

    :catch_18b
    move-exception v0

    move-object v3, v15

    :goto_18d
    move-object v15, v3

    goto :goto_19b

    :goto_18f
    move-object v15, v3

    const/4 v10, 0x0

    goto :goto_1c1

    :goto_192
    move-object v15, v3

    const/4 v10, 0x0

    goto :goto_1d7

    :catchall_195
    move-exception v0

    const/4 v15, 0x0

    :goto_197
    const/4 v3, 0x0

    goto :goto_1f2

    :catch_199
    move-exception v0

    const/4 v15, 0x0

    :goto_19b
    const/4 v10, 0x0

    :goto_19c
    if-eqz v15, :cond_1a7

    :try_start_19e
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_1a7

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1a7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z
    :try_end_1b4
    .catchall {:try_start_19e .. :try_end_1b4} :catchall_1bc

    if-eqz v10, :cond_1b9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1b9
    if-eqz v15, :cond_1ec

    goto :goto_1ce

    :catchall_1bc
    move-exception v0

    goto :goto_1d2

    :catch_1be
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_1c1
    int-to-long v11, v8

    :try_start_1c2
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1c5
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_1bc

    add-int/lit8 v8, v8, 0x14

    if-eqz v10, :cond_1cc

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1cc
    if-eqz v15, :cond_1ec

    :goto_1ce
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1ec

    :goto_1d2
    move-object v3, v10

    goto :goto_1f2

    :catch_1d4
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_1d7
    :try_start_1d7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzaln:Z
    :try_end_1e4
    .catchall {:try_start_1d7 .. :try_end_1e4} :catchall_1bc

    if-eqz v10, :cond_1e9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1e9
    if-eqz v15, :cond_1ec

    goto :goto_1ce

    :cond_1ec
    :goto_1ec
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_2a

    :goto_1f2
    if-eqz v3, :cond_1f7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1f7
    if-eqz v15, :cond_1fc

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1fc
    throw v0

    :cond_1fd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method
