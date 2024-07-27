.class public final enum Lcom/aide/ui/activities/o;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .registers 11
    .annotation runtime Labcd/su;
        method = 0xb8c1bab5dada233L
    .end annotation

    const/4 v10, 0x0

    :try_start_0
    const-class v0, Lcom/aide/ui/activities/o;

    const-wide v2, 0x44cd7c06b6096893L    # 2.7847301570542886E23

    const-wide v4, 0x44cd7c06b6096893L    # 2.7847301570542886E23

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe39c4aeb0093b87L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/activities/o;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const-string v5, "http://www.android-doc.com/reference/"

    :goto_0
    :try_start_1
    const-string v1, "ANDROID_API"

    const/4 v2, 0x0

    const-string v3, "Android API"

    const/4 v4, 0x1

    const-string v6, "packages.html"

    const-string v7, "https://api.aidepro.top/resources?key=docs&type=android&download=1"

    const-string v8, "docs/reference/index.html"

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;

    new-instance v0, Lcom/aide/ui/activities/o;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    const-string v5, "https://javadoc.cloud/"

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    const-string v6, ""

    :goto_2
    :try_start_3
    const-string v1, "JAVA_API"

    const/4 v2, 0x1

    const-string v3, "Java API"

    const/4 v4, 0x1

    const-string v7, "https://api.aidepro.top/resources?key=docs&type=java&download=1"

    const-string v8, "api/index.html"

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/aide/ui/activities/o;->DW:Lcom/aide/ui/activities/o;

    new-instance v0, Lcom/aide/ui/activities/o;

    const-string v1, "PHONEGAP_API"

    const/4 v2, 0x2

    const-string v3, "PhoneGap API"

    const/4 v4, 0x1

    const-string v5, "https://cordova.apache.org/"

    const-string v6, "docs"

    const-string v7, "https://api.aidepro.top/resources?key=docs&type=phonegap&download=1"

    const-string v8, "phonegap-2.9.0/doc/index.html"

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/aide/ui/activities/o;->FH:Lcom/aide/ui/activities/o;

    new-instance v0, Lcom/aide/ui/activities/o;

    const-string v1, "WEB_API"

    const/4 v2, 0x3

    const-string v3, "Web API"

    const/4 v4, 0x0

    const-string v5, "https://developer.mozilla.org/"

    const-string v6, "docs"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/aide/ui/activities/o;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/aide/ui/activities/o;->Hw:Lcom/aide/ui/activities/o;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aide/ui/activities/o;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/ui/activities/o;->DW:Lcom/aide/ui/activities/o;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/ui/activities/o;->FH:Lcom/aide/ui/activities/o;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/ui/activities/o;->Hw:Lcom/aide/ui/activities/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/ui/activities/o;->v5:[Lcom/aide/ui/activities/o;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v5, "https://developer.android.google.cn/reference/"

    goto :goto_0

    :cond_2
    const-string v5, "https://docs.oracle.com/javase/7/docs/api/"

    goto :goto_1

    :cond_3
    const-string v6, "overview-summary.html"

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_4

    const-wide v2, 0xe39c4aeb0093b87L

    invoke-static {v0, v2, v3, v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16
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

    if-eqz v0, :cond_0

    const-wide v0, 0x3fe01077081d2ca0L    # 0.5020098837352585

    const/4 v2, 0x0

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    const/4 v4, 0x7

    aput-object p8, v3, v4

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
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
    .registers 6

    const-wide v4, 0x217d87327edd39b7L    # 2.309286655267792E-147

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x217d87327edd39b7L    # 2.309286655267792E-147

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Mr()[Lcom/aide/ui/activities/o;
    .registers 10

    const-wide v8, -0x805816f5af95ab3L    # -8.74802735872157E269

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x805816f5af95ab3L    # -8.74802735872157E269

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/activities/o;->values()[Lcom/aide/ui/activities/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aide/ui/activities/o;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/ui/activities/o;->DW:Lcom/aide/ui/activities/o;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    sget-object v1, Lcom/aide/ui/activities/o;->FH:Lcom/aide/ui/activities/o;

    sget-object v2, Lcom/aide/ui/activities/o;->Hw:Lcom/aide/ui/activities/o;

    sget-object v3, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aide/ui/activities/o;

    aput-object v1, v0, v4

    aput-object v2, v0, v5

    aput-object v3, v0, v6

    goto :goto_0
.end method

.method public static aM()J
    .registers 6

    const-wide v4, 0x184c6b61e1d5d2b9L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x184c6b61e1d5d2b9L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/32 v0, 0x2faf0800

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/activities/o;
    .registers 7

    const-wide v4, 0x12df17805bd46dfL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12df17805bd46dfL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/ui/activities/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/activities/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/ui/activities/o;
    .registers 6

    const-wide v4, 0xb7dbcaa6040553dL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb7dbcaa6040553dL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/activities/o;->v5:[Lcom/aide/ui/activities/o;

    invoke-virtual {v0}, [Lcom/aide/ui/activities/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/ui/activities/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static we()Lcom/aide/ui/activities/o;
    .registers 6

    const-wide v4, -0x236202e2ebf95497L    # -1.395005861429783E138

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x236202e2ebf95497L    # -1.395005861429783E138

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public Hw()Z
    .registers 5

    const-wide v2, -0x4b3201680ec3e5fdL    # -2.4465410466148782E-54

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4b3201680ec3e5fdL    # -2.4465410466148782E-54

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/activities/o;->J8:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public U2()I
    .registers 7

    const-wide v4, -0x2c4c6c2f192ce055L    # -1.6334799270077393E95

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c4c6c2f192ce055L    # -1.6334799270077393E95

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/activities/o;->Mr()[Lcom/aide/ui/activities/o;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public VH()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x4068e8fab0e9060L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4068e8fab0e9060L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/o;->we:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Ws()Ljava/lang/String;
    .registers 5

    const-wide v2, 0xacaf5319202be44L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xacaf5319202be44L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/o;->gn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 7

    const-wide v4, 0x20f459b6e256499cL    # 6.216932006604925E-150

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20f459b6e256499cL    # 6.216932006604925E-150

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/activities/o;->we:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/aide/ui/activities/o;->we:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public a8()Z
    .registers 5

    const-wide v2, 0x2ac859a05c614840L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2ac859a05c614840L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/activities/o;->J0:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j3()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x598759066dc44f0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x598759066dc44f0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/o;->EQ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aide/ui/activities/o;->j6(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-wide v4, -0x737aa2c27dad00L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/o;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x737aa2c27dad00L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/activities/o;->Zo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/aa;->vy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aide/ui/aa;->vy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/activities/o;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aide/ui/activities/o;->tp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/ui/activities/o;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/o;->VH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
