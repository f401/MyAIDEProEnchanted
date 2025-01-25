.class final Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;
.super Ljava/io/Reader;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/io/Reader;"
    }
.end annotation


# instance fields
.field private factory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final filterBeforeConcat:Z

.field private reader:Ljava/io/Reader;

.field private readerSources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/taskdefs/Concat;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TS;>;",
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory",
            "<TS;>;Z)V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 360
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->readerSources:Ljava/util/Iterator;

    .line 361
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->factory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    .line 362
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->filterBeforeConcat:Z

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V
    .registers 6

    .line 352
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;Z)V

    return-void
.end method

.method private getReader()Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    if-nez v0, :cond_3a

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->readerSources:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 367
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->factory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->readerSources:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;->getReader(Ljava/lang/Object;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 368
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->isFixLastLine()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 369
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;Lorg/apache/tools/ant/taskdefs/Concat$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 371
    :cond_2c
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->filterBeforeConcat:Z

    if-eqz v0, :cond_3a

    .line 372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 375
    :cond_3a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method private isFixLastLine()Z
    .registers 2

    .line 446
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$300(Lorg/apache/tools/ant/taskdefs/Concat;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private nextReader()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->close()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 381
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_7

    .line 441
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 443
    :cond_7
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    .line 392
    :goto_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 393
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 394
    if-ne v0, v1, :cond_16

    .line 395
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->nextReader()V

    goto :goto_1

    :cond_15
    move v0, v1

    .line 400
    :cond_16
    return v0
.end method

.method public read([CII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    .line 415
    const/4 v0, 0x0

    .line 416
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 417
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 418
    if-eq v2, v1, :cond_14

    if-nez v2, :cond_18

    .line 419
    :cond_14
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->nextReader()V

    goto :goto_2

    .line 421
    :cond_18
    sub-int/2addr p3, v2

    .line 422
    add-int/2addr p2, v2

    .line 423
    add-int/2addr v0, v2

    .line 424
    if-nez p3, :cond_2

    .line 432
    :cond_1d
    :goto_1d
    return v0

    .line 429
    :cond_1e
    if-nez v0, :cond_1d

    move v0, v1

    .line 430
    goto :goto_1d
.end method
