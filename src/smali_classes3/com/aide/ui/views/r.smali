.class Lcom/aide/ui/views/r;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/SplitView;->openSplit(ZZ)V
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
.field final FH:Lcom/aide/ui/views/SplitView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xae93f0c23067807L

    const-wide v2, 0x4f8cc3712ab109bcL  # 1.626259498282809E75

    const-class v4, Lcom/aide/ui/views/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/SplitView;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x40c696d2d03d8155L
    .end annotation

    const-wide v0, 0x275655c09c5443fbL  # 3.459769009185327E-119

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/aide/ui/views/SplitView;->access$002(Lcom/aide/ui/views/SplitView;I)I

    iget-object v2, p0, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    new-instance v3, Lcom/aide/ui/views/q;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/q;-><init>(Lcom/aide/ui/views/r;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/r;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method
