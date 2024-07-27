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
        "Ljava/lang/Enum",
        "<",
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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x328e276903b99e90L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/appwizard/runtime/i$e;

    const-wide v2, 0x67ecb6f148fac188L    # 4.0940232825041544E192

    const-wide v4, 0x67ecb6f148fac188L    # 4.0940232825041544E192

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18f22e82ea320c14L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v1, "HoloDark"

    const/4 v2, 0x0

    const-string v3, "Holo Dark"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->j6:Lcom/aide/appwizard/runtime/i$e;

    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v1, "HoloLight"

    const/4 v2, 0x1

    const-string v3, "Holo Light"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->DW:Lcom/aide/appwizard/runtime/i$e;

    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v1, "HoloLightHoloActionBar"

    const/4 v2, 0x2

    const-string v3, "Holo Light Holo ActionBar"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->FH:Lcom/aide/appwizard/runtime/i$e;

    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v1, "HoloLightDarkActionBar"

    const/4 v2, 0x3

    const-string v3, "Holo Light Dark ActionBar"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;

    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v1, "DeviceDefault"

    const/4 v2, 0x4

    const-string v3, "Device Default Dark"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->v5:Lcom/aide/appwizard/runtime/i$e;

    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v1, "DeviceDefaultLight"

    const/4 v2, 0x5

    const-string v3, "Device Default Light"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->Zo:Lcom/aide/appwizard/runtime/i$e;

    new-instance v0, Lcom/aide/appwizard/runtime/i$e;

    const-string v1, "DeviceDefaultLightDarkActionBar"

    const/4 v2, 0x6

    const-string v3, "Device Default Light Dark ActionBar"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->VH:Lcom/aide/appwizard/runtime/i$e;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/aide/appwizard/runtime/i$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/appwizard/runtime/i$e;->j6:Lcom/aide/appwizard/runtime/i$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/appwizard/runtime/i$e;->DW:Lcom/aide/appwizard/runtime/i$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/appwizard/runtime/i$e;->FH:Lcom/aide/appwizard/runtime/i$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/appwizard/runtime/i$e;->v5:Lcom/aide/appwizard/runtime/i$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/aide/appwizard/runtime/i$e;->Zo:Lcom/aide/appwizard/runtime/i$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aide/appwizard/runtime/i$e;->VH:Lcom/aide/appwizard/runtime/i$e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/appwizard/runtime/i$e;->gn:[Lcom/aide/appwizard/runtime/i$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x18f22e82ea320c14L

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
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

    const-wide v8, -0x10f44ab0c37c3acL    # -2.86851683697527E303

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x10f44ab0c37c3acL    # -2.86851683697527E303

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static Hw()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v6, 0x3c8bdde17ff4306fL    # 4.834105703264923E-17

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c8bdde17ff4306fL    # 4.834105703264923E-17

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->values()[Lcom/aide/appwizard/runtime/i$e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-object v4, v4, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$e;
    .registers 9

    const-wide v6, 0xa85e2e3e0dd2acL

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa85e2e3e0dd2acL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->values()[Lcom/aide/appwizard/runtime/i$e;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    :try_start_1
    iget-object v4, v0, Lcom/aide/appwizard/runtime/i$e;->EQ:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$e;
    .registers 7

    const-wide v4, -0x41d695de8786318L    # -5.660934389853009E288

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x41d695de8786318L    # -5.660934389853009E288

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/appwizard/runtime/i$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/i$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/appwizard/runtime/i$e;
    .registers 6

    const-wide v4, -0x26cdb04f481fb7e0L    # -4.728432703309288E121

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$e;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x26cdb04f481fb7e0L    # -4.728432703309288E121

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/appwizard/runtime/i$e;->gn:[Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v0}, [Lcom/aide/appwizard/runtime/i$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/appwizard/runtime/i$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$e;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
