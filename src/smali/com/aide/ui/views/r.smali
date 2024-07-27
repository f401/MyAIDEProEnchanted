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
    .registers 6

    const-class v0, Lcom/aide/ui/views/r;

    const-wide v2, 0xae93f0c23067807L

    const-wide v4, 0x4f8cc3712ab109bcL    # 1.626259498282809E75

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v4, 0x275655c09c5443fbL    # 3.459769009185327E-119

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x275655c09c5443fbL    # 3.459769009185327E-119

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/aide/ui/views/SplitView;->access$002(Lcom/aide/ui/views/SplitView;I)I

    iget-object v0, p0, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    new-instance v1, Lcom/aide/ui/views/q;

    invoke-direct {v1, p0}, Lcom/aide/ui/views/q;-><init>(Lcom/aide/ui/views/r;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
