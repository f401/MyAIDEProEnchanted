.class public Lcom/aide/common/Za;
.super Landroid/graphics/drawable/Drawable;


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


# instance fields
.field private FH:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = 0x75c3e3cfb30ab08L
    .end annotation
.end field

.field private Hw:Landroid/graphics/drawable/Drawable;
    .annotation runtime Labcd/ru;
        field = 0xf20656ee631b640L
    .end annotation
.end field

.field private v5:[Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xf5e2d8cd293cc80L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/Za;

    const-wide v1, 0x9fc1c0c59614421L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Za;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9d291c9754f1dd0L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/aide/common/Za;->FH:Landroid/content/Context;

    iput-object p3, p0, Lcom/aide/common/Za;->v5:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/common/Za;->Hw:Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Za;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x9d291c9754f1dd0L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public static j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Za;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x581fb316411cc258L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    aget-object v1, p2, v2

    invoke-virtual {p0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3c

    :cond_31
    invoke-virtual {p0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    new-instance v1, Lcom/aide/common/Za;

    invoke-direct {v1, v0, p1, p2}, Lcom/aide/common/Za;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    :goto_3c
    return-void

    :catchall_3d
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Za;->DW:Z

    if-eqz v1, :cond_53

    const-wide v2, -0x581fb316411cc258L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    const-wide v0, 0x782086a671aad4dL

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xcccccd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v4, 0x42200000  # 40.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/aide/common/Za;->v5:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/high16 v7, 0x42f00000  # 120.0f

    invoke-virtual {p1, v5, v7, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v4, 0x420c0000  # 35.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/aide/common/Za;->v5:[Ljava/lang/String;

    aget-object v3, v4, v3

    const/high16 v4, 0x42b40000  # 90.0f

    invoke-virtual {p1, v3, v7, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/aide/common/Za;->Hw:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x64

    invoke-virtual {v2, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/aide/common/Za;->Hw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4f

    return-void

    :catchall_4f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Za;->DW:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v2
.end method

.method public getIntrinsicHeight()I
    .registers 5

    const-wide v0, 0x4a39913427454800L  # 3.736650765474669E49

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const/16 v0, 0x64

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Za;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getIntrinsicWidth()I
    .registers 5

    const-wide v0, 0x1faaf0c9d4f3cbc3L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const/16 v0, 0x190

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Za;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getOpacity()I
    .registers 5

    const-wide v0, -0x15164e9fe44e86a3L  # -1.0310974299370984E207

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, -0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Za;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public setAlpha(I)V
    .registers 6

    const-wide v0, 0x4c34f3bdb5794b5L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Za;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6

    const-wide v0, -0x1503ae6f6f6a3764L  # -2.272945379116894E207

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Za;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method
