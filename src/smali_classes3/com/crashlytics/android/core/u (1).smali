.class Lcom/crashlytics/android/core/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->EQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/W;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/u;->j6:Lcom/crashlytics/android/core/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/u;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/u;->j6:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->VH(Lcom/crashlytics/android/core/W;)V

    const/4 v0, 0x0

    return-object v0
.end method
