.class Lcom/aide/ui/activities/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/trainer/g$i;)V
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
.field final FH:Lcom/aide/ui/trainer/g$i;

.field final Hw:Lcom/aide/ui/activities/TrainerCourseActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2f3f02722eb6ac58L  # 4.086360808607656E-81

    const-wide v2, -0x3bf7492a724f6b47L  # -5.698705623044005E19

    const-class v4, Lcom/aide/ui/activities/T;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$i;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/T;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/T;->FH:Lcom/aide/ui/trainer/g$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x62fad799b2278a0L
    .end annotation

    const-wide v0, -0x14b9a8b13ffb5421L  # -5.738131586195308E208

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/T;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/T;->Hw:Lcom/aide/ui/activities/TrainerCourseActivity;

    iget-object v3, p0, Lcom/aide/ui/activities/T;->FH:Lcom/aide/ui/trainer/g$i;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$i;Z)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/T;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
