.class Lcom/aide/ui/activities/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Lcom/aide/ui/trainer/g$c;",
        ">;"
    }
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

    const-wide v2, -0x127a8d46acf99b1bL  # -3.785615479071658E219

    const-class v4, Lcom/aide/ui/activities/ca;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/ca;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/ui/trainer/g$c;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x47ff2caff7a63a90L
    .end annotation

    const-wide v0, 0x3160b29b5142a8bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ca;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/activities/ca;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-virtual {v2, p1}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/trainer/g$c;)V

    goto :goto_27

    :cond_18
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/activities/ca;->FH:Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v4

    const-string v5, "show_course"

    invoke-virtual {v2, v3, v4, v5}, Labcd/Ek;->Hw(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :goto_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ca;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {p0, p1}, Lcom/aide/ui/activities/ca;->j6(Lcom/aide/ui/trainer/g$c;)V

    return-void
.end method
