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
    .registers 5

    const-wide v0, 0x2f3f02722eb6ac58L  # 4.086360808607656E-81

    const-wide v2, 0x374dcde25ab02b1dL  # 2.6729362518098574E-42

    const-class v4, Lcom/aide/ui/activities/fa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x462ae24ed1e78dbfL  # 1.0649855625252167E30

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/fa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->v5()V

    iget-object v2, p0, Lcom/aide/ui/activities/fa;->FH:Lcom/aide/ui/activities/ga;

    iget-object v2, v2, Lcom/aide/ui/activities/ga;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/fa;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method
