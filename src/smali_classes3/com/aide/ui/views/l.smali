.class Lcom/aide/ui/views/l;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIFLjava/lang/Runnable;)V
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

.field final Hw:Lcom/aide/ui/views/CodeEditTextScrollView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1531a05ac6f9b43cL

    const-wide v2, -0x1ed9e0abf83e0c01L  # -9.719400618412976E159

    const-class v4, Lcom/aide/ui/views/l;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/l;->Hw:Lcom/aide/ui/views/CodeEditTextScrollView;

    iput-object p2, p0, Lcom/aide/ui/views/l;->FH:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2763d473a3c8bdd0L
    .end annotation

    const-wide v0, -0xbb45473c4de6d8cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/l;->FH:Ljava/lang/Runnable;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/l;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method
