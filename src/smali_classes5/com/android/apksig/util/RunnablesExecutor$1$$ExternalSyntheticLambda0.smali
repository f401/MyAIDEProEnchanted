.class public final synthetic Lcom/android/apksig/util/RunnablesExecutor$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lcom/android/apksig/util/RunnablesProvider;

.field public final f$1:Ljava/util/concurrent/Phaser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/util/RunnablesExecutor$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/apksig/util/RunnablesProvider;

    iput-object p2, p0, Lcom/android/apksig/util/RunnablesExecutor$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Phaser;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/util/RunnablesExecutor$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/apksig/util/RunnablesProvider;

    iget-object v1, p0, Lcom/android/apksig/util/RunnablesExecutor$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Phaser;

    invoke-static {v0, v1}, Lcom/android/apksig/util/RunnablesExecutor$1;->lambda$execute$0(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V

    return-void
.end method
