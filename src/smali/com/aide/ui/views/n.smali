.class Lcom/aide/ui/views/n;
.super Ljava/util/TimerTask;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->scheduleRemoveCaretHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/n;

    const-wide v2, -0x8e9889bfff0260L

    const-wide v4, 0x9bde5b389d57ea3L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/n;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xe0e36672133d077L
    .end annotation

    const-wide v2, -0x4c10235d6ca41840L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/n;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4c10235d6ca41840L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/n;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    iget-object v0, v0, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    new-instance v1, Lcom/aide/ui/views/m;

    invoke-direct {v1, p0}, Lcom/aide/ui/views/m;-><init>(Lcom/aide/ui/views/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/n;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
