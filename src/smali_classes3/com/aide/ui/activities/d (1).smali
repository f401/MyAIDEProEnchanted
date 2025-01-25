.class Lcom/aide/ui/activities/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/e;->run()V
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
.field final FH:Lcom/aide/ui/activities/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x44d3aec280c6140L

    const-wide v2, 0x5f0e21a5375a24L

    const-class v4, Lcom/aide/ui/activities/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/e;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/d;->FH:Lcom/aide/ui/activities/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2a620e7e288174b0L
    .end annotation

    const-wide v0, 0x1e408f86c9d0fa8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/d;->FH:Lcom/aide/ui/activities/e;

    iget-object v2, v2, Lcom/aide/ui/activities/e;->FH:Lcom/aide/ui/activities/f;

    iget-object v2, v2, Lcom/aide/ui/activities/f;->FH:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/d;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x66840b2224f361a0L
    .end annotation

    const-wide v0, -0x4bfb0e2422e069e0L  # -4.170866187079417E-58

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5b6acb2926b44169L
    .end annotation

    const-wide v0, -0x3c60591a390b039fL  # -5.7019072599655021E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method
