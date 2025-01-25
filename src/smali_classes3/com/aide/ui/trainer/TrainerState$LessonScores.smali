.class Lcom/aide/ui/trainer/TrainerState$LessonScores;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/TrainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LessonScores"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;
    }
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

.field private static final FINISHED_SETTING:Ljava/lang/String; = "Finished"
    .annotation runtime Labcd/ru;
        field = -0x54594d9a7bc10c38L
    .end annotation
.end field

.field private static final PREF_SCORES_SETTINGS_NAME:Ljava/lang/String; = "TrainerScore2"
    .annotation runtime Labcd/ru;
        field = 0x8997c8aeb286e00L
    .end annotation
.end field

.field private static final RESULTS_SETTING:Ljava/lang/String; = "Results"
    .annotation runtime Labcd/ru;
        field = 0x2d7bcd6f72cd6268L
    .end annotation
.end field

.field private static final STARTED_SETTING:Ljava/lang/String; = "Started"
    .annotation runtime Labcd/ru;
        field = -0x9e2026bfcd78739L
    .end annotation
.end field


# instance fields
.field private lessonFinished:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x4e18bae5005962ebL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;",
            ">;"
        }
    .end annotation
.end field

.field private lessonResults:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x29315b43dcccf6b1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;",
            ">;"
        }
    .end annotation
.end field

.field private lessonStarted:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = -0x393a8ed3b1e56200L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/TrainerState$LessonScores;

    const-wide v1, 0x16e2566975ba07c4L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x132fdd51e60fa290L
    .end annotation

    const-wide v0, -0x3c5b712f840686b0L  # -7.406752791682519E17

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const-string v4, "TrainerScore2"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "Results"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v5}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iput-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonResults:Ljava/util/Map;

    const-string v4, "Finished"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonFinished:Ljava/util/List;

    const-string v4, "Started"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3, v4}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonStarted:Ljava/util/Set;
    :try_end_54
    .catchall {:try_start_6 .. :try_end_54} :catchall_55

    return-void

    :catchall_55
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_5d

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    throw v3
.end method

.method private save()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x14e7bd9576b1641fL
    .end annotation

    const-wide v0, 0x1ac3ce6ac4652cf8L  # 9.546327183945956E-180

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "TrainerScore2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Results"

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonResults:Ljava/util/Map;

    invoke-static {v4}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Finished"

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonFinished:Ljava/util/List;

    invoke-static {v4}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Started"

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonStarted:Ljava/util/Set;

    invoke-static {v4}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v2
.end method


# virtual methods
.method public getAverageFailures(Ljava/lang/String;)F
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2ff785406b435568L
    .end annotation

    const-wide v0, -0x345749a6c30ba159L  # -3.029719062041793E56

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonResults:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonResults:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;

    iget p1, v2, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;->averageFailures:F
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_21

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public isLessonFinished(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x229fb0f667a79ab0L
    .end annotation

    const-wide v0, -0x4b0f12a88c3080b1L  # -1.104545834954285E-53

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonResults:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public isLessonStarted(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x845918f587ee769L
    .end annotation

    const-wide v0, -0x99e1b1d37a58768L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonStarted:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public setLessonFinished(Ljava/lang/String;FFI)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2a47daeacb2c4d01L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p2}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p3}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2ae4aa296e97a9a8L  # -9.566266611973496E101

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    new-instance v0, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v1, v0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/trainer/TrainerState$LessonScores$LessonResult;-><init>(Ljava/lang/String;Ljava/util/Date;FFI)V

    iget-object v1, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonResults:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonFinished:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonScores;->save()V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x2ae4aa296e97a9a8L  # -9.566266611973496E101

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p3}, Ljava/lang/Float;-><init>(F)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public startLesson(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x143c3c4129813ec0L
    .end annotation

    const-wide v0, -0x18b94fa468c4cc4fL  # -3.1590804386767984E189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonScores;->lessonStarted:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonScores;->save()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonScores;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
