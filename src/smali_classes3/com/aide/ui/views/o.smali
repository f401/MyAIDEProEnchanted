.class Lcom/aide/ui/views/o;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditTextScrollView$a;-><init>(Lcom/aide/ui/views/CodeEditTextScrollView;I)V
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
.field final FH:Lcom/aide/ui/views/CodeEditTextScrollView;

.field final Hw:Lcom/aide/ui/views/CodeEditTextScrollView$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1397ababe31175c3L  # -1.6380927349548788E214

    const-wide v2, -0x3cae5347c4278900L  # -1.9899927528332288E16

    const-class v4, Lcom/aide/ui/views/o;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView$a;Lcom/aide/ui/views/CodeEditTextScrollView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/o;->Hw:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    iput-object p2, p0, Lcom/aide/ui/views/o;->FH:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3138d73d82e73acdL
    .end annotation

    const-wide v0, 0x19e87d0e181db1e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/o;->Hw:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$DragHandle;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/aide/ui/views/o;->Hw:Lcom/aide/ui/views/CodeEditTextScrollView$a;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView$a;->j6(Lcom/aide/ui/views/CodeEditTextScrollView$a;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/o;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method
