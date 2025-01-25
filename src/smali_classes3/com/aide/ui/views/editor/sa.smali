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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/sa;

    const-wide v1, 0x4552ea6cc6a1efb8L  # 9.147082028559779E25

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xcc31e4a8e5461cfL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/sa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->FH:F

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->Hw:F

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->v5:F

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->Zo:F
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/sa;->DW:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/sa;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x81aa85d371486a7L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/sa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v3, p1, Lcom/aide/ui/views/editor/sa;->FH:F

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->FH:F

    iget v3, p1, Lcom/aide/ui/views/editor/sa;->Hw:F

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->Hw:F

    iget v3, p1, Lcom/aide/ui/views/editor/sa;->v5:F

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->v5:F

    iget v3, p1, Lcom/aide/ui/views/editor/sa;->Zo:F

    iput v3, p0, Lcom/aide/ui/views/editor/sa;->Zo:F
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/sa;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method


# virtual methods
.method public j6()Landroid/graphics/RectF;
    .registers 8

    const-wide v0, -0x1e17528ee27ba1a1L  # -4.4408791117317626E163

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/sa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/aide/ui/views/editor/sa;->FH:F

    iget v4, p0, Lcom/aide/ui/views/editor/sa;->Hw:F

    iget v5, p0, Lcom/aide/ui/views/editor/sa;->v5:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/aide/ui/views/editor/sa;->Zo:F

    add-float/2addr v6, v4

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/sa;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method
