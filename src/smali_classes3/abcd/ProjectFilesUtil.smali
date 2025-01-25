.class public Labcd/ProjectFilesUtil;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/ProjectFilesUtil;

    const-wide v1, 0x4628fd992abd34fbL  # 9.89980387653595E29

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x261eb3022aa0fb27L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x493bcb57561be18L  # 1.29618933172487E-286

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x6213c85d98215b7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x258a8b701a032880L  # -5.809425539510875E127

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p0}, Labcd/ProjectFilesUtil;->gW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/jni"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2c
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/src/main/jniLibs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_a2

    const-string v1, "/jniLibs"

    const-string v2, "/src/"

    if-eqz p2, :cond_71

    :try_start_51
    const-string v3, "main"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_71
    if-eqz p1, :cond_8b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8b
    return-object v0

    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_a1
    .catchall {:try_start_51 .. :try_end_a1} :catchall_a2

    return-object p0

    :catchall_a2
    move-exception v0

    sget-boolean v1, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v1, :cond_b4

    const-wide v2, -0x258a8b701a032880L  # -5.809425539510875E127

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b4
    throw v0
.end method

.method public static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xc227fa07cc743f5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xb2178fa6de3c7d8L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static Hw(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xd4ba72f85187c05L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2a41799bc4e3458L  # -7.129540225257643E295

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_a6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_90

    const/4 v0, 0x2

    const-string v3, "/src/main/aidl"

    const-string v4, "/src/main/java"

    if-eqz p1, :cond_6b

    :try_start_1c
    const-string v5, "main"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/src/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/java"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    aput-object v5, v3, v0

    return-object v3

    :cond_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/src"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a1
    .catchall {:try_start_1c .. :try_end_a1} :catchall_a6

    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1

    :catchall_a6
    move-exception v0

    sget-boolean v1, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v1, :cond_b7

    const-wide v2, -0x2a41799bc4e3458L  # -7.129540225257643E295

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b7
    throw v0
.end method

.method public static P8(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb7fa9950c362b9bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1a13ce0378dac860L  # -9.359733467795589E182

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->er(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {p0}, Labcd/ProjectFilesUtil;->aM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_21

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static aM(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x9ab090af6072ba8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3ee25e92b5e1adL

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getAssetsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/www"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static containsNDKFiles(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x246d7532da270475L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x192f6503325e11f8L  # -1.806288779989194E187

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2c

    if-nez v3, :cond_1e

    const-string v3, "/jni/Android.mk"

    goto :goto_20

    :cond_1e
    const-string v3, "/src/main/jni/Android.mk"

    :goto_20
    :try_start_20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2c

    return p0

    :catchall_2c
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_34

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v3
.end method

.method private static ei(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x47b863b80ac9088L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2c6952ee97ffc873L  # 9.484684214193905E-95

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "src"

    invoke-static {p0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {p0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2f

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0

    :catchall_2f
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_37

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v3
.end method

.method public static er(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x421a38090c2afe8bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x43f361867680ab20L  # 2.2344723247752413E19

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->yS(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0

    :catchall_1e
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static gW(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x21c054c63c0e40L
    .end annotation

    const-wide v0, -0x14ca42494bdea9e5L  # -2.792016065390668E208

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {p0, v2}, Labcd/ProjectFilesUtil;->getAndroidManifestXmlFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_25

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0

    :catchall_25
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public static generatedDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1365793797845958L
    .end annotation

    const-wide v0, -0x4b7b86e0f00a473L  # -7.220826414149955E285

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/generated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_2a

    return-object p0

    :cond_29
    return-object v2

    :catchall_2a
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static generatedJavaDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1be6f506e1b0c167L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2891ce821ccded50L  # 2.892307202137737E-113

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/build/gen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/gen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    return-object p0

    :catchall_37
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_3f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v3
.end method

.method public static getAaptOutputFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2616fb68cf0aee74L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xdabc6dd323cb89fL  # 8.13609325908182E-243

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/resources.ap_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static getAndroidManifestXmlFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x4a00b22d0635257L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x516dc1ff54c76918L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/src/main/AndroidManifest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_5f

    return-object p0

    :cond_25
    const-string v0, "/AndroidManifest.xml"

    if-eqz p1, :cond_4f

    :try_start_29
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/flavors/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    return-object v1

    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5e
    .catchall {:try_start_29 .. :try_end_5e} :catchall_5f

    return-object p0

    :catchall_5f
    move-exception v0

    sget-boolean v1, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, -0x516dc1ff54c76918L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public static getAndroidResDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xcd92aeb5f8f30L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProjectFilesUtil;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x230c94a28c888dfdL  # 7.5000377143166375E-140

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    const-string v0, "main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/src/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/res"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result p0
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3e

    if-eqz p0, :cond_3d

    return-object v0

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x230c94a28c888dfdL  # 7.5000377143166375E-140

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method public static getAssetsDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5bbe374afd4c9bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1496f7e9ac14d18cL  # -2.5716712673676574E209

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/src/main/assets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/assets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    return-object p0

    :catchall_37
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_3f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v3
.end method

.method public static getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2d41d931ba718970L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x32e2ef2aa2c0cdfL

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/build/bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    return-object p0

    :catchall_37
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_3f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v3
.end method

.method public static getBinaryTempDirProxy(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x787b7d430d8ef4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7112a72464309c17L  # 4.744636535709079E236

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static getBuildApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/aide/AdvancedSetting;->getBuildApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCompiledJavaClassDir(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x38b71519b15aa1b8L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x5e72f45e2a032a3L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    if-eqz p1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/classesdebug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/classesrelease"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    return-object p0

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x5e72f45e2a032a3L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method public static getEclipseProjectClasspathFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xed8b8d78793951L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x721ebf07b6226944L  # -8.086078676463418E-242

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_28

    if-eqz v3, :cond_16

    const-string p0, ""

    return-object p0

    :cond_16
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.classpath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method public static getGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2578c3ff9d6db5dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x8ecee4538d55144L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/build.gradle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static getInjectedManifestXmlFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4e8726dfcbdfcbbL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x11b9182c288777f0L  # 2.711817470064156E-223

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/injected/AndroidManifest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static getJarDexDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xff6ba083d17e9c0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xfbc2747e088e51L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/jardex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static getJniDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1f191c0e0eda60ffL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x17e390d1c744ae10L  # -3.243245021360412E193

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/src/main/jni"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/jni"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    return-object p0

    :catchall_37
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_3f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v3
.end method

.method public static getLibraryJarsDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xc671a5df71f5e9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1dbe0b39fdea72a8L  # -2.0680487571433786E165

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->gW(Ljava/lang/String;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_4b

    const-string v4, "/libs"

    if-eqz v3, :cond_25

    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_4b

    return-object p0

    :catchall_4b
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_53

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v3
.end method

.method public static getMergedManifestXmlFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x40c152468fbdf81L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x407ee20ab70a1dcL

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/merged/AndroidManifest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static getOutputApkDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xe2c745a2a1448e0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x102e00ce8a495653L  # 9.662738135502404E-231

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static getParentGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x65870db886058990L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x646e53410eaab61dL  # 6.000277377258024E175

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "../build.gradle"

    invoke-static {p0, v3}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static getParentSettingsGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x8fa45d03757ef95L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xece6286ceb6fa78L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "../settings.gradle"

    invoke-static {p0, v3}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static getResDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1f340c1eae77bdbcL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1ef280fa07999247L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/src/main/res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    return-object p0

    :catchall_37
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_3f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v3
.end method

.method public static gn(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x29ae7a553b073360L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/flavors"

    const-wide v1, 0x1ddcf6478be7e54bL  # 7.858350077658059E-165

    const/4 v3, 0x0

    :try_start_8
    sget-boolean v4, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v4, :cond_f

    invoke-static {v1, v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_74

    if-eqz v4, :cond_73

    :try_start_24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/AndroidManifest.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-static {v5}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_6b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_6f} :catch_72
    .catchall {:try_start_24 .. :try_end_6f} :catchall_74

    if-lez p0, :cond_73

    return-object v4

    :catch_72
    move-exception p0

    :cond_73
    return-object v3

    :catchall_74
    move-exception v0

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_7c

    invoke-static {v0, v1, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7c
    goto :goto_7e

    :goto_7d
    throw v0

    :goto_7e
    goto :goto_7d
.end method

.method public static isGradleProject(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x849fe11ed1a67bbL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xc9d2ee9b5e8f720L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/src"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4d

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/build.gradle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-static {p0}, Labcd/ProjectFilesUtil;->yS(Ljava/lang/String;)Z

    move-result p0
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_4f

    if-nez p0, :cond_4d

    const/4 p0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x0

    :goto_4e
    return p0

    :catchall_4f
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_57

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v3
.end method

.method public static j3(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1a0fb42899b13c0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x46d2e03a5a56b1d3L  # -2.804549739655051E-33

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_28

    if-eqz v3, :cond_16

    const-string p0, ""

    return-object p0

    :cond_16
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/project.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3700f9f060a80c2fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x6edc86813b260978L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/classes.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x151e6ef98fea20d3L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProjectFilesUtil;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0xe11ee340d7e8a98L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    const-string v0, "main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/src/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/AndroidManifest.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z

    move-result p0
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3e

    if-eqz p0, :cond_3d

    return-object v0

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0xe11ee340d7e8a98L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x498b66403935b4c7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x46a8c99edf266720L  # 2.513759297781845E32

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getAssetsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_6c

    const-string v1, "/assets"

    const-string v2, "/src/"

    if-eqz p2, :cond_48

    :try_start_28
    const-string v3, "main"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    if-eqz p1, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    return-object v0

    :cond_63
    invoke-static {p0}, Labcd/ProjectFilesUtil;->getAssetsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_6b
    .catchall {:try_start_28 .. :try_end_6b} :catchall_6c

    return-object p0

    :catchall_6c
    move-exception v0

    sget-boolean v1, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v1, :cond_7e

    const-wide v2, 0x46a8c99edf266720L  # 2.513759297781845E32

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    throw v0
.end method

.method public static u7(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x919b85161fa19b0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x581785e5813029L

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Labcd/ProjectFilesUtil;->getBinaryTempDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/exploded-aar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static yS(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x10793c28d20d51f5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1ad01f865be7d28cL

    :try_start_6
    sget-boolean v3, Labcd/ProjectFilesUtil;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/AndroidManifest.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {p0}, Labcd/ProjectFilesUtil;->ei(Ljava/lang/String;)Z

    move-result p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_33

    if-nez p0, :cond_31

    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    return p0

    :catchall_33
    move-exception v3

    sget-boolean v4, Labcd/ProjectFilesUtil;->DW:Z

    if-eqz v4, :cond_3b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v3
.end method
