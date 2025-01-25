.class Lcom/aide/ui/views/f;
.super Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditTextScrollView;->Hw(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final this$0:Lcom/aide/ui/views/CodeEditTextScrollView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1531a05ac6f9b43cL

    const-wide v2, -0x1ed7f72b41949679L  # -1.0559485015462743E160

    const-class v4, Lcom/aide/ui/views/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V
    .registers 10

    iput-object p1, p0, Lcom/aide/ui/views/f;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct/range {p0 .. p9}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V

    return-void
.end method


# virtual methods
.method protected getColumn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x155aefc53e6994a8L
    .end annotation

    const-wide v0, -0x446e64d7682ed554L  # -9.32058545986967E-22

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/f;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/f;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/f;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected getLine()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x19b57370ae62f7e0L
    .end annotation

    const-wide v0, 0x23d0657a210915b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/f;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/f;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/f;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected onClick()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3033fa72b8c94393L
    .end annotation

    const-wide v0, -0x2f566e1602024f0bL  # -3.789825308575872E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/f;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/f;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method protected onDraggedTo(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x150f230e71f912d0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/f;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x66a42f5c0082560L  # -4.816863589058511E277

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/f;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/f;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x66a42f5c0082560L  # -4.816863589058511E277

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method
