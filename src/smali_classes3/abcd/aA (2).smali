.class Labcd/aA;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Zz;


# instance fields
.field private final j6:Lio/fabric/sdk/android/Kit;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/aA;->j6:Lio/fabric/sdk/android/Kit;

    return-void
.end method


# virtual methods
.method public j6()Lorg/json/JSONObject;
    .registers 8

    const-string v0, "Error while closing settings cache file."

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Reading cached settings..."

    const-string v3, "Fabric"

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_e
    new-instance v2, Ljava/io/File;

    new-instance v4, Labcd/Pz;

    iget-object v5, p0, Labcd/aA;->j6:Lio/fabric/sdk/android/Kit;

    invoke-direct {v4, v5}, Labcd/Pz;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v4}, Labcd/Pz;->j6()Ljava/io/File;

    move-result-object v4

    const-string v5, "com.crashlytics.settings.json"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_38

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_49
    .catchall {:try_start_e .. :try_end_2b} :catchall_47

    :try_start_2b
    invoke-static {v4}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_36
    .catchall {:try_start_2b .. :try_end_34} :catchall_58

    move-object v1, v4

    goto :goto_42

    :catch_36
    move-exception v2

    goto :goto_4b

    :cond_38
    :try_start_38
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v4, "No cached settings found."

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_49
    .catchall {:try_start_38 .. :try_end_41} :catchall_47

    move-object v5, v1

    :goto_42
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_57

    :catchall_47
    move-exception v2

    goto :goto_5b

    :catch_49
    move-exception v2

    move-object v4, v1

    :goto_4b
    :try_start_4b
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    const-string v6, "Failed to fetch cached settings"

    invoke-interface {v5, v3, v6, v2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_58

    invoke-static {v4, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_57
    return-object v1

    :catchall_58
    move-exception v1

    move-object v2, v1

    move-object v1, v4

    :goto_5b
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2
.end method

.method public j6(JLorg/json/JSONObject;)V
    .registers 9

    const-string v0, "Failed to close settings writer."

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Writing settings to cache file..."

    const-string v3, "Fabric"

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_56

    const/4 v1, 0x0

    :try_start_10
    const-string v2, "expires_at"

    invoke-virtual {p3, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Ljava/io/FileWriter;

    new-instance p2, Ljava/io/File;

    new-instance v2, Labcd/Pz;

    iget-object v4, p0, Labcd/aA;->j6:Lio/fabric/sdk/android/Kit;

    invoke-direct {v2, v4}, Labcd/Pz;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v2}, Labcd/Pz;->j6()Ljava/io/File;

    move-result-object v2

    const-string v4, "com.crashlytics.settings.json"

    invoke-direct {p2, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_42
    .catchall {:try_start_10 .. :try_end_2c} :catchall_3f

    :try_start_2c
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_3c
    .catchall {:try_start_2c .. :try_end_36} :catchall_3a

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_56

    :catchall_3a
    move-exception p2

    goto :goto_52

    :catch_3c
    move-exception p2

    move-object v1, p1

    goto :goto_44

    :catchall_3f
    move-exception p1

    move-object p2, p1

    goto :goto_51

    :catch_42
    move-exception p1

    move-object p2, p1

    :goto_44
    :try_start_44
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p3, "Failed to cache settings"

    invoke-interface {p1, v3, p3, p2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_3f

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_56

    :goto_51
    move-object p1, v1

    :goto_52
    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2

    :cond_56
    :goto_56
    return-void
.end method
