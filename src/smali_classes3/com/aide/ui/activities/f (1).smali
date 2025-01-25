.class Lcom/aide/ui/activities/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/AndroidTrainerActivity;->j6(Landroid/view/ViewGroup;)V
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
.field final FH:Landroid/view/View;

.field final Hw:Lcom/aide/ui/activities/AndroidTrainerActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x44d3aec280c6140L

    const-wide v2, -0xa187a923a84c3a5L  # -9.041195601747009E259

    const-class v4, Lcom/aide/ui/activities/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/AndroidTrainerActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/f;->Hw:Lcom/aide/ui/activities/AndroidTrainerActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/f;->FH:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xb1d93bdb1013885L
    .end annotation

    const-wide v0, 0x49e0b27024de1ae0L  # 7.625852327995009E47

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->er()V

    iget-object v2, p0, Lcom/aide/ui/activities/f;->Hw:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_PLAYGROUND"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_29

    return-void

    :cond_29
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v2, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/aide/ui/activities/f;->FH:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/aide/ui/activities/f;->FH:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/aide/ui/activities/c;

    invoke-direct {v3, p0}, Lcom/aide/ui/activities/c;-><init>(Lcom/aide/ui/activities/f;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/aide/ui/activities/e;

    invoke-direct {v3, p0}, Lcom/aide/ui/activities/e;-><init>(Lcom/aide/ui/activities/f;)V

    iget-object v4, p0, Lcom/aide/ui/activities/f;->Hw:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_DURATION"

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_67

    :cond_66
    return-void

    :catchall_67
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/f;->DW:Z

    if-eqz v3, :cond_6f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6f
    throw v2
.end method
