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
    .registers 4

    const-wide v2, -0x1378207049c1c6bcL    # -6.429528680166225E214

    const-class v0, Lcom/aide/ui/views/editor/x;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/Typeface;I)V
    .registers 14

    const-wide v8, -0x2560e34c59289f5L    # -2.120953586236053E297

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/x;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2560e34c59289f5L    # -2.120953586236053E297

    const/4 v2, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/x;->Hw:Landroid/graphics/Typeface;

    iput p1, p0, Lcom/aide/ui/views/editor/x;->FH:F

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aide/ui/views/editor/x;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/x;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static j6(Landroid/graphics/Typeface;FZ)F
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x275db7a017eb1e0L
    .end annotation

    const-wide v10, -0x171432f356f8c00L

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/x;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x171432f356f8c00L

    const/4 v2, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "public"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/x;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v10

    move-object v4, v8

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static j6(Landroid/graphics/Typeface;F)Z
    .registers 11

    const-wide v2, 0xf20fd795875b073L    # 8.349302155491137E-236

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v5, Lcom/aide/ui/views/editor/x;->j6:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v6, 0xf20fd795875b073L    # 8.349302155491137E-236

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, p0, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Typeface;->isBold()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v0

    :goto_0
    invoke-static {v6, p1, v5}, Lcom/aide/ui/views/editor/x;->j6(Landroid/graphics/Typeface;FZ)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, p1, v7}, Lcom/aide/ui/views/editor/x;->j6(Landroid/graphics/Typeface;FZ)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    cmpl-float v2, v5, v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v5, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/x;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method
