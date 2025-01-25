.class Lcom/crashlytics/android/core/n$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final DW:Ljava/util/concurrent/CountDownLatch;

.field private j6:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/n$b;->j6:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/n$b;->DW:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/k;)V
    .registers 2

    invoke-direct {p0}, Lcom/crashlytics/android/core/n$b;-><init>()V

    return-void
.end method


# virtual methods
.method DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/crashlytics/android/core/n$b;->j6:Z

    return v0
.end method

.method j6()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/n$b;->DW:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/crashlytics/android/core/n$b;->j6:Z

    iget-object p1, p0, Lcom/crashlytics/android/core/n$b;->DW:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
