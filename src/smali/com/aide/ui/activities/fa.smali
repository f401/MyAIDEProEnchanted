.class Lcom/aide/ui/activities/fa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/ga;->run()V
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
.field final FH:Lcom/aide/ui/activities/ga;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/fa;

    const-wide v2, 0x2f3f02722eb6ac58L    # 4.086360808607656E-81

    const-wide v4, 0x374dcde25ab02b1dL    # 2.6729362518098574E-42

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/ga;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/fa;->FH:Lcom/aide/ui/activities/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xfcddde1055219dcL
    .end annotation

    const-wide v2, 0x462ae24ed1e78dbfL    # 1.0649855625252167E30

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x462ae24ed1e78dbfL    # 1.0649855625252167E30

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->v5()V

    iget-object v0, p0, Lcom/aide/ui/activities/fa;->FH:Lcom/aide/ui/activities/ga;

    iget-object v0, v0, Lcom/aide/ui/activities/ga;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/fa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
