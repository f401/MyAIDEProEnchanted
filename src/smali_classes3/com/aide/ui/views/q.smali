.class Lcom/aide/ui/views/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/r;->onAnimationEnd(Landroid/animation/Animator;)V
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
.field final FH:Lcom/aide/ui/views/r;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xae93f0c23067807L

    const-wide v2, -0x3c1fd8fbb1c8d531L  # -9.311230101424601E18

    const-class v4, Lcom/aide/ui/views/q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/r;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/q;->FH:Lcom/aide/ui/views/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6e5cf2c906c9244L
    .end annotation

    const-wide v0, 0x15dd67a168d43648L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/q;->FH:Lcom/aide/ui/views/r;

    iget-object v2, v2, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    invoke-static {v2}, Lcom/aide/ui/views/SplitView;->access$100(Lcom/aide/ui/views/SplitView;)Lcom/aide/ui/views/SplitView$a;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/aide/ui/views/q;->FH:Lcom/aide/ui/views/r;

    iget-object v2, v2, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    invoke-static {v2}, Lcom/aide/ui/views/SplitView;->access$100(Lcom/aide/ui/views/SplitView;)Lcom/aide/ui/views/SplitView$a;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/views/q;->FH:Lcom/aide/ui/views/r;

    iget-object v3, v3, Lcom/aide/ui/views/r;->FH:Lcom/aide/ui/views/SplitView;

    invoke-static {v3}, Lcom/aide/ui/views/SplitView;->access$200(Lcom/aide/ui/views/SplitView;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/views/SplitView$a;->j6(Z)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/q;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method
