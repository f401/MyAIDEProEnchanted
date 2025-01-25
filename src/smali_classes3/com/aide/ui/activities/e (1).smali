.class Lcom/aide/ui/activities/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/f;->run()V
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
.field final FH:Lcom/aide/ui/activities/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x44d3aec280c6140L

    const-wide v2, -0x222e69e4f30915bdL  # -8.578150535884345E143

    const-class v4, Lcom/aide/ui/activities/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/f;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/e;->FH:Lcom/aide/ui/activities/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1ba5f12428e4200bL
    .end annotation

    const-wide v0, 0x49ebee772a5add4dL  # 1.2756856715532706E48

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Lcom/aide/ui/activities/d;

    invoke-direct {v3, p0}, Lcom/aide/ui/activities/d;-><init>(Lcom/aide/ui/activities/e;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/aide/ui/activities/e;->FH:Lcom/aide/ui/activities/f;

    iget-object v3, v3, Lcom/aide/ui/activities/f;->FH:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/e;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method
