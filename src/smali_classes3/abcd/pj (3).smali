.class public Labcd/pj;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/IProject;


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

    const-class v0, Labcd/pj;

    const-wide v1, 0x304b260de6cd2140L  # 4.689206283418102E-76

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3696cda935e1aef0L  # -4.495230217639016E45

    :try_start_6
    sget-boolean v3, Labcd/pj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/pj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private J0()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x14d6e3b450d6649L
    .end annotation

    const-wide v0, -0x6d483d0388b9c20L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x2

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method private J8()Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x35d8d716e790e780L
    .end annotation

    const-wide v0, -0x660f298c629db3L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/EclipseJavaProject;->U2(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    if-ge v5, v3, :cond_44

    aget-object v7, v2, v5

    invoke-direct {p0}, Labcd/pj;->J0()I

    move-result v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, ".c"

    aput-object v10, v9, v4

    const-string v10, ".cc"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string v10, ".cpp"

    const/4 v12, 0x2

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0}, Labcd/pj;->J0()I

    move-result v7
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_45

    if-lt v6, v7, :cond_41

    return v11

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_44
    return v4

    :catchall_45
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v2

    :goto_4f
    goto :goto_4e
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, 0x6a1cf46797f29140L  # 1.4184572457776597E203

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x271402bb131001ddL  # -2.2586078640659533E120

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1d26c7dd6ee814c9L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public EQ(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x18e5e8fe4150ceb0L  # 9.835074959614085E-189

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0xaa4483b4d8878cbL

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/pj;->J8(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_17

    if-nez p1, :cond_15

    const-string p1, "com.aide.ui"

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public FH()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$b;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x13fbb9b682e9886dL  # -2.1329386976266662E212

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x2aeef3102a2e7600L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x27cdfa93e02300L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public J0(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x3938fb0ba0ad29d0L  # -9.337759262311597E32

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public J8(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x524fdacdb8dfef77L  # -1.268140464197471E-88

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.ui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public QX(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x721ab46a9804e29L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/jni/Android.mk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "^\\s*include\\s*\\$\\(\\s*BUILD_EXECUTABLE\\s*\\)\\s*$"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Labcd/FileSystemUtils;->v5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public VH()Lcom/aide/engine/EngineSolution;
    .registers 5

    const-wide v0, -0x4ddf1d6ac91538f5L  # -3.131513860422093E-67

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/oj;->j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolution;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x719cb7207fcd060L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Ws(Ljava/lang/String;)I
    .registers 6

    const-wide v0, 0x16595d37a2aef989L  # 5.177533035929154E-201

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public XL(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    const-wide v0, -0x3bf6f8b5dbad5e8L  # -3.228482139343484E290

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, -0x4fe7d413b1d61bbL  # -3.2548427229005E284

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Zo()Z

    move-result v2

    if-eqz v2, :cond_1f

    return v3

    :cond_1f
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "AllowSavingOneNativeExecutableFileInNonPremium"

    invoke-static {v2, v3}, Labcd/H;->DW(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-direct {p0}, Labcd/pj;->J8()Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_32

    return v0

    :cond_30
    const/4 v0, 0x1

    return v0

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public Zo(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x20fe6de8ca3f9e78L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x1e2c338de1ca6b1L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getProjectAttribute()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x1016deed61367665L  # -1.2191725843257865E231

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_39

    if-eqz v3, :cond_1f

    const-string v3, "项目路径:"

    goto :goto_21

    :cond_1f
    const-string v3, "Native Executable Project Home:"

    :goto_21
    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b><br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_39

    return-object v0

    :catchall_39
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public getTemplates()[Labcd/Sk$a;
    .registers 19

    move-object/from16 v13, p0

    const-wide v14, -0x3260c4cdbf4f73a0L  # -8.222582467278593E65

    :try_start_7
    sget-boolean v0, Labcd/pj;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v14, v15, v13}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v0, Labcd/Sk$b;

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v1

    const/16 v16, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_27

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_27

    :cond_24
    const/16 v17, 0x0

    goto :goto_29

    :cond_27
    :goto_27
    const/16 v17, 0x1

    :goto_29
    const/4 v3, 0x3

    const-string v4, "C/C++ Application"

    const-string v5, "C/C++"

    const-string v6, "MyNativeExecutable"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "JAVA"

    const-string v11, "course_cpp"

    move-object v1, v0

    move-object/from16 v2, p0

    const/4 v14, 0x1

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Labcd/Sk$b;-><init>(Labcd/IProject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Labcd/Sk$a;

    const-string v2, "Console Application"

    const v4, 0x7f070076

    const-string v5, "CppHelloWorld.zip"

    new-array v6, v14, [Ljava/lang/String;

    const-string v1, "hello.cpp"

    aput-object v1, v6, v16

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Labcd/Sk$a;-><init>(Ljava/lang/String;Labcd/Sk$b;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_5b

    new-array v0, v14, [Labcd/Sk$a;

    aput-object v8, v0, v16

    return-object v0

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/pj;->DW:Z

    if-eqz v1, :cond_68

    const-wide v1, -0x3260c4cdbf4f73a0L  # -8.222582467278593E65

    invoke-static {v0, v1, v2, v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    throw v0
.end method

.method public gn(Ljava/lang/String;)I
    .registers 6

    const-wide v0, 0x26fda44ba4fc284dL  # 7.174407164899326E-121

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const p1, 0x7f0d0030

    return p1

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j3(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x208bbfcb47208135L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x89a49df41378bedL

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x396514ef6316d67L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/pj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x81c7dd3ed251b80L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/pj;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, -0x81c7dd3ed251b80L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/pj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xf84cd7359189840L  # -6.755927466129706E233

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/pj;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, -0xf84cd7359189840L  # -6.755927466129706E233

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/pj;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x52141fbec91ac710L  # 2.502033812430389E87

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/pj;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x52141fbec91ac710L  # 2.502033812430389E87

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method public j6(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/pj;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x2e6cea64fe07adafL  # 4.651397948588558E-85

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/pj;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x2e6cea64fe07adafL  # 4.651397948588558E-85

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, -0x3a80759a97156bdbL  # -6.1008412262174034E26

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    sget-object v2, Lcom/aide/ui/build/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    invoke-virtual {v2, p1}, Lcom/aide/ui/build/nativeexecutable/k;->DW(Z)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x3ae134ecb648469dL  # -9.306692696129234E24

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public tp()Z
    .registers 5

    const-wide v0, 0x5d339e84e7031c00L  # 9.345437213980819E140

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    const-wide v0, 0x30e0aefa9043ba98L  # 2.9507913999542394E-73

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public u7()V
    .registers 7

    const-wide v0, -0x3be08fd73ba4315L  # -3.501468447846831E290

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "large_project"

    const v5, 0x7f0d0611

    invoke-virtual {v2, v3, v5, v4}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public v5()Z
    .registers 6

    const-wide v0, 0x79e6f066e66db8e0L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/build/android/Q;->VH()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "This project contains native code. "

    invoke-virtual {v2, v3, v4}, Labcd/Kj;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public v5(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x22888f16ad2f4858L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    if-eqz v3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public we()Z
    .registers 5

    const-wide v0, 0x13137ea44e7bc68L

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public we(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0xaf1ab73559badafL  # -7.115781964288609E255

    :try_start_5
    sget-boolean v2, Labcd/pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/pj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method
