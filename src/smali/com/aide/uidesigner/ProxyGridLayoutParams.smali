.class public Lcom/aide/uidesigner/ProxyGridLayoutParams;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private column:I
    .annotation runtime Labcd/ru;
        field = -0x8e287ccfbe2cdf5L
    .end annotation
.end field

.field private columnSpan:I
    .annotation runtime Labcd/ru;
        field = -0x2514303be403a005L
    .end annotation
.end field

.field private gravity:I
    .annotation runtime Labcd/ru;
        field = 0xea879f2ce43d22fL
    .end annotation
.end field

.field private params:Landroid/widget/GridLayout$LayoutParams;
    .annotation runtime Labcd/ru;
        field = 0x2d3a94c960cd0429L
    .end annotation
.end field

.field private row:I
    .annotation runtime Labcd/ru;
        field = -0x1c6179a59ac2bc3bL
    .end annotation
.end field

.field private rowSpan:I
    .annotation runtime Labcd/ru;
        field = 0xcf6474b84931fa1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1e703bbcfbcd1fe1L    # -8.932213065320902E161

    const-class v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 10

    const-wide v6, -0xdb44d838d79d3e1L

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_0

    const-wide v2, -0xdb44d838d79d3e1L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->column:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->row:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->columnSpan:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->rowSpan:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    move-object v0, p1

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    move-object v2, v0

    iput-object v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->params:Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v6, v7, v5, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method

.method private static getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2904a6e6d34a03edL
    .end annotation

    const-wide v2, -0x3a4d477d0dd470b3L    # -5.793790902486954E27

    const/4 v5, 0x7

    const/4 v9, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, -0x3a4d477d0dd470b3L    # -5.793790902486954E27

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-eqz p1, :cond_1

    move v1, v5

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    and-int/2addr v1, p0

    shr-int v0, v1, v0

    if-eq v0, v9, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_3

    :try_start_1
    const-class v0, Landroid/widget/GridLayout;

    const-string v1, "UNDEFINED_ALIGNMENT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Alignment;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-object v0

    :cond_1
    const/16 v0, 0x70

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    sget-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_5
    sget-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    sget-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_7
    sget-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_8
    sget-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_9

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method

.method private updateSpecs()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x2a50b5e0f40b0a99L
    .end annotation

    const-wide v6, 0x23e8c88d88db2a7bL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23e8c88d88db2a7bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->params:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->column:I

    iget v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->columnSpan:I

    iget v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iget-object v0, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->params:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->row:I

    iget v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->rowSpan:I

    iget v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public setColumn(I)V
    .registers 6

    const-wide v2, -0x78429fcd9903117L    # -2.352895831042574E272

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x78429fcd9903117L    # -2.352895831042574E272

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->column:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setColumnSpan(I)V
    .registers 6

    const-wide v2, 0x2fd9a1b4a3b9b29L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fd9a1b4a3b9b29L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->columnSpan:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setGravity(I)V
    .registers 6

    const-wide v2, -0x1fcfd97f6e8fedc5L    # -2.165414517227099E155

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1fcfd97f6e8fedc5L    # -2.165414517227099E155

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setRow(I)V
    .registers 6

    const-wide v2, -0x9ffce2d143d6ebL    # -3.51378874144371E305

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9ffce2d143d6ebL    # -3.51378874144371E305

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->row:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setRowSpan(I)V
    .registers 6

    const-wide v2, 0x17eac795608511c5L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17eac795608511c5L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->rowSpan:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
