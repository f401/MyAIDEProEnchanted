.class public Labcd/pw;
.super Ljava/lang/Object;


# static fields
.field public static DW:I = 0x1

.field public static FH:I = 0x2

.field private static final Hw:Ljava/lang/Object;

.field private static Zo:J

.field public static j6:I

.field private static v5:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/pw;->Hw:Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Labcd/pw;->v5:Lorg/json/JSONObject;

    const-wide/16 v0, -0x1

    sput-wide v0, Labcd/pw;->Zo:J

    return-void
.end method

.method public static DW(Labcd/lw;Z)I
    .registers 4

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/pw;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Labcd/pw;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static DW()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Labcd/uw;->j6(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "appstate.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has_occurred_for_app_version_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static FH(Labcd/lw;Z)I
    .registers 4

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/pw;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Labcd/pw;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static FH()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has_occurred_for_day_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Hw(Labcd/lw;Z)I
    .registers 4

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/pw;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Labcd/pw;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static Hw()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getTimeSinceInstall()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has_occurred_for_month_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static VH()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getTimeSinceInstall()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Zo()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getTimeSinceInstall()J

    move-result-wide v1

    const-wide/32 v3, -0x605adc00

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Zo(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Labcd/pw;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Labcd/pw;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Labcd/pw;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Labcd/pw;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Labcd/pw;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Labcd/pw;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Labcd/pw;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Labcd/pw;->VH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Labcd/pw;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Labcd/pw;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static gn()V
    .registers 9

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    new-instance v2, Ljava/io/FileReader;

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :try_start_11
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_50

    :try_start_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x10000

    new-array v6, v5, [C

    :goto_1f
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v8

    if-ltz v8, :cond_2a

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_2a
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v5, Labcd/pw;->v5:Lorg/json/JSONObject;

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3d

    sput-wide v0, Labcd/pw;->Zo:J
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_44

    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_50

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    return-void

    :catchall_44
    move-exception v0

    :try_start_45
    throw v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v1

    :try_start_47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-static {v0, v3}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4f
    throw v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    :try_start_51
    throw v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v1

    :try_start_53
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v2

    invoke-static {v0, v2}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5b
    goto :goto_5d

    :goto_5c
    throw v1

    :goto_5d
    goto :goto_5c
.end method

.method public static j6(Labcd/lw;Z)I
    .registers 4

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/pw;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Labcd/pw;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Labcd/pw;->Hw:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    new-instance v3, Labcd/tw;

    invoke-static {}, Labcd/pw;->v5()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Labcd/tw;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v3}, Labcd/tw;->j6()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_114
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_14} :catch_112
    .catchall {:try_start_7 .. :try_end_14} :catchall_110

    :try_start_14
    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_93

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sget-wide v10, Labcd/pw;->Zo:J

    cmp-long v4, v10, v8

    if-eqz v4, :cond_32

    invoke-static {}, Labcd/pw;->gn()V

    goto :goto_33

    :cond_32
    const/4 v5, 0x0

    :goto_33
    sget-object v4, Labcd/pw;->v5:Lorg/json/JSONObject;

    invoke-virtual {v4, p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    if-eqz v5, :cond_61

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Reading appstate value elapsed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "App state"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    sget p0, Labcd/pw;->DW:I
    :try_end_63
    .catchall {:try_start_14 .. :try_end_63} :catchall_10b

    :try_start_63
    invoke-virtual {v3}, Labcd/tw;->DW()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_114
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_66} :catch_112
    .catchall {:try_start_63 .. :try_end_66} :catchall_110

    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_110

    return p0

    :cond_68
    if-nez p3, :cond_9c

    if-eqz v5, :cond_8c

    :try_start_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Reading appstate value elapsed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "App state"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    sget p0, Labcd/pw;->j6:I
    :try_end_8e
    .catchall {:try_start_6c .. :try_end_8e} :catchall_10b

    :try_start_8e
    invoke-virtual {v3}, Labcd/tw;->DW()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_114
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_91} :catch_112
    .catchall {:try_start_8e .. :try_end_91} :catchall_110

    :try_start_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_110

    return p0

    :cond_93
    if-nez p3, :cond_9c

    :try_start_95
    sget p0, Labcd/pw;->j6:I
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_10b

    :try_start_97
    invoke-virtual {v3}, Labcd/tw;->DW()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_114
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_9a} :catch_112
    .catchall {:try_start_97 .. :try_end_9a} :catchall_110

    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_110

    return p0

    :cond_9c
    :try_start_9c
    invoke-virtual {v3}, Labcd/tw;->DW()V

    new-instance p3, Labcd/tw;

    invoke-static {}, Labcd/pw;->v5()Ljava/io/File;

    move-result-object v3

    invoke-direct {p3, v3, v7}, Labcd/tw;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p3}, Labcd/tw;->j6()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_ab} :catch_114
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_ab} :catch_112
    .catchall {:try_start_9c .. :try_end_ab} :catchall_110

    :try_start_ab
    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v7, Labcd/pw;->Zo:J

    cmp-long v5, v7, v3

    if-eqz v5, :cond_c6

    invoke-static {}, Labcd/pw;->gn()V

    :cond_c6
    sget-object v3, Labcd/pw;->v5:Lorg/json/JSONObject;

    invoke-virtual {v3, p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d9

    sget p0, Labcd/pw;->DW:I
    :try_end_d4
    .catchall {:try_start_ab .. :try_end_d4} :catchall_106

    :try_start_d4
    invoke-virtual {p3}, Labcd/tw;->DW()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_114
    .catch Lorg/json/JSONException; {:try_start_d4 .. :try_end_d7} :catch_112
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_110

    :try_start_d7
    monitor-exit v2
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_110

    return p0

    :cond_d9
    :try_start_d9
    invoke-static {p0}, Labcd/pw;->Zo(Ljava/lang/String;)V

    invoke-static {}, Labcd/pw;->u7()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Saving appstate elapsed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "App state"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Labcd/pw;->FH:I
    :try_end_101
    .catchall {:try_start_d9 .. :try_end_101} :catchall_106

    :try_start_101
    invoke-virtual {p3}, Labcd/tw;->DW()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_114
    .catch Lorg/json/JSONException; {:try_start_101 .. :try_end_104} :catch_112
    .catchall {:try_start_101 .. :try_end_104} :catchall_110

    :try_start_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_110

    return p0

    :catchall_106
    move-exception p0

    :try_start_107
    invoke-virtual {p3}, Labcd/tw;->DW()V

    throw p0

    :catchall_10b
    move-exception p0

    invoke-virtual {v3}, Labcd/tw;->DW()V

    throw p0
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_110} :catch_114
    .catch Lorg/json/JSONException; {:try_start_107 .. :try_end_110} :catch_112
    .catchall {:try_start_107 .. :try_end_110} :catchall_110

    :catchall_110
    move-exception p0

    goto :goto_11e

    :catch_112
    move-exception p0

    goto :goto_115

    :catch_114
    move-exception p0

    :goto_115
    :try_start_115
    const-string p1, "I/O error accessing appstate"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget p0, Labcd/pw;->j6:I

    monitor-exit v2

    return p0

    :goto_11e
    monitor-exit v2
    :try_end_11f
    .catchall {:try_start_115 .. :try_end_11f} :catchall_110

    throw p0
.end method

.method private static j6()Ljava/lang/String;
    .registers 1

    const-string v0, "true"

    return-object v0
.end method

.method private static j6(Labcd/lw;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has_occurred_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Labcd/pw;->v5:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static u7()V
    .registers 8

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "tmp"

    const-string v4, "json"

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_a1

    :try_start_1d
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_95

    :try_start_27
    sget-object v5, Labcd/pw;->v5:Lorg/json/JSONObject;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_89

    :try_start_3b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_95

    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_79

    cmp-long v5, v3, v0

    if-nez v5, :cond_73

    invoke-static {}, Labcd/pw;->DW()Ljava/io/File;

    move-result-object v0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_73

    :cond_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not bump app state last modified."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_73
    sput-wide v3, Labcd/pw;->Zo:J
    :try_end_75
    .catchall {:try_start_3e .. :try_end_75} :catchall_a1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :cond_79
    :try_start_79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "App state file vanished after creation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not rename temp file to app state file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_89
    .catchall {:try_start_79 .. :try_end_89} :catchall_a1

    :catchall_89
    move-exception v0

    :try_start_8a
    throw v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v1

    :try_start_8c
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v4

    :try_start_91
    invoke-static {v0, v4}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_94
    throw v1
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception v0

    :try_start_96
    throw v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v1

    :try_start_98
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception v3

    :try_start_9d
    invoke-static {v0, v3}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a0
    throw v1
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public static v5(Labcd/lw;Z)I
    .registers 4

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Labcd/pw;->j6(Labcd/lw;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/pw;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Labcd/pw;->VH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Labcd/pw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static v5()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Labcd/uw;->j6(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "appstate.json.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static v5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has_occurred_for_week_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
