.class public Lcom/aide/ui/views/editor/x;
.super Ljava/lang/Object;


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
.field public FH:F

.field public Hw:Landroid/graphics/Typeface;

.field public v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/x;

    const-wide v1, -0x1378207049c1c6bcL  # -6.429528680166225E214

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/Typeface;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/x;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2560e34c59289f5L  # -2.120953586236053E297

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/x;->Hw:Landroid/graphics/Typeface;

    iput p1, p0, Lcom/aide/ui/views/editor/x;->FH:F

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2f

    invoke-virtual {p2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-boolean v0, p0, Lcom/aide/ui/views/editor/x;->v5:Z
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/x;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x2560e34c59289f5L  # -2.120953586236053E297

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method private static j6(Landroid/graphics/Typeface;FZ)F
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x275db7a017eb1e0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/x;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x171432f356f8c00L

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "public"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return p0

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/x;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x171432f356f8c00L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public static j6(Landroid/graphics/Typeface;F)Z
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/x;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v1, 0xf20fd795875b073L  # 8.349302155491137E-236

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-static {v1, p1, v2}, Lcom/aide/ui/views/editor/x;->j6(Landroid/graphics/Typeface;FZ)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcom/aide/ui/views/editor/x;->j6(Landroid/graphics/Typeface;FZ)F

    move-result p0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_30

    cmpl-float p0, v1, p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/x;->DW:Z

    if-eqz v1, :cond_45

    const-wide v2, 0xf20fd795875b073L  # 8.349302155491137E-236

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method
