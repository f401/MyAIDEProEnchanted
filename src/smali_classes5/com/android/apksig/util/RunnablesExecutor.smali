.class public interface abstract Lcom/android/apksig/util/RunnablesExecutor;
.super Ljava/lang/Object;


# static fields
.field public static final MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

.field public static final SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/apksig/util/RunnablesExecutor$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    new-instance v0, Lcom/android/apksig/util/RunnablesExecutor$1;

    invoke-direct {v0}, Lcom/android/apksig/util/RunnablesExecutor$1;-><init>()V

    sput-object v0, Lcom/android/apksig/util/RunnablesExecutor;->MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/android/apksig/util/RunnablesProvider;)V
.end method
