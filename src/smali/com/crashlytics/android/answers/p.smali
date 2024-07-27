.class Lcom/crashlytics/android/answers/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/q;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/answers/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/q;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/answers/p;->j6:Lcom/crashlytics/android/answers/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->j6:Lcom/crashlytics/android/answers/q;

    iget-object v0, v0, Lcom/crashlytics/android/answers/q;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->j6:Lcom/crashlytics/android/answers/q;

    invoke-static {v0}, Lcom/crashlytics/android/answers/q;->j6(Lcom/crashlytics/android/answers/q;)V

    return-void
.end method
