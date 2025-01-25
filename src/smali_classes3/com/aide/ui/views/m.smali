.class Lcom/aide/ui/views/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/n;->run()V
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
.field final FH:Lcom/aide/ui/views/n;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x8e9889bfff0260L

    const-wide v2, 0xabf2d3bb3c03944L

    const-class v4, Lcom/aide/ui/views/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/n;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/m;->FH:Lcom/aide/ui/views/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x88f080d07932c28L
    .end annotation

    const-wide v0, -0x4c09643175c0460bL  # -2.2511006326943596E-58

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/m;->FH:Lcom/aide/ui/views/n;

    iget-object v2, v2, Lcom/aide/ui/views/n;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->access$702(Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;Z)Z

    iget-object v2, p0, Lcom/aide/ui/views/m;->FH:Lcom/aide/ui/views/n;

    iget-object v2, v2, Lcom/aide/ui/views/n;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    invoke-static {v2, v3}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->access$802(Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;Z)Z

    iget-object v2, p0, Lcom/aide/ui/views/m;->FH:Lcom/aide/ui/views/n;

    iget-object v2, v2, Lcom/aide/ui/views/n;->FH:Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->this$0:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->invalidate()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/m;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method
