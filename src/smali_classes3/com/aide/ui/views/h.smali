.class Lcom/aide/ui/views/h;
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

    const-wide v2, -0x1ed89a562a1a6949L  # -1.0279456857743656E160

    const-class v4, Lcom/aide/ui/views/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V
    .registers 10

    iput-object p1, p0, Lcom/aide/ui/views/h;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct/range {p0 .. p9}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V

    return-void
.end method


# virtual methods
.method protected getColumn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4d35b0d0ddf45cL
    .end annotation

    const-wide v0, -0x445a9e5b6a7de9e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/h;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/h;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getSelectionPointColumn()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/h;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected getLine()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x21640c89ac8540a0L
    .end annotation

    const-wide v0, 0x23e5c6e713991e94L  # 9.362876316508974E-136

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/h;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/h;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getSelectionPointLine()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/h;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected onClick()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xabaf3b32f197207L
    .end annotation

    const-wide v0, -0x2f44c637937862b3L  # -8.070457242200328E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/h;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/h;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method protected onDraggedTo(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x77bfee1e510ae70L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/h;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x14bd942ff1fbeea4L  # -4.7313338777889675E208

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/h;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/h;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getSelectionAnchorLine()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/h;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getSelectionAnchorColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/aide/ui/views/editor/OConsole;->j6(IIII)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/h;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x14bd942ff1fbeea4L  # -4.7313338777889675E208

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method
