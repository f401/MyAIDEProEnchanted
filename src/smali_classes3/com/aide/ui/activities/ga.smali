.class Lcom/aide/ui/activities/ga;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/TrainerCourseActivity;->v5()V
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
.field final FH:Lcom/aide/ui/activities/TrainerCourseActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2f3f02722eb6ac58L  # 4.086360808607656E-81

    const-wide v2, -0x127adf2291777658L  # -3.7291772875953656E219

    const-class v4, Lcom/aide/ui/activities/ga;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/ga;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1d506085d074dffbL
    .end annotation

    const-wide v0, 0x462055b6b4640688L  # 6.470888512166628E29

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ga;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/ga;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->FH(Lcom/aide/ui/activities/TrainerCourseActivity;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/aide/ui/activities/ga;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    new-instance v3, Lcom/aide/ui/activities/fa;

    invoke-direct {v3, p0}, Lcom/aide/ui/activities/fa;-><init>(Lcom/aide/ui/activities/ga;)V

    const-string v4, "Expert Mode"

    const-string v5, "AIDE will switch to expert mode, where you can create and modify your own apps."

    invoke-static {v2, v4, v5, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_2f

    :cond_23
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->v5()V

    iget-object v2, p0, Lcom/aide/ui/activities/ga;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    :goto_2f
    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ga;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
