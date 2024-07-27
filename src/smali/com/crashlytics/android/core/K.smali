.class Lcom/crashlytics/android/core/K;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/L;->j6(Ljava/io/FileOutputStream;)V
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
.field final j6:Lcom/crashlytics/android/core/L;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/L;)V
    .registers 6

    iput-object p1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "arch"

    iget-object v1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    iget v1, v1, Lcom/crashlytics/android/core/L;->j6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "build_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "available_processors"

    iget-object v1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    iget v1, v1, Lcom/crashlytics/android/core/L;->DW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "total_ram"

    iget-object v1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    iget-wide v2, v1, Lcom/crashlytics/android/core/L;->FH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "disk_space"

    iget-object v1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    iget-wide v2, v1, Lcom/crashlytics/android/core/L;->Hw:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_emulator"

    iget-object v1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    iget-boolean v1, v1, Lcom/crashlytics/android/core/L;->v5:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ids"

    iget-object v1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    iget-object v1, v1, Lcom/crashlytics/android/core/L;->Zo:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "state"

    iget-object v1, p0, Lcom/crashlytics/android/core/K;->j6:Lcom/crashlytics/android/core/L;

    iget v1, v1, Lcom/crashlytics/android/core/L;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "build_manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "build_product"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
