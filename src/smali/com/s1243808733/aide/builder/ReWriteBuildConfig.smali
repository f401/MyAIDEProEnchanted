.class public Lcom/s1243808733/aide/builder/ReWriteBuildConfig;
.super Ljava/lang/Object;
.source "ReWriteBuildConfig.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 39
    const-string v0, "aM"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 40
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    new-instance v1, Lcom/s1243808733/aide/util/AndroidManifestRead;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/io/File;)V

    .line 43
    invoke-virtual {v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 45
    invoke-virtual {v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getVersionName()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getVersionCode()J

    move-result-wide v0

    .line 47
    const-string p2, "\n    public final static long VERSION_CODE = %d;"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_65

    .line 48
    if-nez p0, :cond_57

    const-string p0, "null"

    :cond_57
    :try_start_57
    const-string p2, "\n    public final static String VERSION_NAME = \"%s\";"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_65

    goto :goto_66

    :catchall_65
    move-exception p0

    :cond_66
    :goto_66
    return-void
.end method

.method public static write(Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 10

    .line 14
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    xor-int/2addr p3, p1

    .line 17
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    const-string v2, "/** Automatically generated file. DO NOT MODIFY */"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    const-string v2, "\npackage %s;"

    new-array v3, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    const-string v2, "\n\npublic final class BuildConfig {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    const-string v2, "\n    public final static boolean DEBUG = %s;"

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    const-string v2, "\n    public final static String APPLICATION_ID = \"%s\";"

    new-array v3, p1, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_42} :catch_69

    .line 23
    if-eqz p3, :cond_47

    const-string p3, "debug"

    goto :goto_49

    :cond_47
    const-string p3, "release"

    :goto_49
    :try_start_49
    const-string v2, "\n    public final static String BUILD_TYPE = \"%s\";"

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p3, p1, v4

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-static {p0, v1, p2}, Lcom/s1243808733/aide/builder/ReWriteBuildConfig;->append(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 27
    const-string p0, "\n}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6d
    return-void
.end method
