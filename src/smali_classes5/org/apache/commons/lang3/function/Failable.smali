.class public Lorg/apache/commons/lang3/function/Failable;
.super Ljava/lang/Object;
.source "Failable.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer",
            "<TT;TU;TE;>;TT;TU;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda13;-><init>(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->run(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    .line 84
    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableConsumer",
            "<TT;TE;>;TT;)V"
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda14;-><init>(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->run(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    .line 96
    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer",
            "<TE;>;D)V"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->run(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    .line 107
    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer",
            "<TE;>;I)V"
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;-><init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->run(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    .line 118
    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer",
            "<TE;>;J)V"
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;-><init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->run(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    .line 129
    return-void
.end method

.method public static apply(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiFunction",
            "<TT;TU;TR;TE;>;TT;TU;)TR;"
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;-><init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->get(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TT;TR;TE;>;TT;)TR;"
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda20;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->get(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static applyAsDouble(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)D
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator",
            "<TE;>;DD)D"
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->getAsDouble(Lorg/apache/commons/lang3/function/FailableDoubleSupplier;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static asBiConsumer(Lorg/apache/commons/lang3/function/FailableBiConsumer;)Ljava/util/function/BiConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer",
            "<TT;TU;*>;)",
            "Ljava/util/function/BiConsumer",
            "<TT;TU;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/function/FailableBiConsumer;)V

    return-object v0
.end method

.method public static asBiFunction(Lorg/apache/commons/lang3/function/FailableBiFunction;)Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiFunction",
            "<TT;TU;TR;*>;)",
            "Ljava/util/function/BiFunction",
            "<TT;TU;TR;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/function/FailableBiFunction;)V

    return-object v0
.end method

.method public static asBiPredicate(Lorg/apache/commons/lang3/function/FailableBiPredicate;)Ljava/util/function/BiPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate",
            "<TT;TU;*>;)",
            "Ljava/util/function/BiPredicate",
            "<TT;TU;>;"
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public static asCallable(Lorg/apache/commons/lang3/function/FailableCallable;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableCallable",
            "<TV;*>;)",
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableCallable;)V

    return-object v0
.end method

.method public static asConsumer(Lorg/apache/commons/lang3/function/FailableConsumer;)Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableConsumer",
            "<TT;*>;)",
            "Ljava/util/function/Consumer",
            "<TT;>;"
        }
    .end annotation

    .line 232
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/lang3/function/FailableConsumer;)V

    return-object v0
.end method

.method public static asFunction(Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TT;TR;*>;)",
            "Ljava/util/function/Function",
            "<TT;TR;>;"
        }
    .end annotation

    .line 244
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method

.method public static asPredicate(Lorg/apache/commons/lang3/function/FailablePredicate;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<TT;*>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public static asRunnable(Lorg/apache/commons/lang3/function/FailableRunnable;)Ljava/lang/Runnable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableRunnable",
            "<*>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 265
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    return-object v0
.end method

.method public static asSupplier(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableSupplier",
            "<TT;*>;)",
            "Ljava/util/function/Supplier",
            "<TT;>;"
        }
    .end annotation

    .line 276
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;)V

    return-object v0
.end method

.method public static call(Lorg/apache/commons/lang3/function/FailableCallable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableCallable",
            "<TV;TE;>;)TV;"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda19;-><init>(Lorg/apache/commons/lang3/function/FailableCallable;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->get(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableSupplier",
            "<TT;TE;>;)TT;"
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableSupplier;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    move-result-object v0

    return-object v0

    .line 302
    :catchall_5
    move-exception v0

    .line 303
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBooleanSupplier",
            "<TE;>;)Z"
        }
    .end annotation

    .line 316
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableBooleanSupplier;->getAsBoolean()Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    move-result v0

    return v0

    .line 317
    :catchall_5
    move-exception v0

    .line 318
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getAsDouble(Lorg/apache/commons/lang3/function/FailableDoubleSupplier;)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableDoubleSupplier",
            "<TE;>;)D"
        }
    .end annotation

    .line 331
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableDoubleSupplier;->getAsDouble()D
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    move-result-wide v0

    return-wide v0

    .line 332
    :catchall_5
    move-exception v0

    .line 333
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getAsInt(Lorg/apache/commons/lang3/function/FailableIntSupplier;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableIntSupplier",
            "<TE;>;)I"
        }
    .end annotation

    .line 346
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableIntSupplier;->getAsInt()I
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    move-result v0

    return v0

    .line 347
    :catchall_5
    move-exception v0

    .line 348
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getAsLong(Lorg/apache/commons/lang3/function/FailableLongSupplier;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableLongSupplier",
            "<TE;>;)J"
        }
    .end annotation

    .line 361
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableLongSupplier;->getAsLong()J
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    move-result-wide v0

    return-wide v0

    .line 362
    :catchall_5
    move-exception v0

    .line 363
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getAsShort(Lorg/apache/commons/lang3/function/FailableShortSupplier;)S
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableShortSupplier",
            "<TE;>;)S"
        }
    .end annotation

    .line 376
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableShortSupplier;->getAsShort()S
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    move-result v0

    return v0

    .line 377
    :catchall_5
    move-exception v0

    .line 378
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static synthetic lambda$accept$0(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$accept$1(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$accept$2(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->accept(D)V

    return-void
.end method

.method static synthetic lambda$accept$3(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 117
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic lambda$accept$4(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    return-void
.end method

.method static synthetic lambda$apply$5(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 145
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$apply$6(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$applyAsDouble$7(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)D
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 173
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$asBiConsumer$8(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 185
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable;->accept(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asBiFunction$9(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 198
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable;->apply(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asBiPredicate$10(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 210
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable;->test(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asCallable$11(Lorg/apache/commons/lang3/function/FailableCallable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-static {p0}, Lorg/apache/commons/lang3/function/Failable;->call(Lorg/apache/commons/lang3/function/FailableCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asConsumer$12(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V
    .registers 2

    .line 232
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/Failable;->accept(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asFunction$13(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 244
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/Failable;->apply(Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asPredicate$14(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3

    .line 255
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/Failable;->test(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asRunnable$15(Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .registers 1

    .line 265
    invoke-static {p0}, Lorg/apache/commons/lang3/function/Failable;->run(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    return-void
.end method

.method static synthetic lambda$asSupplier$16(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;
    .registers 2

    .line 276
    invoke-static {p0}, Lorg/apache/commons/lang3/function/Failable;->get(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$test$17(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 479
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$test$18(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 492
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    .line 410
    const-string v0, "throwable"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_22

    .line 413
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1f

    .line 415
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_19

    .line 416
    new-instance v0, Ljava/io/UncheckedIOException;

    check-cast p0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 418
    :cond_19
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 414
    :cond_1f
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 412
    :cond_22
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public static run(Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableRunnable",
            "<TE;>;)V"
        }
    .end annotation

    .line 430
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 433
    return-void

    .line 431
    :catchall_4
    move-exception v0

    .line 432
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static stream(Ljava/util/Collection;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream",
            "<TE;>;"
        }
    .end annotation

    .line 449
    new-instance v0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream",
            "<TT;>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream",
            "<TT;>;"
        }
    .end annotation

    .line 463
    new-instance v0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static test(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate",
            "<TT;TU;TE;>;TT;TU;)Z"
        }
    .end annotation

    .line 479
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static test(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<TT;TE;>;TT;)Z"
        }
    .end annotation

    .line 492
    new-instance v0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda10;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/function/FailableRunnable;Lorg/apache/commons/lang3/function/FailableConsumer;[Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableRunnable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableConsumer",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/function/FailableRunnable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v1, 0x0

    .line 519
    if-nez p1, :cond_5

    .line 520
    sget-object p1, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->INSTANCE:Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;

    .line 522
    :cond_5
    if-eqz p2, :cond_15

    .line 525
    array-length v2, p2

    move v0, v1

    :goto_9
    if-ge v0, v2, :cond_15

    aget-object v3, p2, v0

    .line 526
    const-string v4, "runnable"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 529
    :cond_15
    const/4 v0, 0x0

    .line 531
    :try_start_16
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableRunnable;->run()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_39

    .line 533
    :goto_19
    if-eqz p2, :cond_2d

    .line 536
    array-length v3, p2

    move v2, v1

    :goto_1d
    if-ge v2, v3, :cond_2d

    aget-object v1, p2, v2

    .line 538
    :try_start_21
    invoke-interface {v1}, Lorg/apache/commons/lang3/function/FailableRunnable;->run()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 536
    :cond_24
    :goto_24
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1d

    .line 539
    :catchall_28
    move-exception v1

    .line 540
    if-nez v0, :cond_24

    move-object v0, v1

    .line 541
    goto :goto_24

    .line 546
    :cond_2d
    if-eqz v0, :cond_32

    .line 548
    :try_start_2f
    invoke-interface {p1, v0}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    .line 553
    :cond_32
    return-void

    .line 549
    :catchall_33
    move-exception v0

    .line 550
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 532
    :catchall_39
    move-exception v0

    goto :goto_19
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/function/FailableRunnable;[Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableRunnable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/function/FailableRunnable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 575
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/function/Failable;->tryWithResources(Lorg/apache/commons/lang3/function/FailableRunnable;Lorg/apache/commons/lang3/function/FailableConsumer;[Lorg/apache/commons/lang3/function/FailableRunnable;)V

    .line 576
    return-void
.end method
