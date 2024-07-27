.class Lcom/crashlytics/android/core/Ra;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:[Ljava/lang/StackTraceElement;

.field public final Hw:Lcom/crashlytics/android/core/Ra;

.field public final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/Qa;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/Ra;->j6:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/Ra;->DW:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/crashlytics/android/core/Qa;->j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/Ra;->FH:[Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/crashlytics/android/core/Ra;

    invoke-direct {v0, v1, p2}, Lcom/crashlytics/android/core/Ra;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/Qa;)V

    :goto_0
    iput-object v0, p0, Lcom/crashlytics/android/core/Ra;->Hw:Lcom/crashlytics/android/core/Ra;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
