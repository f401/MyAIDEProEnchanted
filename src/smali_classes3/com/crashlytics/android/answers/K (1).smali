.class Lcom/crashlytics/android/answers/K;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/sz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz<",
        "Lcom/crashlytics/android/answers/I;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lcom/crashlytics/android/answers/I;)[B
    .registers 3

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/K;->j6(Lcom/crashlytics/android/answers/I;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public j6(Lcom/crashlytics/android/answers/I;)Lorg/json/JSONObject;
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->j6:Lcom/crashlytics/android/answers/J;

    const-string v2, "appBundleId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->j6:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "executionId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "installationId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->FH:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "limitAdTrackingEnabled"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->Hw:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "betaDeviceToken"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->v5:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "buildId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osVersion"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceModel"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->gn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVersionCode"

    iget-object v3, v1, Lcom/crashlytics/android/answers/J;->u7:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVersionName"

    iget-object v1, v1, Lcom/crashlytics/android/answers/J;->tp:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p1, Lcom/crashlytics/android/answers/I;->DW:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->Hw:Ljava/util/Map;

    if-eqz v1, :cond_6f

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->Hw:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6f
    const-string v1, "customType"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->Zo:Ljava/util/Map;

    if-eqz v1, :cond_86

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->Zo:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "customAttributes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_86
    const-string v1, "predefinedType"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    if-eqz v1, :cond_9d

    new-instance v1, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "predefinedAttributes"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9d} :catch_9e

    :cond_9d
    return-object v0

    :catch_9e
    move-exception p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_af

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_af
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)[B
    .registers 2

    check-cast p1, Lcom/crashlytics/android/answers/I;

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/K;->DW(Lcom/crashlytics/android/answers/I;)[B

    move-result-object p1

    return-object p1
.end method
