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
    .registers 3

    const-class v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;

    const-wide v1, -0x1e703bbcfbcd1fe1L  # -8.932213065320902E161

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0xdb44d838d79d3e1L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->column:I

    iput v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->row:I

    const/4 v4, 0x1

    iput v4, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->columnSpan:I

    iput v4, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->rowSpan:I

    iput v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    move-object v3, p1

    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    iput-object v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->params:Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method private static getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2904a6e6d34a03edL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v3, -0x3a4d477d0dd470b3L  # -5.793790902486954E27

    invoke-static {v3, v4, v1, v0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_5c

    :cond_17
    const/4 v0, 0x7

    if-eqz p1, :cond_1c

    const/4 v2, 0x7

    goto :goto_1e

    :cond_1c
    const/16 v2, 0x70

    :goto_1e
    if-eqz p1, :cond_22

    const/4 v3, 0x0

    goto :goto_23

    :cond_22
    const/4 v3, 0x4

    :goto_23
    and-int/2addr v2, p0

    shr-int/2addr v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_59

    const/4 v4, 0x3

    if-eq v2, v4, :cond_51

    const/4 v4, 0x5

    if-eq v2, v4, :cond_49

    if-eq v2, v0, :cond_46

    :try_start_30
    const-class v0, Landroid/widget/GridLayout;

    const-string v2, "UNDEFINED_ALIGNMENT"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Alignment;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_42

    return-object v0

    :catchall_42
    move-exception v0

    :try_start_43
    sget-object p0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_46
    sget-object p0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_49
    if-eqz p1, :cond_4e

    sget-object p0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    goto :goto_50

    :cond_4e
    sget-object p0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    :goto_50
    return-object p0

    :cond_51
    if-eqz p1, :cond_56

    sget-object p0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_58

    :cond_56
    sget-object p0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    :goto_58
    return-object p0

    :cond_59
    sget-object p0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_5c

    return-object p0

    :catchall_5c
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_75

    const-wide v2, -0x3a4d477d0dd470b3L  # -5.793790902486954E27

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    throw v0
.end method

.method private updateSpecs()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2a50b5e0f40b0a99L
    .end annotation

    const-wide v0, 0x23e8c88d88db2a7bL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->params:Landroid/widget/GridLayout$LayoutParams;

    iget v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->column:I

    iget v4, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->columnSpan:I

    iget v5, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->params:Landroid/widget/GridLayout$LayoutParams;

    iget v3, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->row:I

    iget v4, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->rowSpan:I

    iget v5, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method


# virtual methods
.method public setColumn(I)V
    .registers 6

    const-wide v0, -0x78429fcd9903117L  # -2.352895831042574E272

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->column:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setColumnSpan(I)V
    .registers 6

    const-wide v0, 0x2fd9a1b4a3b9b29L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->columnSpan:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setGravity(I)V
    .registers 6

    const-wide v0, -0x1fcfd97f6e8fedc5L  # -2.165414517227099E155

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->gravity:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setRow(I)V
    .registers 6

    const-wide v0, -0x9ffce2d143d6ebL  # -3.51378874144371E305

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->row:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setRowSpan(I)V
    .registers 6

    const-wide v0, 0x17eac795608511c5L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyGridLayoutParams;->rowSpan:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyGridLayoutParams;->updateSpecs()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyGridLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method
