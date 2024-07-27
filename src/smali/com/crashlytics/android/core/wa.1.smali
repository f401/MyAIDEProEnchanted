.class final Lcom/crashlytics/android/core/wa;
.super Lorg/json/JSONObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/xa;->j6(Lcom/crashlytics/android/core/Ta;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/Ta;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/Ta;)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/core/wa;->j6:Lcom/crashlytics/android/core/Ta;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "userId"

    iget-object v1, p0, Lcom/crashlytics/android/core/wa;->j6:Lcom/crashlytics/android/core/Ta;

    iget-object v1, v1, Lcom/crashlytics/android/core/Ta;->DW:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userName"

    iget-object v1, p0, Lcom/crashlytics/android/core/wa;->j6:Lcom/crashlytics/android/core/Ta;

    iget-object v1, v1, Lcom/crashlytics/android/core/Ta;->FH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userEmail"

    iget-object v1, p0, Lcom/crashlytics/android/core/wa;->j6:Lcom/crashlytics/android/core/Ta;

    iget-object v1, v1, Lcom/crashlytics/android/core/Ta;->Hw:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
