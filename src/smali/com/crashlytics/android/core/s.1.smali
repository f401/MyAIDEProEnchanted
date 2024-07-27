.class Lcom/crashlytics/android/core/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final DW:Ljava/lang/String;

.field final FH:Ljava/lang/String;

.field final Hw:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/crashlytics/android/core/s;->Hw:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/s;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/s;->DW:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/core/s;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/s;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 7

    iget-object v0, p0, Lcom/crashlytics/android/core/s;->Hw:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->DW(Lcom/crashlytics/android/core/W;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/xa;

    iget-object v2, p0, Lcom/crashlytics/android/core/s;->Hw:Lcom/crashlytics/android/core/W;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/crashlytics/android/core/Ta;

    iget-object v3, p0, Lcom/crashlytics/android/core/s;->j6:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/core/s;->DW:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/core/s;->FH:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/crashlytics/android/core/Ta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/core/xa;->j6(Ljava/lang/String;Lcom/crashlytics/android/core/Ta;)V

    const/4 v0, 0x0

    return-object v0
.end method
