.class public final enum Lcom/aide/appwizard/runtime/i$e;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aide/appwizard/runtime/i$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/appwizard/runtime/i$e;

.field public static final enum FH:Lcom/aide/appwizard/runtime/i$e;

.field public static final enum Hw:Lcom/aide/appwizard/runtime/i$e;

.field public static final enum VH:Lcom/aide/appwizard/runtime/i$e;

.field public static final enum Zo:Lcom/aide/appwizard/runtime/i$e;

.field private static final gn:[Lcom/aide/appwizard/runtime/i$e;

.field public static final enum j6:Lcom/aide/appwizard/runtime/i$e;

.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum v5:Lcom/aide/appwizard/runtime/i$e;


# instance fields
.field public EQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x328e276903b99e90L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x18f22e82ea320c14L

    :try_start_6
    const-class v0, Lcom/aide/appwizard/runtime/i$e;

    const-wide v4, 0x67ecb6f148fac188L  # 4.0940232825041544E192

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v4, "HoloDark"

    const-string v5, "Holo Dark"

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->j6:Lcom/aide/appwizard/runtime/i$e;

    new-instance v4, Lcom/aide/appwizard/runtime/i$e;

    const-string v5, "HoloLight"

    const-string v7, "Holo Light"

    const/4 v8, 0x1

    invoke-direct {v4, v5, v8, v7}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/aide/appwizard/runtime/i$e;->DW:Lcom/aide/appwizard/runtime/i$e;

    new-instance v5, Lcom/aide/appwizard/runtime/i$e;

    const-string v7, "HoloLightHoloActionBar"

    const-string v9, "Holo Light Holo ActionBar"

    const/4 v10, 0x2

    invoke-direct {v5, v7, v10, v9}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/aide/appwizard/runtime/i$e;->FH:Lcom/aide/appwizard/runtime/i$e;

    new-instance v7, Lcom/aide/appwizard/runtime/i$e;

    const-string v9, "HoloLightDarkActionBar"

    const-string v11, "Holo Light Dark ActionBar"

    const/4 v12, 0x3

    invoke-direct {v7, v9, v12, v11}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;

    new-instance v9, Lcom/aide/appwizard/runtime/i$e;

    const-string v11, "DeviceDefault"

    const-string v13, "Device Default Dark"

    const/4 v14, 0x4

    invoke-direct {v9, v11, v14, v13}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/aide/appwizard/runtime/i$e;->v5:Lcom/aide/appwizard/runtime/i$e;

    new-instance v11, Lcom/aide/appwizard/runtime/i$e;

    const-string v13, "DeviceDefaultLight"

    const-string v15, "Device Default Light"

    const/4 v1, 0x5

    invoke-direct {v11, v13, v1, v15}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/aide/appwizard/runtime/i$e;->Zo:Lcom/aide/appwizard/runtime/i$e;

    new-instance v13, Lcom/aide/appwizard/runtime/i$e;

    const-string v15, "DeviceDefaultLightDarkActionBar"

    const-string v2, "Device Default Light Dark ActionBar"

    const/4 v3, 0x6

    invoke-direct {v13, v15, v3, v2}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/aide/appwizard/runtime/i$e;->VH:Lcom/aide/appwizard/runtime/i$e;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/aide/appwizard/runtime/i$e;

    aput-object v0, v2, v6

    aput-object v4, v2, v8

    aput-object v5, v2, v10

    aput-object v7, v2, v12

    aput-object v9, v2, v14

    aput-object v11, v2, v1

    aput-object v13, v2, v3

    sput-object v2, Lcom/aide/appwizard/runtime/i$e;->gn:[Lcom/aide/appwizard/runtime/i$e;
    :try_end_7e
    .catchall {:try_start_6 .. :try_end_7e} :catchall_7f

    return-void

    :catchall_7f
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v1, :cond_8d

    const/4 v1, 0x0

    const-wide v2, 0x18f22e82ea320c14L

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8d
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xc4413fe37b35218L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x10f44ab0c37c3acL  # -2.86851683697527E303

    const/4 v3, 0x0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x10f44ab0c37c3acL  # -2.86851683697527E303

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public static Hw()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x3c8bdde17ff4306fL  # 4.834105703264923E-17

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->values()[Lcom/aide/appwizard/runtime/i$e;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_24

    aget-object v7, v4, v6

    iget-object v7, v7, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_25

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_24
    return-object v3

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v3

    :goto_2f
    goto :goto_2e
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$e;
    .registers 9

    const/4 v0, 0x0

    const-wide v1, 0xa85e2e3e0dd2acL

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->values()[Lcom/aide/appwizard/runtime/i$e;

    move-result-object v3

    array-length v4, v3
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_26

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_23

    aget-object v6, v3, v5

    :try_start_17
    iget-object v7, v6, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    return-object v6

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_23
    sget-object p0, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_26

    return-object p0

    :catchall_26
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v3

    :goto_30
    goto :goto_2f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$e;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x41d695de8786318L  # -5.660934389853009E288

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/appwizard/runtime/i$e;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/appwizard/runtime/i$e;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/appwizard/runtime/i$e;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x26cdb04f481fb7e0L  # -4.728432703309288E121

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/appwizard/runtime/i$e;->gn:[Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v3}, [Lcom/aide/appwizard/runtime/i$e;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/appwizard/runtime/i$e;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
