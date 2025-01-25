.class public final synthetic Lcom/android/apksig/util/RunnablesExecutor$_CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/apksig/util/RunnablesProvider;)V
    .registers 2

    invoke-interface {p0}, Lcom/android/apksig/util/RunnablesProvider;->createRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
