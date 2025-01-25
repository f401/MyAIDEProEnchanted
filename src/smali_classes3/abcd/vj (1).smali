.class public Labcd/vj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xd84bbe2256bac5bL
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x19bea5d12c4e3ac8L
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2aff2b42df9d50bL
    .end annotation
.end field

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0xb4f7b1a367e75b8L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xe2a6dd67609dcc7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/vj;

    const-wide v1, 0x2c3c41fd47359b91L  # 1.3229373817739975E-95

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x39248df93d90c8L

    :try_start_6
    sget-boolean v3, Labcd/vj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/vj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static DW(Ljava/lang/String;ZZ)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x13c8a33dc30b2dd1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/vj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1b54fdd64259aabL

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1}, Labcd/vj;->FH(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_5c

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    :try_start_1f
    invoke-static {p0, p1}, Labcd/vj;->getAideCompilerRequirementFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Labcd/vj;->findDeviceCompatibilableFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz p2, :cond_2d

    invoke-static {v2, v0, v1}, Labcd/FileSystemUtils;->j6(Ljava/io/InputStream;Ljava/lang/String;Z)V

    goto :goto_41

    :cond_2d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracted asset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_55} :catch_57
    .catchall {:try_start_1f .. :try_end_55} :catchall_5c

    const/4 p0, 0x1

    return p0

    :catch_57
    move-exception v0

    :try_start_58
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    :cond_5b
    return v1

    :catchall_5c
    move-exception v0

    sget-boolean v1, Labcd/vj;->DW:Z

    if-eqz v1, :cond_76

    const-wide v2, 0x1b54fdd64259aabL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_76
    throw v0
.end method

.method private static FH(Ljava/lang/String;Z)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2c0ba602a6aa7cc8L
    .end annotation

    const-string v0, "AndroidVersion"

    const-string v1, "ApkVersion"

    :try_start_4
    sget-boolean v2, Labcd/vj;->j6:Z

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v3, 0x36fcf618d2da3328L  # 8.116689605238154E-44

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {p0, p1}, Labcd/vj;->getAideCompilerRequirementFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const-string v4, "AssetInstallationService"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-interface {v3, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Labcd/vj;->gn()J

    move-result-wide v8

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v10, v4

    invoke-static {v6, v7, v8, v9}, Labcd/FileSystemUtils;->j6(JJ)Z

    move-result v4

    if-eqz v4, :cond_41

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v6, v4

    cmp-long v4, v10, v6

    if-eqz v4, :cond_53

    :cond_41
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_53
    invoke-interface {v3, p0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_65

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_65

    return v5

    :cond_65
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_70
    .catchall {:try_start_4 .. :try_end_70} :catchall_8e

    :try_start_70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-static {p0}, Labcd/vj;->findDeviceCompatibilableFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_88} :catch_8b
    .catchall {:try_start_70 .. :try_end_88} :catchall_8e

    if-nez p0, :cond_8d

    goto :goto_8c

    :catch_8b
    move-exception p0

    :cond_8c
    :goto_8c
    const/4 v5, 0x1

    :cond_8d
    return v5

    :catchall_8e
    move-exception v0

    sget-boolean v1, Labcd/vj;->DW:Z

    if-eqz v1, :cond_a3

    const-wide v2, 0x36fcf618d2da3328L  # 8.116689605238154E-44

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a3
    throw v0
.end method

.method private static findDeviceCompatibilableFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x9b60d6a4beff39L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xd3a568d79174cdL

    :try_start_6
    sget-boolean v3, Labcd/vj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->cn()Z

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_156

    const/16 v4, 0x14

    const-string v5, "x86"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const-string v11, ".jet"

    if-eqz v3, :cond_6d

    :try_start_1e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_6d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x86-pie"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v10, [Ljava/lang/String;

    aput-object p0, v5, v9

    aput-object v3, v5, v8

    aput-object v4, v5, v7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v5}, Labcd/vj;->loadAssetInputStream([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_6d
    invoke-static {}, Lcom/aide/ui/U;->cn()Z

    move-result v3

    if-eqz v3, :cond_bc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v10, [Ljava/lang/String;

    aput-object p0, v5, v9

    aput-object v3, v5, v8

    aput-object v4, v5, v7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v5}, Labcd/vj;->loadAssetInputStream([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_bc
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_be
    .catchall {:try_start_1e .. :try_end_be} :catchall_156

    const-string v5, "armeabi"

    if-lt v3, v4, :cond_10d

    :try_start_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "armeabi-pie"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v10, [Ljava/lang/String;

    aput-object p0, v5, v9

    aput-object v3, v5, v8

    aput-object v4, v5, v7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v5}, Labcd/vj;->loadAssetInputStream([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_10d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v10, [Ljava/lang/String;

    aput-object p0, v5, v9

    aput-object v3, v5, v8

    aput-object v4, v5, v7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v5}, Labcd/vj;->loadAssetInputStream([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_155
    .catchall {:try_start_c2 .. :try_end_155} :catchall_156

    return-object p0

    :catchall_156
    move-exception v3

    sget-boolean v4, Labcd/vj;->DW:Z

    if-eqz v4, :cond_15e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15e
    throw v3
.end method

.method private static getAideCompilerRequirementFile(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1f712797f72e1bbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/vj;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x677170199999ffc7L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.aide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4f

    return-object p0

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/vj;->DW:Z

    if-eqz v1, :cond_64

    const-wide v2, -0x677170199999ffc7L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method private static gn()J
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x422b9ad253dc8f8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x578ef2aeed40368L

    :try_start_6
    sget-boolean v3, Labcd/vj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_34

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_2f} :catch_30
    .catchall {:try_start_d .. :try_end_2f} :catchall_34

    return-wide v0

    :catch_30
    move-exception v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_34
    move-exception v3

    sget-boolean v4, Labcd/vj;->DW:Z

    if-eqz v4, :cond_3c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v3
.end method

.method public static j6(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/vj;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x21ef0196dc07b8a5L  # -1.3262586242133203E145

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/vj;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-object p0

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/vj;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x21ef0196dc07b8a5L  # -1.3262586242133203E145

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public static j6(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/vj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1c51458ca3c41f48L

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1, p2}, Labcd/vj;->DW(Ljava/lang/String;ZZ)Z

    invoke-static {p0, p1}, Labcd/vj;->getAideCompilerRequirementFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/vj;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x1c51458ca3c41f48L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private static varargs loadAssetInputStream([Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x4075eb2ffdc23L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x4f22ca2bbd687467L  # -2.5831917155539188E-73

    :try_start_6
    sget-boolean v3, Labcd/vj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    array-length v6, p0

    if-ge v5, v6, :cond_26

    aget-object v6, p0, v5

    invoke-static {v3, v6}, Labcd/vj;->openAssetFileInputStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_23

    return-object v6

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_26
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v3

    sget-boolean v4, Labcd/vj;->DW:Z

    if-eqz v4, :cond_4c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v3

    :goto_4e
    goto :goto_4d
.end method

.method private static openAssetFileInputStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x63bb9d24e8b09f81L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/vj;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x1e98fcaa77977a1dL  # -1.6177126652696605E161

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_14

    :cond_d
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_12
    .catchall {:try_start_d .. :try_end_11} :catchall_14

    return-object p0

    :catch_12
    move-exception p0

    return-object v1

    :catchall_14
    move-exception v0

    sget-boolean v1, Labcd/vj;->DW:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x1e98fcaa77977a1dL  # -1.6177126652696605E161

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0xc7fde45c8dd313fL

    :try_start_5
    sget-boolean v2, Labcd/vj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/vj;->v5:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/vj;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x654de43c5b4e820L

    :try_start_5
    sget-boolean v2, Labcd/vj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/vj;->Zo:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/vj;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x60225b191fa386fbL  # 1.2305586971078794E155

    :try_start_5
    sget-boolean v2, Labcd/vj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/vj;->FH:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/vj;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, 0x1b64749f3f8de091L  # 1.009587162951153E-176

    :try_start_5
    sget-boolean v2, Labcd/vj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "JavaScriptAPI.js"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/vj;->FH:Ljava/lang/String;

    const-string v2, "android.jar"

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/vj;->Hw:Ljava/lang/String;

    const-string v2, "annotations.jar"

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/vj;->v5:Ljava/lang/String;

    const-string v2, "framework.aidl"

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/vj;->Zo:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/vj;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public Zo()Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p0

    const-wide v2, -0x19f8b2df9f9a8000L  # -3.094048145164652E183

    :try_start_7
    sget-boolean v0, Labcd/vj;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    const-string v0, "weardebug.keystore"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Labcd/vj;->getAideCompilerRequirementFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_54

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-static {}, Lcom/aide/ui/U;->aM()Lcom/aide/ui/build/android/O;

    move-result-object v4

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    const-string v7, "xxxxxx"

    const-string v8, "weardebug"

    const-string v9, "xxxxxx"

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v11

    sget-object v12, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const-string v13, "Wear Debug"

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    move-object v5, v4

    move-object v6, v0

    invoke-virtual/range {v5 .. v18}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_55

    :cond_54
    return-object v0

    :catchall_55
    move-exception v0

    sget-boolean v4, Labcd/vj;->DW:Z

    if-eqz v4, :cond_5d

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x342578ae8b581be0L  # -2.6019162092675846E57

    :try_start_5
    sget-boolean v2, Labcd/vj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/vj;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/vj;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x328fc8bd8425c9d4L  # 3.7726058948295023E-65

    :try_start_5
    sget-boolean v2, Labcd/vj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/vj;->VH:Ljava/lang/String;

    if-nez v2, :cond_19

    const-string v2, "merger.zip"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/vj;->VH:Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Labcd/vj;->VH:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/vj;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method
