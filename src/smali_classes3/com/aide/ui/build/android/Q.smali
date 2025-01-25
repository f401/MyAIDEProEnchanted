.class public Lcom/aide/ui/build/android/Q;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/android/Q$a;
    }
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/Q;

    const-wide v1, 0x70568fcf3d992fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x175d88d820df7500L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW()V
    .registers 9

    const/4 v0, 0x0

    const-wide v1, 0x3962afbb75c9a75dL  # 2.879104130347783E-32

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_5e

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/build/android/Q;->J8()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    goto :goto_15

    :cond_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getInternalFilesDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5d

    array-length v4, v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3e} :catch_59
    .catchall {:try_start_d .. :try_end_3e} :catchall_5e

    const/4 v5, 0x0

    :goto_3f
    if-ge v5, v4, :cond_5d

    aget-object v6, v3, v5

    :try_start_43
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ndksupport-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_56} :catch_59
    .catchall {:try_start_43 .. :try_end_56} :catchall_5e

    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :catch_59
    move-exception v3

    :try_start_5a
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    :cond_5d
    return-void

    :catchall_5e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_66

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_66
    goto :goto_68

    :goto_67
    throw v3

    :goto_68
    goto :goto_67
.end method

.method private static EQ()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x23027e20d952db9dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xc860fe444200384L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ndksupport-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->J0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object v0

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static FH()Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x5d2fb6d4964a53e0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->Zo()Ljava/io/File;

    move-result-object v4

    const-string v5, "bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-object v3

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static Hw()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xc68344a59618c21L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "PATH"

    invoke-static {}, Lcom/aide/ui/build/android/Q;->FH()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return-object v3

    :catchall_20
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_28

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v3
.end method

.method private static J0()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xf6153817abc0290L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1f500f113131ca61L  # 7.310328394173349E-158

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/engine/service/Native;->j6:Lcom/aide/engine/service/Native;

    invoke-virtual {v3}, Lcom/aide/engine/service/Native;->isX86()Z

    move-result v3

    if-eqz v3, :cond_19

    const v3, 0x65f03102

    goto :goto_1c

    :cond_19
    const v3, 0x65f03101

    :goto_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_24

    add-int/lit8 v3, v3, 0x2

    :cond_24
    return v3

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method private static J8()Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x462cd442da5173b8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2ae53e975c78711L  # -4.514678643623187E295

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->Zo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_47

    array-length v5, v4
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_48

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v5, :cond_47

    aget-object v7, v4, v6

    :try_start_27
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ndksupport-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/aide/ui/build/android/Q;->EQ()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_48

    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_47
    return-object v3

    :catchall_48
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_50

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v3

    :goto_52
    goto :goto_51
.end method

.method private static QX()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4747ac51f6ed7c6bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x412058ba107f30f4L  # 535645.032220392

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_17

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static VH()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x19c4f130f2a97cf7L  # -2.874290094693687E184

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/build/android/Q;->gn()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method private static Ws()Ljava/io/File;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x351864ac9c464ab0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2e427947b1b42d1dL  # 7.429272900803704E-86

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->FH()Ljava/io/File;

    move-result-object v4

    const-string v5, "ash"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-object v3

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static Zo()Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x5880803d7135ec4dL  # 2.080544137476746E118

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/build/android/Q;->EQ()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-object v3

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method private static gn()Ljava/io/File;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xfe51cea68c023L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x59e8112862a57900L  # -3.535562715035044E-125

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->Zo()Ljava/io/File;

    move-result-object v4

    const-string v5, ".installed"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-object v3

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static j6(Landroid/content/Context;)Lcom/aide/ui/build/android/Q$a;
    .registers 7

    const-string v0, "com.aide.ndk"

    const/4 v1, 0x0

    const-wide v2, -0x11dcd20b814a08e9L  # -3.466445405425601E222

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_51

    if-nez v4, :cond_4e

    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {}, Lcom/aide/ui/build/android/Q;->J0()I

    move-result v5

    if-ge v4, v5, :cond_32

    sget-object p0, Lcom/aide/ui/build/android/Q$a;->DW:Lcom/aide/ui/build/android/Q$a;

    return-object p0

    :cond_32
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {}, Lcom/aide/ui/build/android/Q;->J0()I

    move-result v4

    if-le v0, v4, :cond_3d

    sget-object p0, Lcom/aide/ui/build/android/Q$a;->FH:Lcom/aide/ui/build/android/Q$a;

    return-object p0

    :cond_3d
    invoke-static {}, Lcom/aide/ui/build/android/Q;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object p0, Lcom/aide/ui/build/android/Q$a;->Hw:Lcom/aide/ui/build/android/Q$a;

    return-object p0

    :cond_4a
    sget-object p0, Lcom/aide/ui/build/android/Q$a;->v5:Lcom/aide/ui/build/android/Q$a;
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_4c} :catch_4d
    .catchall {:try_start_1d .. :try_end_4c} :catchall_51

    return-object p0

    :catch_4d
    move-exception v0

    :cond_4e
    :try_start_4e
    sget-object p0, Lcom/aide/ui/build/android/Q$a;->j6:Lcom/aide/ui/build/android/Q$a;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_51

    return-object p0

    :catchall_51
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_59

    invoke-static {v0, v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public static j6(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xfa01e6480b748c5L  # -1.9798504949618835E233

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/build/android/Q;->Ws()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aide/ui/build/android/Q;->u7()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    const/4 v1, 0x1

    if-le p1, v1, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-j"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    invoke-static {}, Lcom/aide/ui/U;->cn()Z

    move-result v1
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_ad

    const-string v2, "NDK_KNOWN_ARCHS=arm x86"

    const-string v3, "NDK_KNOWN_ABIS=armeabi-v7a armeabi-v7a-hard armeabi x86"

    if-eqz v1, :cond_65

    :try_start_59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "HOST_ARCH=x86"

    :goto_61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_65
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "HOST_ARCH=arm"

    goto :goto_61

    :goto_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_PIE_REQUIRED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->QX()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHELL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->Ws()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TARGET_AR=$(TOOLCHAIN_PREFIX)ar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "host-install=cp $1 $2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_59 .. :try_end_ac} :catchall_ad

    return-object v0

    :catchall_ad
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v1, :cond_c2

    const-wide v2, -0xfa01e6480b748c5L  # -1.9798504949618835E233

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c2
    goto :goto_c4

    :goto_c3
    throw v0

    :goto_c4
    goto :goto_c3
.end method

.method public static j6()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x19a0cc784564a945L  # -1.3257752354023068E185

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/build/android/Q;->J8()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method private static tp()Ljava/io/File;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x225b1aa0d8d728b3L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x8ed9ea171987748L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->Zo()Ljava/io/File;

    move-result-object v4

    const-string v5, "android-ndk-aide"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-object v3

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method private static u7()Ljava/io/File;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5ed770bc195a32f0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x513d1ddff58b5527L  # -1.9440576291748266E-83

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->tp()Ljava/io/File;

    move-result-object v4

    const-string v5, "ndk-build"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-object v3

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static v5()Ljava/lang/String;
    .registers 6

    const-string v0, "com.aide.ndk"

    const/4 v1, 0x0

    const-wide v2, 0x6ce00f79466563e7L  # 2.7682445539321735E216

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Android/obb/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/main."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/build/android/Q;->we()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".obb"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_41

    return-object v0

    :catchall_41
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_49

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v0
.end method

.method private static we()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x10e174c15e1253bfL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2a04cfb0e575d78cL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/Q;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_23

    sget-object v3, Lcom/aide/engine/service/Native;->j6:Lcom/aide/engine/service/Native;

    invoke-virtual {v3}, Lcom/aide/engine/service/Native;->isX86()Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x65b3c446

    goto :goto_22

    :cond_1f
    const v0, 0x65b3c445

    :goto_22
    return v0

    :cond_23
    sget-object v3, Lcom/aide/engine/service/Native;->j6:Lcom/aide/engine/service/Native;

    invoke-virtual {v3}, Lcom/aide/engine/service/Native;->isX86()Z

    move-result v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_33

    if-eqz v0, :cond_2f

    const v0, 0x65f03104

    goto :goto_32

    :cond_2f
    const v0, 0x65f03103

    :goto_32
    return v0

    :catchall_33
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/Q;->DW:Z

    if-eqz v4, :cond_3b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v3
.end method
