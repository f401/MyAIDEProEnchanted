.class final Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConcatResource"
.end annotation


# instance fields
.field private c:Lorg/apache/tools/ant/types/ResourceCollection;

.field final this$0:Lorg/apache/tools/ant/taskdefs/Concat;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 453
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 454
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 455
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/Concat$1;)V
    .registers 4

    .line 450
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 13

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$500(Lorg/apache/tools/ant/taskdefs/Concat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 460
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 501
    :goto_0
    return-object v0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$600(Lorg/apache/tools/ant/taskdefs/Concat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    .line 466
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$700(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V

    .line 472
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v1

    if-nez v1, :cond_2

    .line 501
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1300(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Lorg/apache/tools/ant/util/ReaderInputStream;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 469
    new-instance v6, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$700(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    move-result-object v9

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V

    .line 468
    invoke-static {v0, v6}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_1

    .line 476
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 477
    const/4 v1, 0x2

    .line 479
    :goto_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 480
    add-int/lit8 v1, v1, 0x1

    .line 482
    :cond_3
    new-array v1, v1, [Ljava/io/Reader;

    .line 484
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 485
    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v10

    .line 486
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->access$1100(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    aget-object v3, v1, v10

    invoke-static {v2, v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v2

    aput-object v2, v1, v10

    .line 491
    :cond_4
    :goto_4
    add-int/lit8 v2, v4, 0x1

    aput-object v0, v1, v4

    .line 492
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 493
    new-instance v0, Ljava/io/StringReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    aput-object v0, v1, v2

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->access$1100(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    aget-object v3, v1, v2

    invoke-static {v0, v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    aput-object v0, v1, v2

    .line 498
    :cond_5
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    .line 499
    new-instance v6, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1200(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    move-result-object v9

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V

    move-object v0, v6

    goto/16 :goto_2

    .line 502
    :cond_6
    new-instance v1, Lorg/apache/tools/ant/util/ReaderInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1300(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move v4, v10

    goto :goto_4

    :cond_8
    move v1, v4

    goto/16 :goto_3
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 506
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "concat ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->c:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
