.class Lcom/crashlytics/android/core/qa;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/gA;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Labcd/gA;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/qa;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/core/qa;->DW:Labcd/gA;

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/qa;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object p1, p2

    :cond_7
    return-object p1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/qa;->j6:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/common/i;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/qa;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/qa;->DW:Labcd/gA;

    iget-object v0, v0, Labcd/gA;->v5:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionCancelTitle"

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/qa;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/qa;->DW:Labcd/gA;

    iget-object v0, v0, Labcd/gA;->DW:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionPromptMessage"

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/qa;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/qa;->DW:Labcd/gA;

    iget-object v0, v0, Labcd/gA;->FH:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionSendTitle"

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/qa;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/qa;->DW:Labcd/gA;

    iget-object v0, v0, Labcd/gA;->VH:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/qa;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/qa;->DW:Labcd/gA;

    iget-object v0, v0, Labcd/gA;->j6:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionPromptTitle"

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/qa;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
