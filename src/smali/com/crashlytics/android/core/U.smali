.class Lcom/crashlytics/android/core/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(JLjava/lang/String;)V
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

.field final FH:Lcom/crashlytics/android/core/W;

.field final j6:J


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;JLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/crashlytics/android/core/U;->FH:Lcom/crashlytics/android/core/W;

    iput-wide p2, p0, Lcom/crashlytics/android/core/U;->j6:J

    iput-object p4, p0, Lcom/crashlytics/android/core/U;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/U;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/U;->FH:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->VH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/U;->FH:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ua;

    move-result-object v0

    iget-wide v2, p0, Lcom/crashlytics/android/core/U;->j6:J

    iget-object v1, p0, Lcom/crashlytics/android/core/U;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/crashlytics/android/core/ua;->j6(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
