.class Lcom/crashlytics/android/core/E;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/F;->j6(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/F;)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/core/E;->j6:Lcom/crashlytics/android/core/F;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "app_identifier"

    iget-object v1, p1, Lcom/crashlytics/android/core/F;->j6:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/crashlytics/android/core/F;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->Hw(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/a;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/core/a;->j6:Ljava/lang/String;

    const-string v1, "api_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version_code"

    iget-object v1, p1, Lcom/crashlytics/android/core/F;->DW:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version_name"

    iget-object v1, p1, Lcom/crashlytics/android/core/F;->FH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "install_uuid"

    iget-object v1, p1, Lcom/crashlytics/android/core/F;->Hw:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/crashlytics/android/core/F;->v5:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "delivery_mechanism"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/crashlytics/android/core/F;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->v5(Lcom/crashlytics/android/core/W;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string p1, ""

    goto :goto_4e

    :cond_48
    iget-object p1, p1, Lcom/crashlytics/android/core/F;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {p1}, Lcom/crashlytics/android/core/W;->v5(Lcom/crashlytics/android/core/W;)Ljava/lang/String;

    move-result-object p1

    :goto_4e
    const-string v0, "unity_version"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
