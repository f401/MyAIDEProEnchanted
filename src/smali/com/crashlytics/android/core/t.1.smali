.class Lcom/crashlytics/android/core/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/t;->DW:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/t;->j6:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/t;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/t;->DW:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->DW(Lcom/crashlytics/android/core/W;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/xa;

    iget-object v2, p0, Lcom/crashlytics/android/core/t;->DW:Lcom/crashlytics/android/core/W;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/crashlytics/android/core/t;->j6:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/core/xa;->j6(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
