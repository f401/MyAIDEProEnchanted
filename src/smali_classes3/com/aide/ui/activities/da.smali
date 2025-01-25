.class Lcom/aide/ui/activities/da;
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

    const-wide v2, -0x127aa88ff9618f18L  # -3.7668027460316435E219

    const-class v4, Lcom/aide/ui/activities/da;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/da;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xef8039ffa063ca1L
    .end annotation

    const-wide v0, 0x460b3dd8adc98520L  # 2.697876152685082E29

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/da;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/activities/TrainerCourseActivity;Z)Z

    iget-object v2, p0, Lcom/aide/ui/activities/da;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->DW(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/da;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
