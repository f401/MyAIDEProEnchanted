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
        "Ljava/lang/Enum",
        "<",
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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf0bcb444823ebe4L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/appwizard/runtime/i$d;

    const-wide v2, -0x3fe614ff6e228285L    # -6.479494361060797

    const-wide v4, -0x3fe614ff6e228285L    # -6.479494361060797

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x260c7e226e0f7c94L    # 2.104580868714769E-125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "Single"

    const/4 v2, 0x0

    const-string v3, "Single Section"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->j6:Lcom/aide/appwizard/runtime/i$d;

    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "Drawer"

    const/4 v2, 0x1

    const-string v3, "Single Section with Drawer"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->DW:Lcom/aide/appwizard/runtime/i$d;

    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "Slider"

    const/4 v2, 0x2

    const-string v3, "Scrollable Tabs"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->FH:Lcom/aide/appwizard/runtime/i$d;

    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "SliderDrawer"

    const/4 v2, 0x3

    const-string v3, "Scrollable Tabs with Drawer"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->Hw:Lcom/aide/appwizard/runtime/i$d;

    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "Tabs"

    const/4 v2, 0x4

    const-string v3, "Fixed Tabs"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->v5:Lcom/aide/appwizard/runtime/i$d;

    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "TabsDrawer"

    const/4 v2, 0x5

    const-string v3, "Fixed Tabs with Drawer"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->Zo:Lcom/aide/appwizard/runtime/i$d;

    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "Spinner"

    const/4 v2, 0x6

    const-string v3, "Dropdown List"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->VH:Lcom/aide/appwizard/runtime/i$d;

    new-instance v0, Lcom/aide/appwizard/runtime/i$d;

    const-string v1, "SpinnerDrawer"

    const/4 v2, 0x7

    const-string v3, "Dropdown List with Drawer"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/i$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->gn:Lcom/aide/appwizard/runtime/i$d;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/aide/appwizard/runtime/i$d;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->j6:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->DW:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->FH:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->Hw:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->v5:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->Zo:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->VH:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/aide/appwizard/runtime/i$d;->gn:Lcom/aide/appwizard/runtime/i$d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/appwizard/runtime/i$d;->u7:[Lcom/aide/appwizard/runtime/i$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x260c7e226e0f7c94L    # 2.104580868714769E-125

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
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

    const-wide v8, 0x239d119eafdb1ee5L    # 3.90561565093523E-137

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x239d119eafdb1ee5L    # 3.90561565093523E-137

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/appwizard/runtime/i$d;->we:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

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

    const-wide v6, -0x26a445ea0e31eee1L    # -2.863911091788481E122

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x26a445ea0e31eee1L    # -2.863911091788481E122

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/appwizard/runtime/i$d;->values()[Lcom/aide/appwizard/runtime/i$d;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-object v4, v4, Lcom/aide/appwizard/runtime/i$d;->we:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$d;
    .registers 9

    const-wide v6, 0x2879d335c56962cL

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2879d335c56962cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/appwizard/runtime/i$d;->values()[Lcom/aide/appwizard/runtime/i$d;

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
    iget-object v4, v0, Lcom/aide/appwizard/runtime/i$d;->we:Ljava/lang/String;

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
    sget-object v0, Lcom/aide/appwizard/runtime/i$d;->j6:Lcom/aide/appwizard/runtime/i$d;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/i$d;
    .registers 7

    const-wide v4, -0x36bbb4cfa229108L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36bbb4cfa229108L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/appwizard/runtime/i$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/i$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/appwizard/runtime/i$d;
    .registers 6

    const-wide v4, 0x1414890d26740770L    # 6.099936535208103E-212

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1414890d26740770L    # 6.099936535208103E-212

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/appwizard/runtime/i$d;->u7:[Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v0}, [Lcom/aide/appwizard/runtime/i$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/appwizard/runtime/i$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public VH()Z
    .registers 5

    const-wide v2, 0x648acdbbe9b61d57L    # 2.1213942920676965E176

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x648acdbbe9b61d57L    # 2.1213942920676965E176

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/appwizard/runtime/h;->j6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo()Z
    .registers 7

    const-wide v4, 0x2ab951311e9f00d7L    # 7.064743606454244E-103

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->tp:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x2ab951311e9f00d7L    # 7.064743606454244E-103

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/appwizard/runtime/h;->j6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$d;->EQ:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
