.class Lcom/crashlytics/android/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/CrashlyticsInitProvider$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object p1

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/l;->DW()Z

    move-result p1

    return p1
.end method
