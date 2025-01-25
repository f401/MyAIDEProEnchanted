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
    .registers 5

    const-wide v0, -0x8e9889bfff0260L

    const-wide v2, 0x9bde5b389d57ea3L

    const-class v4, Lcom/aide/ui/views/n;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x4c10235d6ca41840L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/n;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/n;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    new-instance v3, Lcom/aide/ui/views/m;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/m;-><init>(Lcom/aide/ui/views/n;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/n;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
