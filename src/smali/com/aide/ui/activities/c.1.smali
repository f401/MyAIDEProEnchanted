.class Lcom/aide/ui/activities/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .registers 6

    const-class v0, Lcom/aide/ui/activities/c;

    const-wide v2, 0x44d3aec280c6140L

    const-wide v4, -0x222e4362eec606c0L    # -8.65152206350993E143

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/f;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/c;->FH:Lcom/aide/ui/activities/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x45469b7978de3bL
    .end annotation

    const-wide v2, 0x3d34644cfae4631L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3d34644cfae4631L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/c;->FH:Lcom/aide/ui/activities/f;

    iget-object v0, v0, Lcom/aide/ui/activities/f;->Hw:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/activities/c;->FH:Lcom/aide/ui/activities/f;

    iget-object v0, v0, Lcom/aide/ui/activities/f;->FH:Landroid/view/View;

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/c;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x29613832402fdc87L
    .end annotation

    const-wide v2, -0x48dbc2d4cd1cae3bL    # -4.537727378819246E-43

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x48dbc2d4cd1cae3bL    # -4.537727378819246E-43

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1820b2f6f3b4cfccL
    .end annotation

    const-wide v2, -0x399ab05ed368de58L    # -1.3507484609635233E31

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x399ab05ed368de58L    # -1.3507484609635233E31

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
