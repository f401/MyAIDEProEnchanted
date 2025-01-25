.class Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;
.super Ljava/lang/Object;
.source "JavacProcessingEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/annotation/processing/Processor;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field private jusl:Z

.field private loader:Ljava/lang/Object;

.field private loaderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private log:Lcom/sun/tools/javac/util/Log;

.field final this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/ClassLoader;Lcom/sun/tools/javac/util/Log;)V
    .registers 10

    const/4 v5, 0x0

    .line 310
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lcom/sun/tools/javac/util/Log;

    .line 316
    :try_start_8
    const-string v0, "java.util.ServiceLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loaderClass:Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_10} :catch_55
    .catchall {:try_start_8 .. :try_end_10} :catchall_6f

    .line 317
    const-string v0, "load"

    .line 318
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->jusl:Z
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_15} :catch_55
    .catchall {:try_start_13 .. :try_end_15} :catchall_6f

    .line 333
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loaderClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 337
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Ljavax/annotation/processing/Processor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    iget-boolean v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->jusl:Z

    if-eqz v1, :cond_50

    .line 344
    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loader:Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loaderClass:Ljava/lang/Class;

    const-string v2, "iterator"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 346
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    :cond_50
    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_6f

    .line 354
    :goto_54
    return-void

    .line 319
    :catch_55
    move-exception v0

    .line 321
    :try_start_56
    const-string v0, "sun.misc.Service"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loaderClass:Ljava/lang/Class;

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->jusl:Z
    :try_end_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_61} :catch_64
    .catchall {:try_start_56 .. :try_end_61} :catchall_6f

    .line 329
    const-string v0, "providers"

    goto :goto_15

    .line 324
    :catch_64
    move-exception v0

    .line 326
    :try_start_65
    const-string v0, "proc.no.service"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6f

    goto :goto_54

    .line 351
    :catchall_6f
    move-exception v0

    .line 352
    const-string v1, "proc.service.problem"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance v1, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 388
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->jusl:Z

    if-eqz v0, :cond_17

    .line 391
    :try_start_4
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loaderClass:Ljava/lang/Class;

    const-string v1, "reload"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loader:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 397
    :cond_17
    :goto_17
    return-void

    .line 393
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public hasNext()Z
    .registers 7

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    move-result v0

    return v0

    .line 360
    :catchall_7
    move-exception v0

    .line 361
    const-string v1, "ServiceConfigurationError"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 363
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.bad.config.file"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_29
    new-instance v1, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->next()Ljavax/annotation/processing/Processor;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/annotation/processing/Processor;
    .registers 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 371
    :try_start_2
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/Processor;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    return-object v0

    .line 372
    :catchall_b
    move-exception v0

    .line 373
    const-string v1, "ServiceConfigurationError"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 375
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.bad.config.file"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :goto_2b
    new-instance v1, Lcom/sun/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 377
    :cond_31
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.processor.constructor.error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b
.end method

.method public remove()V
    .registers 2

    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
