.class final Landroid/support/v4/content/AsyncTaskLoader$a;
.super Landroid/support/v4/content/g;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/g<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final EQ:Ljava/util/concurrent/CountDownLatch;

.field final J0:Landroid/support/v4/content/AsyncTaskLoader;

.field we:Z


# direct methods
.method constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->J0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/support/v4/content/g;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->EQ:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic DW([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader$a;->j6([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected DW(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->J0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->j6(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->EQ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception p1

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->EQ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method protected FH(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->J0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->DW(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->EQ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception p1

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->EQ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method protected varargs j6([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->J0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {p1}, Landroid/support/v4/content/AsyncTaskLoader;->rN()Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Landroid/support/v4/os/c; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    invoke-virtual {p0}, Landroid/support/v4/content/g;->j6()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    throw p1
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->J0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->U2()V

    return-void
.end method
