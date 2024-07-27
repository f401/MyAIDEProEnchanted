.class Lcom/crashlytics/android/core/S;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/ia$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/W;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/S;->j6:Lcom/crashlytics/android/core/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/ia$b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 6

    iget-object v0, p0, Lcom/crashlytics/android/core/S;->j6:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/ia$b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    return-void
.end method
