.class final Lcom/google/firebase/iid/zzaw;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Lcom/google/firebase/iid/X;

.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/Y;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/google/firebase/iid/X;

    invoke-direct {v0}, Lcom/google/firebase/iid/X;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/zzaw;-><init>(Landroid/content/Context;Lcom/google/firebase/iid/X;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/X;)V
    .registers 6

    const-string v0, "FirebaseInstanceId"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/k;

    invoke-direct {v1}, Labcd/k;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/iid/zzaw;->Hw:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/iid/zzaw;->DW:Landroid/content/Context;

    const-string v1, "com.google.android.gms.appid"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/firebase/iid/zzaw;->FH:Lcom/google/firebase/iid/X;

    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "com.google.android.gms.appid-no-backup"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6b

    :try_start_2a
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0}, Lcom/google/firebase/iid/zzaw;->FH()Z

    move-result p1

    if-nez p1, :cond_45

    const-string p1, "App restored, clearing state"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaw;->DW()V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->VH()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_45} :catch_46

    :cond_45
    return-void

    :catch_46
    move-exception p1

    const/4 p2, 0x3

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6b

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, "Error creating file in no backup dir: "

    if-eqz p2, :cond_63

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_68

    :cond_63
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_68
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    return-void
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|T|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final FH()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|S|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)Lcom/google/firebase/iid/Y;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/Y;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_34

    if-eqz v0, :cond_d

    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->FH:Lcom/google/firebase/iid/X;

    iget-object v1, p0, Lcom/google/firebase/iid/zzaw;->DW:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/X;->j6(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object v0
    :try_end_15
    .catch Lcom/google/firebase/iid/d; {:try_start_d .. :try_end_15} :catch_16
    .catchall {:try_start_d .. :try_end_15} :catchall_34

    goto :goto_2d

    :catch_16
    move-exception v0

    :try_start_17
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Stored data is corrupt, generating new identity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->VH()V

    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->FH:Lcom/google/firebase/iid/X;

    iget-object v1, p0, Lcom/google/firebase/iid/zzaw;->DW:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/X;->DW(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object v0

    :goto_2d
    iget-object v1, p0, Lcom/google/firebase/iid/zzaw;->Hw:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_34

    monitor-exit p0

    return-object v0

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final DW()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/iid/X;->j6(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final FH(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "|T|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1f

    :cond_35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    goto :goto_3e

    :goto_3d
    throw p1

    :goto_3e
    goto :goto_3d
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/x;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    invoke-static {p1, p2, p3}, Lcom/google/firebase/iid/zzaw;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/iid/x;->j6(Ljava/lang/String;)Lcom/google/firebase/iid/x;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    const-string v1, "topic_operaion_queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "topic_operaion_queue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Lcom/google/firebase/iid/x;->j6(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p4
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    if-nez p4, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object p5, p0, Lcom/google/firebase/iid/zzaw;->j6:Landroid/content/SharedPreferences;

    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    invoke-static {p1, p2, p3}, Lcom/google/firebase/iid/zzaw;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
