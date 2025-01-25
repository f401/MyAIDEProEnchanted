.class public Lcom/aide/ui/trainer/TrainerState;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/trainer/TrainerState$LessonScores;,
        Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;,
        Lcom/aide/ui/trainer/TrainerState$LessonStates;
    }
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private lessonScores:Lcom/aide/ui/trainer/TrainerState$LessonScores;
    .annotation runtime Labcd/ru;
        field = 0x33b347ac2d9bafc3L
    .end annotation
.end field

.field private lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;
    .annotation runtime Labcd/ru;
        field = 0x4467a25462016efcL
    .end annotation
.end field

.field private locale:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x198b1e809deb75ecL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/TrainerState;

    const-wide v1, 0x33590545e2aed201L  # 2.4328681443246333E-61

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xdc8c5a8bfad7d80L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "en"

    iput-object v3, p0, Lcom/aide/ui/trainer/TrainerState;->locale:Ljava/lang/String;

    new-instance v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-direct {v3}, Lcom/aide/ui/trainer/TrainerState$LessonStates;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    new-instance v3, Lcom/aide/ui/trainer/TrainerState$LessonScores;

    invoke-direct {v3}, Lcom/aide/ui/trainer/TrainerState$LessonScores;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/trainer/TrainerState;->lessonScores:Lcom/aide/ui/trainer/TrainerState$LessonScores;
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v3
.end method


# virtual methods
.method public calculateLessonAverageFailures(Lcom/aide/ui/trainer/g$g;)F
    .registers 6

    const-wide v0, 0x51a54662767cda89L  # 2.0665081986916255E85

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getLessonFailureCount(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result p1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1e

    int-to-float p1, p1

    div-float/2addr v2, p1

    return v2

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public exerciseHasRun()Z
    .registers 5

    const-wide v0, -0x2a1ba409e6ffbef1L  # -5.836731480315233E105

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-static {v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->access$100(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getCurrentExercise()I
    .registers 5

    const-wide v0, -0x36a706ba0fe5c091L  # -2.2277305703842644E45

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getCurrentExercise()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getCurrentExerciseErrorText()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x12b3c54a12d84578L  # -3.114064293061373E218

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-static {v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->access$400(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getCurrentLessonId()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x5e6cec1d98e1550L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-static {v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->access$000(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getLessonAverageFailures(Lcom/aide/ui/trainer/g$i;)F
    .registers 6

    const-wide v0, -0xd7141db77886258L  # -6.559778145158381E243

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonScores:Lcom/aide/ui/trainer/TrainerState$LessonScores;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonScores;->getAverageFailures(Ljava/lang/String;)F

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public getLocale()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x70d77ed14e1e178L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState;->locale:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public isLessonFinished(Lcom/aide/ui/trainer/g$i;)Z
    .registers 6

    const-wide v0, -0x376b13cea2482550L  # -4.556544940032387E41

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonScores:Lcom/aide/ui/trainer/TrainerState$LessonScores;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonScores;->isLessonFinished(Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z
    .registers 6

    const-wide v0, 0x19b2c207893de0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getLessonExercise(Ljava/lang/String;)I

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    if-lez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public isLessonStarted(Lcom/aide/ui/trainer/g$i;)Z
    .registers 6

    const-wide v0, -0x192a1b71fd011bd3L  # -2.3814335613032176E187

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonScores:Lcom/aide/ui/trainer/TrainerState$LessonScores;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonScores;->isLessonStarted(Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public restartLesson(Lcom/aide/ui/trainer/g$i;)V
    .registers 6

    const-wide v0, -0x2088d151002a3985L  # -7.588491222022713E151

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->restartLesson(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public retryCurrentExercise(I)V
    .registers 6

    const-wide v0, -0x33928df909761220L  # -1.4786551129575345E60

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->retryCurrentExercise(I)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public retryCurrentExercise(Ljava/lang/String;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2afff630cbb89788L  # -2.806385802280927E101

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->retryCurrentExercise(Ljava/lang/String;I)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x2afff630cbb89788L  # -2.806385802280927E101

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public runCurrentExercise()V
    .registers 5

    const-wide v0, -0x8cc5d2400c95410L  # -1.582898086464976E266

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->access$102(Lcom/aide/ui/trainer/TrainerState$LessonStates;Z)Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public setLessonFinished(Lcom/aide/ui/trainer/g$g;)V
    .registers 9

    const-wide v0, -0x13a3f611ea84e44fL  # -9.43922184303399E213

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->DW(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lesson finished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonScores:Lcom/aide/ui/trainer/TrainerState$LessonScores;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getLessonFailureCount(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$g;->QX()F

    move-result v5

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/aide/ui/trainer/TrainerState$LessonScores;->setLessonFinished(Ljava/lang/String;FFI)V
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v2
.end method

.method public showErrorForCurrentExercise()Z
    .registers 5

    const-wide v0, 0x1d625dc72b122c47L  # 3.893270414237973E-167

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-static {v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->access$300(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public showHintForCurrentExercise()Z
    .registers 5

    const-wide v0, -0x17105b9ae9c13200L  # -2.9566056461439995E197

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-static {v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->access$200(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public showSkipLesson(Lcom/aide/ui/trainer/g$g;)Z
    .registers 6

    const-wide v0, -0x2b77bbcf310dd3bfL  # -1.6586448387015855E99

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->showSkipLesson(Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public startLesson(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0xf4365cc383dcdb0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/F;->FH(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lesson started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->startLesson(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonScores:Lcom/aide/ui/trainer/TrainerState$LessonScores;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/TrainerState$LessonScores;->startLesson(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exercise started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_52

    return-void

    :catchall_52
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_5a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v2
.end method

.method public startNextExercise()V
    .registers 5

    const-wide v0, -0x7ccb36d6c3b4d07L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState;->lessonStates:Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->startNextExercise()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exercise started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method
