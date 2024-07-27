.class public Lcom/aide/ui/views/editor/sa;
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

.field public Hw:F

.field public Zo:F

.field public v5:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x4552ea6cc6a1efb8L    # 9.147082028559779E25

    const-class v0, Lcom/aide/ui/views/editor/sa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 8

    const-wide v4, 0xcc31e4a8e5461cfL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcc31e4a8e5461cfL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->FH:F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->Hw:F

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->v5:F

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->Zo:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/sa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/sa;)V
    .registers 8

    const-wide v4, -0x81aa85d371486a7L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x81aa85d371486a7L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/aide/ui/views/editor/sa;->FH:F

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->FH:F

    iget v0, p1, Lcom/aide/ui/views/editor/sa;->Hw:F

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->Hw:F

    iget v0, p1, Lcom/aide/ui/views/editor/sa;->v5:F

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->v5:F

    iget v0, p1, Lcom/aide/ui/views/editor/sa;->Zo:F

    iput v0, p0, Lcom/aide/ui/views/editor/sa;->Zo:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/sa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6()Landroid/graphics/RectF;
    .registers 9

    const-wide v6, -0x1e17528ee27ba1a1L    # -4.4408791117317626E163

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/sa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e17528ee27ba1a1L    # -4.4408791117317626E163

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/aide/ui/views/editor/sa;->FH:F

    iget v2, p0, Lcom/aide/ui/views/editor/sa;->Hw:F

    iget v3, p0, Lcom/aide/ui/views/editor/sa;->FH:F

    iget v4, p0, Lcom/aide/ui/views/editor/sa;->v5:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/aide/ui/views/editor/sa;->Hw:F

    iget v5, p0, Lcom/aide/ui/views/editor/sa;->Zo:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/sa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
