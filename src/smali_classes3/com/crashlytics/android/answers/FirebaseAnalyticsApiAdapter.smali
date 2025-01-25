.class Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lcom/crashlytics/android/answers/w;

.field private FH:Lcom/crashlytics/android/answers/u;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/crashlytics/android/answers/w;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/w;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;-><init>(Landroid/content/Context;Lcom/crashlytics/android/answers/w;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/answers/w;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->DW:Lcom/crashlytics/android/answers/w;

    return-void
.end method


# virtual methods
.method public j6()Lcom/crashlytics/android/answers/u;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->FH:Lcom/crashlytics/android/answers/u;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/crashlytics/android/answers/o;->j6(Landroid/content/Context;)Lcom/crashlytics/android/answers/u;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->FH:Lcom/crashlytics/android/answers/u;

    :cond_c
    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->FH:Lcom/crashlytics/android/answers/u;

    return-object v0
.end method

.method public j6(Lcom/crashlytics/android/answers/I;)V
    .registers 6

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->j6()Lcom/crashlytics/android/answers/u;

    move-result-object v0

    const-string v1, "Answers"

    if-nez v0, :cond_12

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "Firebase analytics logging was enabled, but not available..."

    invoke-interface {p1, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v2, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->DW:Lcom/crashlytics/android/answers/w;

    invoke-virtual {v2, p1}, Lcom/crashlytics/android/answers/w;->j6(Lcom/crashlytics/android/answers/I;)Lcom/crashlytics/android/answers/v;

    move-result-object v2

    if-nez v2, :cond_33

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fabric event was not mappable to Firebase event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    invoke-virtual {v2}, Lcom/crashlytics/android/answers/v;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/crashlytics/android/answers/v;->DW()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/crashlytics/android/answers/u;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "levelEnd"

    iget-object p1, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const-string p1, "post_score"

    invoke-virtual {v2}, Lcom/crashlytics/android/answers/v;->DW()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/crashlytics/android/answers/u;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_51
    return-void
.end method
