.class Lcom/crashlytics/android/core/A;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/B;->j6(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/B;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/B;)V
    .registers 6

    iput-object p1, p0, Lcom/crashlytics/android/core/A;->j6:Lcom/crashlytics/android/core/B;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "session_id"

    iget-object v1, p0, Lcom/crashlytics/android/core/A;->j6:Lcom/crashlytics/android/core/B;

    iget-object v1, v1, Lcom/crashlytics/android/core/B;->j6:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "generator"

    iget-object v1, p0, Lcom/crashlytics/android/core/A;->j6:Lcom/crashlytics/android/core/B;

    iget-object v1, v1, Lcom/crashlytics/android/core/B;->DW:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "started_at_seconds"

    iget-object v1, p0, Lcom/crashlytics/android/core/A;->j6:Lcom/crashlytics/android/core/B;

    iget-wide v2, v1, Lcom/crashlytics/android/core/B;->FH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
