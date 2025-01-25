.class Lcom/aide/ui/trainer/TrainerState$LessonStates;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/TrainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LessonStates"
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

.field private static final ERROR_SETTING:Ljava/lang/String; = "Error"
    .annotation runtime Labcd/ru;
        field = -0x352d33b1b76a739bL
    .end annotation
.end field

.field private static final EXERCISES_SETTING:Ljava/lang/String; = "Exercises"
    .annotation runtime Labcd/ru;
        field = 0x53442807bb37380L
    .end annotation
.end field

.field private static final FAILURES_SETTING:Ljava/lang/String; = "Failures"
    .annotation runtime Labcd/ru;
        field = -0x3a7ad760c73ec100L
    .end annotation
.end field

.field private static final HAS_RUN_SETTING:Ljava/lang/String; = "HAS_RUN_SETTING"
    .annotation runtime Labcd/ru;
        field = 0x26bca59739a338b1L
    .end annotation
.end field

.field private static final LESSSON_SETTING:Ljava/lang/String; = "Lesson"
    .annotation runtime Labcd/ru;
        field = -0x52bad53eeddc3548L
    .end annotation
.end field

.field private static final PREF_STATES_SETTINGS_NAME:Ljava/lang/String; = "TrainerState2"
    .annotation runtime Labcd/ru;
        field = -0x2fa759e788d2230L
    .end annotation
.end field

.field private static final SHOW_ERROR_SETTING:Ljava/lang/String; = "ShowError"
    .annotation runtime Labcd/ru;
        field = -0xe1b56fc297a3e17L
    .end annotation
.end field

.field private static final SHOW_HINT_SETTING:Ljava/lang/String; = "ShowHint"
    .annotation runtime Labcd/ru;
        field = -0x718680d4fd0f8d0L
    .end annotation
.end field


# instance fields
.field private currentExerciseErrorHtml:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x165e6397ae0e5e48L
    .end annotation
.end field

.field private currentExerciseHasRun:Z
    .annotation runtime Labcd/ru;
        field = -0x4e3d4149841718L
    .end annotation
.end field

.field private currentExerciseShowError:Z
    .annotation runtime Labcd/ru;
        field = 0xa14f4c5476578f8L
    .end annotation
.end field

.field private currentExerciseShowHint:Z
    .annotation runtime Labcd/ru;
        field = -0xba77b43a75760a7L
    .end annotation
.end field

.field private currentLessonId:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x34a8eb0673fdcfe0L
    .end annotation
.end field

.field private currentLessonShownSkip:Z
    .annotation runtime Labcd/ru;
        field = 0x149648632147e7bL
    .end annotation
.end field

.field private lessonExercise:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0xe1987a403140428L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lessonFailureCount:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x196d1c81ffe921adL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;

    const-wide v1, 0x278372cd9dc86157L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x51ed38bb66abcfL
    .end annotation

    const-wide v0, -0x24f754c362f65a99L  # -3.4199346888119206E130

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const-string v4, "TrainerState2"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "Failures"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v6}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iput-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    const-string v4, "Exercises"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v6}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iput-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    const-string v4, "Lesson"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    const-string v4, "ShowHint"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    const-string v4, "ShowError"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    const-string v4, "HAS_RUN_SETTING"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    const-string v4, "Error"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_6c

    return-void

    :catchall_6c
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_74

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_74
    throw v3
.end method

.method static synthetic access$000(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    return p0
.end method

.method static synthetic access$102(Lcom/aide/ui/trainer/TrainerState$LessonStates;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    return p1
.end method

.method static synthetic access$200(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    return p0
.end method

.method static synthetic access$300(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    return p0
.end method

.method static synthetic access$400(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;

    return-object p0
.end method

.method private addFailure(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x136b321fef930421L
    .end annotation

    const-wide v0, -0x9f39aeb79502d0dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    if-lez p1, :cond_20

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    iget-object v3, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getLessonFailureCount(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v5, p1, 0x6

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method private save()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1de76d52ccec69b4L
    .end annotation

    const-wide v0, -0x7452816498533bcL  # -3.630394024995806E273

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "TrainerState2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Failures"

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-static {v4}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Exercises"

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    invoke-static {v4}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Lesson"

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "ShowHint"

    iget-boolean v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "ShowError"

    iget-boolean v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "HAS_RUN_SETTING"

    iget-boolean v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Error"

    iget-object v4, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_58

    return-void

    :catchall_58
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_60

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_60
    throw v2
.end method


# virtual methods
.method public getCurrentExercise()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x38febf28a211f628L
    .end annotation

    const-wide v0, 0x3cc52bf00ef14b78L  # 5.876308259439536E-16

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getLessonExercise(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getLessonExercise(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x484aadb911229525L
    .end annotation

    const-wide v0, -0x1e2c8c96c6ead4f7L  # -1.7501516374416127E163

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_23

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public getLessonFailureCount(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x139481fc944ab7a8L
    .end annotation

    const-wide v0, 0x34bc4136f2bb1c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_23

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public restartLesson(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x173c3c277c1de060L
    .end annotation

    const-wide v0, -0x2468261d9f240768L  # -1.6929600327953085E133

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->startLesson(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public retryCurrentExercise(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x6699ede6ff255ffL
    .end annotation

    const-wide v0, 0x683f6649a0537a13L  # 1.4325863224365832E194

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->addFailure(I)V

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public retryCurrentExercise(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x317027d176513d0bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x29c334b8ae90653fL  # -2.641565193109879E107

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    iput-object p1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->addFailure(I)V

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x29c334b8ae90653fL  # -2.641565193109879E107

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public showSkipLesson(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x266f206489e5ce5fL
    .end annotation

    const-wide v0, -0x24ea014a59b8ccd5L  # -6.098475694080175E130

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2c

    iget-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonShownSkip:Z

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonShownSkip:Z
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2e

    return v2

    :cond_2c
    const/4 p1, 0x0

    return p1

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public startLesson(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xd1ed6f4f3fb8bf5L
    .end annotation

    const-wide v0, 0x9aacfe67a992fafL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonShownSkip:Z

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public startNextExercise()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf3f3c9508ca7d68L
    .end annotation

    const-wide v0, -0x3fc9a7e37408b970L  # -22.34418558871272

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    iput-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    iget-object v3, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getCurrentExercise()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method
