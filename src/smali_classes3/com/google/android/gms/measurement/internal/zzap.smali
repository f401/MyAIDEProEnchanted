.class final Lcom/google/android/gms/measurement/internal/zzap;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private final zzalo:Lcom/google/android/gms/measurement/internal/zzao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzao;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzap;->zzalo:Lcom/google/android/gms/measurement/internal/zzao;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_4} :catch_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->zzalo:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Opening the local database failed, dropping and recreating it"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->zzalo:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->zzalo:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Failed to delete corrupted local db file"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_36
    :try_start_36
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzap;->zzalo:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to open local database. Events will bypass local storage"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :catch_4d
    move-exception v0

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->zzalo:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzas;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1d

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "PRAGMA journal_mode=memory"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    :catchall_16
    move-exception p1

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1c
    throw p1

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->zzalo:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v3, "messages"

    const-string v4, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)"

    const-string v5, "type,entry"

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzas;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
