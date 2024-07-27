.class Lcom/aide/ui/views/s;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V
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
.field final FH:Ljava/lang/Runnable;

.field final Hw:Lcom/aide/ui/views/SplitView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/s;

    const-wide v2, 0xae93f0c23067807L

    const-wide v4, 0x4f8d39742f4902dfL    # 1.652323096123724E75

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/SplitView;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/s;->Hw:Lcom/aide/ui/views/SplitView;

    iput-object p2, p0, Lcom/aide/ui/views/s;->FH:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x33c8d3c0fdda014dL
    .end annotation

    const-wide v2, -0x268ac37b6e6c024fL    # -8.774029716214137E122

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/s;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x268ac37b6e6c024fL    # -8.774029716214137E122

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/s;->Hw:Lcom/aide/ui/views/SplitView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/views/SplitView;->access$202(Lcom/aide/ui/views/SplitView;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/s;->Hw:Lcom/aide/ui/views/SplitView;

    invoke-static {v0}, Lcom/aide/ui/views/SplitView;->access$300(Lcom/aide/ui/views/SplitView;)V

    iget-object v0, p0, Lcom/aide/ui/views/s;->Hw:Lcom/aide/ui/views/SplitView;

    invoke-static {v0}, Lcom/aide/ui/views/SplitView;->access$100(Lcom/aide/ui/views/SplitView;)Lcom/aide/ui/views/SplitView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/s;->Hw:Lcom/aide/ui/views/SplitView;

    invoke-static {v0}, Lcom/aide/ui/views/SplitView;->access$100(Lcom/aide/ui/views/SplitView;)Lcom/aide/ui/views/SplitView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/s;->Hw:Lcom/aide/ui/views/SplitView;

    invoke-static {v1}, Lcom/aide/ui/views/SplitView;->access$200(Lcom/aide/ui/views/SplitView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/aide/ui/views/SplitView$a;->j6(Z)V

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/s;->FH:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/s;->FH:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/s;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
