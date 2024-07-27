.class Lcom/aide/ui/views/g;
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
    .registers 6

    const-class v0, Lcom/aide/ui/views/g;

    const-wide v2, 0x1531a05ac6f9b43cL

    const-wide v4, -0x1ed848c0b5f68000L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V
    .registers 10

    iput-object p1, p0, Lcom/aide/ui/views/g;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct/range {p0 .. p9}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FFFFJ)V

    return-void
.end method


# virtual methods
.method protected getColumn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3a8eaa61fe04c13L
    .end annotation

    const-wide v2, -0x446481d1c768771bL    # -1.4554616248637844E-21

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/g;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x446481d1c768771bL    # -1.4554616248637844E-21

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/g;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getSelectionAnchorColumn()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/g;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected getLine()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x31bd9100d1a5b14dL
    .end annotation

    const-wide v2, 0x23db15f83c3f02a1L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/g;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23db15f83c3f02a1L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/g;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getSelectionAnchorLine()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/g;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onClick()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1b590957d6975840L
    .end annotation

    const-wide v2, -0x2f4d9a5f28cf7060L    # -5.453376984815702E80

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/g;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f4d9a5f28cf7060L    # -5.453376984815702E80

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/g;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onDraggedTo(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe6ec6e742285fbfL
    .end annotation

    const-wide v2, -0xd8f884ee9ed78c3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/g;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xd8f884ee9ed78c3L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/g;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/g;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getSelectionPointLine()I

    move-result v1

    iget-object v4, p0, Lcom/aide/ui/views/g;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Lcom/aide/ui/views/CodeEditTextScrollView;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getSelectionPointColumn()I

    move-result v4

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/aide/ui/views/editor/OConsole;->j6(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/g;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
