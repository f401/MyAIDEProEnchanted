.class public Lcom/appfour/backbone/api/Api;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anonymous(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appfour/backbone/api/objects/CatchExceptions",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lcom/appfour/backbone/api/objects/CatchExceptions;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static defineEvent(Ljava/lang/String;)Lcom/appfour/backbone/api/define/DefineOccurrences;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/define/DefineAnalytics;->defineEvent(Ljava/lang/String;)Lcom/appfour/backbone/api/define/DefineOccurrences;

    move-result-object v0

    return-object v0
.end method

.method public static event()Lcom/appfour/backbone/api/objects/EventData;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->tp()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method

.method public static event(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appfour/backbone/api/objects/CatchExceptions",
            "<*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->tp()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/objects/EventData;->setValue(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method

.method public static event(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->tp()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/objects/EventData;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method

.method public static getAppAndVersionName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->Hw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->QX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->u7()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersionCode()I
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->FH()I

    move-result v0

    return v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->J8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildVariantName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->Ws()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceFeaturesText()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->we()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMetricsText()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->v5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallTime()J
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->j6()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUpdateTime()J
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->VH()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->J0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeSinceInstall()J
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->EQ()J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBeenUpdated()Z
    .registers 4

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getInstallTime()J

    move-result-wide v0

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static identifier(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static if_(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static isMainProcess()Z
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->gn()Z

    move-result v0

    return v0
.end method

.method public static isMainThread()Z
    .registers 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->Zo()Z

    move-result v0

    return v0
.end method

.method public static property()Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->tp()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/appfour/backbone/api/objects/EventData;->setIsProperty(Z)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method

.method public static property(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appfour/backbone/api/objects/CatchExceptions",
            "<*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->tp()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/appfour/backbone/api/objects/EventData;->setIsProperty(Z)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/objects/EventData;->setValue(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method

.method public static property(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->tp()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/appfour/backbone/api/objects/EventData;->setIsProperty(Z)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/objects/EventData;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method

.method public static this_(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static undefineEvent(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/define/DefineAnalytics;->undefineEvent(Ljava/lang/String;)V

    return-void
.end method
