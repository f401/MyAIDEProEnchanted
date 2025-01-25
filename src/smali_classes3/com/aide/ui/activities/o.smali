.class public final enum Lcom/aide/ui/activities/o;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aide/ui/activities/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/ui/activities/o;

.field public static final enum FH:Lcom/aide/ui/activities/o;

.field public static final enum Hw:Lcom/aide/ui/activities/o;

.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/ui/activities/o;

.field private static final v5:[Lcom/aide/ui/activities/o;


# instance fields
.field private EQ:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x10742d9ea1997c98L
    .end annotation
.end field

.field private J0:Z
    .annotation runtime Labcd/ru;
        field = -0x83fc68e51d73a3cL
    .end annotation
.end field

.field private J8:Z
    .annotation runtime Labcd/ru;
        field = 0x302534ef1508fac3L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1caeca71b1b00cf0L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x14e27580daf5ab70L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x20df58d54c2f3ad0L
    .end annotation
.end field

.field private we:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x24c855792da4fc84L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 26
    .annotation runtime Labcd/su;
        method = 0xb8c1bab5dada233L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0xe39c4aeb0093b87L

    :try_start_6
    const-class v0, Lcom/aide/ui/activities/o;

    const-wide v4, 0x44cd7c06b6096893L  # 2.7847301570542886E23

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Lcom/aide/ui/activities/o;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_b1

    if-eqz v4, :cond_23

    const-string v4, "http://www.android-doc.com/reference/"

    move-object v9, v4

    goto :goto_26

    .line 99
    :cond_23
    const-string v4, "https://developer.android.google.cn/reference/"

    move-object v9, v4

    .line 0
    :goto_26
    :try_start_26
    const-string v5, "ANDROID_API"

    const/4 v6, 0x0

    const-string v7, "Android API"

    const/4 v8, 0x1

    const-string v10, "packages.html"

    const-string v11, "https://api.androidide.cn/pro/resources?key=docs&type=android&download=1"

    const-string v12, "docs/reference/index.html"

    const/4 v13, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;

    new-instance v4, Lcom/aide/ui/activities/o;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v5
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_b1

    if-eqz v5, :cond_46

    const-string v5, "https://javadoc.cloud/"

    move-object/from16 v19, v5

    goto :goto_4a

    .line 99
    :cond_46
    const-string v5, "https://docs.oracle.com/javase/7/docs/api/"

    move-object/from16 v19, v5

    .line 0
    :goto_4a
    :try_start_4a
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_b1

    if-eqz v5, :cond_55

    const-string v5, ""

    move-object/from16 v20, v5

    goto :goto_59

    .line 99
    :cond_55
    const-string v5, "overview-summary.html"

    move-object/from16 v20, v5

    .line 0
    :goto_59
    :try_start_59
    const-string v15, "JAVA_API"

    const/16 v16, 0x1

    const-string v17, "Java API"

    const/16 v18, 0x1

    const-string v21, "https://api.androidide.cn/pro/resources?key=docs&type=java&download=1"

    const-string v22, "api/index.html"

    const/16 v23, 0x1

    move-object v14, v4

    invoke-direct/range {v14 .. v23}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Lcom/aide/ui/activities/o;->DW:Lcom/aide/ui/activities/o;

    new-instance v15, Lcom/aide/ui/activities/o;

    const-string v6, "PHONEGAP_API"

    const/4 v7, 0x2

    const-string v8, "PhoneGap API"

    const/4 v9, 0x1

    const-string v10, "https://cordova.apache.org/"

    const-string v11, "docs"

    const-string v12, "https://api.androidide.cn/pro/resources?key=docs&type=phonegap&download=1"

    const-string v13, "phonegap-2.9.0/doc/index.html"

    const/4 v14, 0x1

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v15, Lcom/aide/ui/activities/o;->FH:Lcom/aide/ui/activities/o;

    new-instance v5, Lcom/aide/ui/activities/o;

    const-string v17, "WEB_API"

    const/16 v18, 0x3

    const-string v19, "Web API"

    const/16 v20, 0x0

    const-string v21, "https://developer.mozilla.org/"

    const-string v22, "docs"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v25}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v5, Lcom/aide/ui/activities/o;->Hw:Lcom/aide/ui/activities/o;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/aide/ui/activities/o;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v15, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    sput-object v6, Lcom/aide/ui/activities/o;->v5:[Lcom/aide/ui/activities/o;
    :try_end_b0
    .catchall {:try_start_59 .. :try_end_b0} :catchall_b1

    return-void

    .line 99
    :catchall_b1
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v4, :cond_b9

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_b9
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x124225198af28e29L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p9}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-wide v1, 0x3fe01077081d2ca0L  # 0.5020098837352585

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3c
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/ui/activities/o;->gn:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/activities/o;->u7:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/aide/ui/activities/o;->J0:Z

    iput-object p8, p0, Lcom/aide/ui/activities/o;->tp:Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/ui/activities/o;->EQ:Ljava/lang/String;

    iput-object p7, p0, Lcom/aide/ui/activities/o;->we:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/aide/ui/activities/o;->J8:Z

    return-void
.end method

.method public static J8()Lcom/aide/ui/activities/o;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x217d87327edd39b7L  # 2.309286655267792E-147

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return-object v0

    :catchall_10
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v3
.end method

.method public static Mr()[Lcom/aide/ui/activities/o;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x805816f5af95ab3L  # -8.74802735872157E269

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/aide/ui/activities/o;->values()[Lcom/aide/ui/activities/o;

    move-result-object v0

    return-object v0

    :cond_18
    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_30

    new-array v3, v6, [Lcom/aide/ui/activities/o;

    sget-object v6, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;

    aput-object v6, v3, v5

    sget-object v5, Lcom/aide/ui/activities/o;->DW:Lcom/aide/ui/activities/o;

    aput-object v5, v3, v4

    return-object v3

    :cond_30
    sget-object v3, Lcom/aide/ui/activities/o;->FH:Lcom/aide/ui/activities/o;

    sget-object v7, Lcom/aide/ui/activities/o;->Hw:Lcom/aide/ui/activities/o;

    sget-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_40

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/aide/ui/activities/o;

    aput-object v3, v1, v5

    aput-object v7, v1, v4

    aput-object v0, v1, v6

    return-object v1

    :catchall_40
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v4, :cond_48

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v3
.end method

.method public static aM()J
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x184c6b61e1d5d2b9L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    :cond_d
    const-wide/32 v0, 0x2faf0800

    return-wide v0

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/activities/o;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x12df17805bd46dfL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/ui/activities/o;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/activities/o;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/ui/activities/o;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0xb7dbcaa6040553dL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/activities/o;->v5:[Lcom/aide/ui/activities/o;

    invoke-virtual {v3}, [Lcom/aide/ui/activities/o;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/ui/activities/o;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static we()Lcom/aide/ui/activities/o;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x236202e2ebf95497L  # -1.395005861429783E138

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return-object v0

    :catchall_10
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v3
.end method


# virtual methods
.method public Hw()Z
    .registers 5

    const-wide v0, -0x4b3201680ec3e5fdL  # -2.4465410466148782E-54

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/activities/o;->J8:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public U2()I
    .registers 6

    const-wide v0, -0x2c4c6c2f192ce055L  # -1.6334799270077393E95

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/activities/o;->Mr()[Lcom/aide/ui/activities/o;

    move-result-object v2

    const/4 v3, 0x0

    :goto_11
    array-length v4, v2

    if-ge v3, v4, :cond_20

    aget-object v4, v2, v3

    invoke-virtual {v4, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_22

    if-eqz v4, :cond_1d

    return v3

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_20
    const/4 v0, -0x1

    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    goto :goto_2c

    :goto_2b
    throw v2

    :goto_2c
    goto :goto_2b
.end method

.method public VH()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x4068e8fab0e9060L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/activities/o;->we:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Ws()Ljava/lang/String;
    .registers 5

    const-wide v0, 0xacaf5319202be44L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/activities/o;->gn:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Zo()Ljava/lang/String;
    .registers 6

    const-wide v0, 0x20f459b6e256499cL  # 6.216932006604925E-150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/activities/o;->we:Ljava/lang/String;

    if-eqz v2, :cond_26

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/aide/ui/activities/o;->we:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_24} :catch_25
    .catchall {:try_start_c .. :try_end_24} :catchall_28

    return-object v0

    :catch_25
    move-exception v0

    :cond_26
    const/4 v0, 0x0

    return-object v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public a8()Z
    .registers 5

    const-wide v0, 0x2ac859a05c614840L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/activities/o;->J0:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j3()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x598759066dc44f0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/o;->EQ:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/aide/ui/activities/o;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "/"

    const-wide v1, -0x737aa2c27dad00L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_6d

    :cond_e
    if-nez p1, :cond_12

    const-string p1, ""

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/aide/ui/activities/o;->Zo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    invoke-static {}, Lcom/aide/ui/aa;->vy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/ui/aa;->vy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/activities/o;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aide/ui/activities/o;->tp:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/activities/o;->u7:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6c
    .catchall {:try_start_12 .. :try_end_6c} :catchall_6d

    return-object p1

    :catchall_6d
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v3, :cond_75

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    throw v0
.end method
