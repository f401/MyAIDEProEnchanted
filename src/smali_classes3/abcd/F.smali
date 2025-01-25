.class public final Labcd/F;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Labcd/G;
    .annotation runtime Labcd/ru;
        field = -0x2954a90ea276c4f7L
    .end annotation
.end field

.field private static FH:Lcom/google/firebase/analytics/FirebaseAnalytics;
    .annotation runtime Labcd/ru;
        field = 0x4b7b68335e984e49L
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x4126f2b3a1b79088L
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x380097d69ff85845L
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xfe7bb170e5ca808L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x137ee29d2a74916fL  # 8.959291612208711E-215

    :try_start_6
    const-class v3, Labcd/F;

    const-wide v4, 0x4ddb1b320244c280L  # 1.1418477567821453E67

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const-string v3, "unknown"

    sput-object v3, Labcd/F;->j6:Ljava/lang/String;

    const/4 v3, 0x0

    sput-boolean v3, Labcd/F;->Hw:Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x197d7a0bbe098b33L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2b6634d4a1696063L  # -3.5260710650342273E99

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/F;->v5:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x13adf26c4ba0bb19L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0, p1, v1}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/F;->Zo:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x13adf26c4ba0bb19L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method public static DW(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x29b602afd23fb7f8L  # -4.768551441126699E107

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Labcd/F;->FH()Z

    move-result v3

    if-nez v3, :cond_14

    return-void

    :cond_14
    const-string v3, "startSession"

    invoke-static {v3}, Labcd/F;->VH(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static DW(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x160197a442061400L

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Labcd/F;->FH()Z

    move-result v3

    if-nez v3, :cond_14

    return-void

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logLevelEnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->VH(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "level_name"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v5, "level_end"

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_42

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v3
.end method

.method public static DW()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x37002cf144a00417L  # 9.066712969978646E-44

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-boolean v0, Labcd/F;->Hw:Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return v0

    :catchall_10
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v3
.end method

.method public static FH(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x28919371b8c2a62fL

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Labcd/F;->FH()Z

    move-result v3

    if-nez v3, :cond_14

    return-void

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logLevelStart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->VH(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "level_name"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v5, "level_start"

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_42

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v3
.end method

.method private static FH()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x42ab209b38c9fabL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xc36c204929ab645L

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-boolean v3, Labcd/F;->Hw:Z

    if-eqz v3, :cond_28

    sget-object v3, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    sget-object v4, Labcd/F;->DW:Labcd/G;

    invoke-interface {v4}, Labcd/G;->j6()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6(Z)V

    sget-object v3, Labcd/F;->DW:Labcd/G;

    invoke-interface {v3}, Labcd/G;->j6()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    return v0

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_28
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Analytics not initialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method public static Hw(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x7bd051d092c20c3L  # -2.005408755455931E271

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v4, "a4_os_arch"

    invoke-virtual {v3, v4, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private static VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4195bd2927f1839fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x4622087616c639dbL  # -5.9099384522912044E-30

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    :cond_d
    return-void

    :catchall_e
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_16

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v3
.end method

.method public static Zo(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2e10c292b416aef0L  # -4.855110166669612E86

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    :cond_d
    return-void

    :catchall_e
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_16

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/F;->v5:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2e4a24fd83bbdef0L  # 1.0514084768820539E-85

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&referrer=utm_source%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%26utm_medium%3Dinapplink%26utm_campaign%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-object p0

    :catchall_32
    move-exception v0

    sget-boolean v1, Labcd/F;->Zo:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x2e4a24fd83bbdef0L  # 1.0514084768820539E-85

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method public static j6()V
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x49f3c9cbbe12a9a0L  # -2.412906541291568E-48

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-boolean v3, Labcd/F;->Hw:Z

    if-eqz v3, :cond_1d

    sget-object v3, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    sget-object v4, Labcd/F;->DW:Labcd/G;

    invoke-interface {v4}, Labcd/G;->j6()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6(Z)V

    return-void

    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Analytics not initialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/F;->v5:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x3447c46e9ea44960L  # 7.572702793263745E-57

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Labcd/F;->FH()Z
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/F;->Zo:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x3447c46e9ea44960L  # 7.572702793263745E-57

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/F;->v5:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x16efa1eedb04450L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Labcd/F;->FH()Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Labcd/F;->Zo:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x16efa1eedb04450L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1052980db13f8569L  # 4.790658227116652E-230

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Labcd/F;->FH()Z

    move-result v3

    if-nez v3, :cond_14

    return-void

    :cond_14
    const-string v3, "endSession"

    invoke-static {v3}, Labcd/F;->VH(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static j6(Landroid/content/Context;Labcd/G;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/F;->v5:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x129c80b8615420d8L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-eqz p1, :cond_36

    const-string v0, "initialize"

    invoke-static {v0}, Labcd/F;->VH(Ljava/lang/String;)V

    sput-object p1, Labcd/F;->DW:Labcd/G;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_3e

    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Labcd/F;->j6:Ljava/lang/String;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_27} :catch_28
    .catchall {:try_start_16 .. :try_end_27} :catchall_3e

    goto :goto_29

    :catch_28
    move-exception v0

    :goto_29
    :try_start_29
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const/4 v0, 0x1

    sput-boolean v0, Labcd/F;->Hw:Z

    invoke-static {}, Labcd/F;->FH()Z

    return-void

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/F;->Zo:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x129c80b8615420d8L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .registers 11

    sget-boolean v0, Labcd/F;->v5:Z

    if-eqz v0, :cond_2e

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    new-instance p0, Ljava/lang/Double;

    invoke-direct {p0, p6, p7}, Ljava/lang/Double;-><init>(D)V

    const/4 p1, 0x6

    aput-object p0, v0, p1

    const/4 p0, 0x7

    aput-object p8, v0, p0

    const-wide p0, 0x12cacfc9c32f1f40L

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2e
    invoke-static {}, Labcd/F;->FH()Z

    return-void
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xba733e315ff841fL

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Labcd/F;->FH()Z

    move-result v3

    if-nez v3, :cond_14

    return-void

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->VH(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "event_name"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v5, "a4_legacy_event"

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_56

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/F;->v5:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xcdda3d42badaf4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Labcd/F;->FH()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->VH(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Labcd/F;->FH:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "a4_legacy_event"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/F;->Zo:Z

    if-eqz v1, :cond_5f

    const-wide v2, 0xcdda3d42badaf4L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method public static v5(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x147c3618ff1fec0bL  # 5.363230046822567E-210

    :try_start_6
    sget-boolean v3, Labcd/F;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v3

    sget-boolean v4, Labcd/F;->Zo:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method
