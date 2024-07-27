.class Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/TrainerState$LessonScores;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LessonResult"
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z = false
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z = false
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3ec5cd034ef9f983L
    .annotation runtime Labcd/ru;
        field = -0x52e5d2146c6be7fcL
    .end annotation
.end field


# instance fields
.field public averageFailures:F
    .annotation runtime Labcd/ru;
        field = 0x56c34e5855463a0L
    .end annotation
.end field

.field public averageLevel:F
    .annotation runtime Labcd/ru;
        field = -0x26881ee579edb05L
    .end annotation
.end field

.field public exerciseCount:I
    .annotation runtime Labcd/ru;
        field = -0x4481ac886901a651L
    .end annotation
.end field

.field public lessonId:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x12ae3989c4a56d47L
    .end annotation
.end field

.field public time:Ljava/util/Date;
    .annotation runtime Labcd/ru;
        field = -0x24c5ee89bf11d957L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x9b009f0b41b7c39L    # -7.862649763938798E261

    const-class v0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;FFI)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x423ada5e7b86c03L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p3}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p4}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x19e53e74a7d3b78cL    # -7.105572692839821E183

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->lessonId:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->time:Ljava/util/Date;

    iput p3, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->averageFailures:F

    iput p4, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->averageLevel:F

    iput p5, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->exerciseCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x19e53e74a7d3b78cL    # -7.105572692839821E183

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p3}, Ljava/lang/Float;-><init>(F)V

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p4}, Ljava/lang/Float;-><init>(F)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
