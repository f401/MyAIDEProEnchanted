.class Lcom/crashlytics/android/answers/m;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Labcd/Qz;


# direct methods
.method constructor <init>(Labcd/Qz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/m;->j6:Labcd/Qz;

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/crashlytics/android/answers/m;
    .registers 4

    new-instance v0, Lcom/crashlytics/android/answers/m;

    new-instance v1, Labcd/Rz;

    const-string v2, "settings"

    invoke-direct {v1, p0, v2}, Labcd/Rz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/m;-><init>(Labcd/Qz;)V

    return-object v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method public j6()Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
