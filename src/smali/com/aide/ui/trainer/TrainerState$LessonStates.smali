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
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x278372cd9dc86157L

    const-class v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x51ed38bb66abcfL
    .end annotation

    const-wide v4, -0x24f754c362f65a99L    # -3.4199346888119206E130

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24f754c362f65a99L    # -3.4199346888119206E130

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TrainerState2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "Failures"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    const-string v0, "Exercises"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    const-string v0, "Lesson"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    const-string v0, "ShowHint"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    const-string v0, "ShowError"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    const-string v0, "HAS_RUN_SETTING"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    const-string v0, "Error"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic access$000(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    return v0
.end method

.method static synthetic access$102(Lcom/aide/ui/trainer/TrainerState$LessonStates;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    return p1
.end method

.method static synthetic access$200(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    return v0
.end method

.method static synthetic access$300(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    return v0
.end method

.method static synthetic access$400(Lcom/aide/ui/trainer/TrainerState$LessonStates;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;

    return-object v0
.end method

.method private addFailure(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x136b321fef930421L
    .end annotation

    const-wide v4, -0x9f39aeb79502d0dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9f39aeb79502d0dL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    iget-object v1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getLessonFailureCount(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v3, p1, 0x6

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private save()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1de76d52ccec69b4L
    .end annotation

    const-wide v4, -0x7452816498533bcL    # -3.630394024995806E273

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7452816498533bcL    # -3.630394024995806E273

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TrainerState2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Failures"

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-static {v2}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Exercises"

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    invoke-static {v2}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Lesson"

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ShowHint"

    iget-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ShowError"

    iget-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "HAS_RUN_SETTING"

    iget-boolean v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Error"

    iget-object v2, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public getCurrentExercise()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x38febf28a211f628L
    .end annotation

    const-wide v2, 0x3cc52bf00ef14b78L    # 5.876308259439536E-16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3cc52bf00ef14b78L    # 5.876308259439536E-16

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getLessonExercise(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getLessonExercise(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x484aadb911229525L
    .end annotation

    const-wide v2, -0x1e2c8c96c6ead4f7L    # -1.7501516374416127E163

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e2c8c96c6ead4f7L    # -1.7501516374416127E163

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getLessonFailureCount(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x139481fc944ab7a8L
    .end annotation

    const-wide v2, 0x34bc4136f2bb1c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34bc4136f2bb1c0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public restartLesson(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x173c3c277c1de060L
    .end annotation

    const-wide v2, -0x2468261d9f240768L    # -1.6929600327953085E133

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2468261d9f240768L    # -1.6929600327953085E133

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->startLesson(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public retryCurrentExercise(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x6699ede6ff255ffL
    .end annotation

    const-wide v2, 0x683f6649a0537a13L    # 1.4325863224365832E194

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x683f6649a0537a13L    # 1.4325863224365832E194

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->addFailure(I)V

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public retryCurrentExercise(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x317027d176513d0bL
    .end annotation

    const-wide v2, -0x29c334b8ae90653fL    # -2.641565193109879E107

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x29c334b8ae90653fL    # -2.641565193109879E107

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    iput-object p1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseErrorHtml:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->addFailure(I)V

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public showSkipLesson(Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x266f206489e5ce5fL
    .end annotation

    const-wide v4, -0x24ea014a59b8ccd5L    # -6.098475694080175E130

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x24ea014a59b8ccd5L    # -6.098475694080175E130

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonFailureCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonShownSkip:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonShownSkip:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public startLesson(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xd1ed6f4f3fb8bf5L
    .end annotation

    const-wide v2, 0x9aacfe67a992fafL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9aacfe67a992fafL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonShownSkip:Z

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public startNextExercise()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xf3f3c9508ca7d68L
    .end annotation

    const-wide v4, -0x3fc9a7e37408b970L    # -22.34418558871272

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3fc9a7e37408b970L    # -22.34418558871272

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowHint:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseShowError:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentExerciseHasRun:Z

    iget-object v0, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->lessonExercise:Ljava/util/Map;

    iget-object v1, p0, Lcom/aide/ui/trainer/TrainerState$LessonStates;->currentLessonId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->getCurrentExercise()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/aide/ui/trainer/TrainerState$LessonStates;->save()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerState$LessonStates;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
