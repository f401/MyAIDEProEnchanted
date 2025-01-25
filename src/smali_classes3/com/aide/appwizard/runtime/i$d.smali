.class public final enum Lcom/aide/appwizard/runtime/i$d;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aide/appwizard/runtime/i$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/appwizard/runtime/i$d;

.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum FH:Lcom/aide/appwizard/runtime/i$d;

.field public static final enum Hw:Lcom/aide/appwizard/runtime/i$d;

.field public static final enum VH:Lcom/aide/appwizard/runtime/i$d;

.field public static final enum Zo:Lcom/aide/appwizard/runtime/i$d;

.field public static final enum gn:Lcom/aide/appwizard/runtime/i$d;

.field public static final enum j6:Lcom/aide/appwizard/runtime/i$d;

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static final u7:[Lcom/aide/appwizard/runtime/i$d;

.field public static final enum v5:Lcom/aide/appwizard/runtime/i$d;


# instance fields
.field public we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xf0bcb444823ebe4L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x260c7e226e0f7c94L  # 2.104580868714769E-125

    :try_start_6
    const-class v0, Lcom/aide/appwizard/runtime/i$d;

    const-wide v4, -0x3fe614ff6e228285L  # -6.479494361060797

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v4, "Single"

    const-string v5, "Single Section"

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->j6:Lcom/aide/appwizard/runtime/i$d;

    new-instance v4, Lcom/aide/appwizard/runtime/i$d;

    const-string v5, "Drawer"

    const-string v7, "Single Section with Drawer"

    const/4 v8, 0x1

    invoke-direct {v4, v5, v8, v7}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/aide/appwizard/runtime/i$d;->DW:Lcom/aide/appwizard/runtime/i$d;

    new-instance v5, Lcom/aide/appwizard/runtime/i$d;

    const-string v7, "Slider"

    const-string v9, "Scrollable Tabs"

    const/4 v10, 0x2

    invoke-direct {v5, v7, v10, v9}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/aide/appwizard/runtime/i$d;->FH:Lcom/aide/appwizard/runtime/i$d;

    new-instance v7, Lcom/aide/appwizard/runtime/i$d;

    const-string v9, "SliderDrawer"

    const-string v11, "Scrollable Tabs with Drawer"

    const/4 v12, 0x3

    invoke-direct {v7, v9, v12, v11}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/aide/appwizard/runtime/i$d;->Hw:Lcom/aide/appwizard/runtime/i$d;

    new-instance v9, Lcom/aide/appwizard/runtime/i$d;

    const-string v11, "Tabs"

    const-string v13, "Fixed Tabs"

    const/4 v14, 0x4

    invoke-direct {v9, v11, v14, v13}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/aide/appwizard/runtime/i$d;->v5:Lcom/aide/appwizard/runtime/i$d;

    new-instance v11, Lcom/aide/appwizard/runtime/i$d;

    const-string v13, "TabsDrawer"

    const-string v15, "Fixed Tabs with Drawer"

    const/4 v1, 0x5

    invoke-direct {v11, v13, v1, v15}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/aide/appwizard/runtime/i$d;->Zo:Lcom/aide/appwizard/runtime/i$d;

    new-instance v13, Lcom/aide/appwizard/runtime/i$d;

    const-string v15, "Spinner"

    const-string v2, "Dropdown List"

    const/4 v3, 0x6

    invoke-direct {v13, v15, v3, v2}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/aide/appwizard/runtime/i$d;->VH:Lcom/aide/appwizard/runtime/i$d;

    new-instance v2, Lcom/aide/appwizard/runtime/i$d;

    const-string v15, "SpinnerDrawer"

    const-string v3, "Dropdown List with Drawer"

    const/4 v1, 0x7

    invoke-direct {v2, v15, v1, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/aide/appwizard/runtime/i$d;->gn:Lcom/aide/appwizard/runtime/i$d;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/aide/appwizard/runtime/i$d;

    aput-object v0, v3, v6

    aput-object v4, v3, v8

    aput-object v5, v3, v10

    aput-object v7, v3, v12

    aput-object v9, v3, v14

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    aput-object v2, v3, v1

    sput-object v3, Lcom/aide/appwizard/runtime/i$d;->u7:[Lcom/aide/appwizard/runtime/i$d;
    :try_end_8f
    .catchall {:try_start_6 .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_9e

    const/4 v1, 0x0

    const-wide v2, 0x260c7e226e0f7c94L  # 2.104580868714769E-125

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9e
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2d86efa80f3ccf20L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x239d119eafdb1ee5L  # 3.90561565093523E-137

    const/4 v3, 0x0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/appwizard/runtime/i$d;->we:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x239d119eafdb1ee5L  # 3.90561565093523E-137

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

    const-wide v1, -0x26a445ea0e31eee1L  # -2.863911091788481E122

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/appwizard/runtime/i$d;->values()[Lcom/aide/appwizard/runtime/i$d;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_24

    aget-object v7, v4, v6

    iget-object v7, v7, Lcom/aide/appwizard/runtime/i$d;->we:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_25

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_24
    return-object v3

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v3

    :goto_2f
    goto :goto_2e
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$d;
    .registers 9

    const/4 v0, 0x0

    const-wide v1, 0x2879d335c56962cL

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/appwizard/runtime/i$d;->values()[Lcom/aide/appwizard/runtime/i$d;

    move-result-object v3

    array-length v4, v3
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_26

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_23

    aget-object v6, v3, v5

    :try_start_17
    iget-object v7, v6, Lcom/aide/appwizard/runtime/i$d;->we:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    return-object v6

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_23
    sget-object p0, Lcom/aide/appwizard/runtime/i$d;->j6:Lcom/aide/appwizard/runtime/i$d;
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_26

    return-object p0

    :catchall_26
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v3

    :goto_30
    goto :goto_2f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$d;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x36bbb4cfa229108L

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/appwizard/runtime/i$d;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/appwizard/runtime/i$d;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/appwizard/runtime/i$d;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x1414890d26740770L  # 6.099936535208103E-212

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/appwizard/runtime/i$d;->u7:[Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v3}, [Lcom/aide/appwizard/runtime/i$d;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/appwizard/runtime/i$d;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public VH()Z
    .registers 5

    const-wide v0, 0x648acdbbe9b61d57L  # 2.1213942920676965E176

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/appwizard/runtime/h;->j6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v2, v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, 0x2ab951311e9f00d7L  # 7.064743606454244E-103

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/appwizard/runtime/h;->j6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v2, v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    const/4 v2, 0x3

    if-eq v0, v2, :cond_22

    const/4 v2, 0x4

    if-eq v0, v2, :cond_22

    const/4 v0, 0x0

    return v0

    :cond_22
    return v1

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method
