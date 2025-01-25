.class public Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplaceString"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 341
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 370
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 376
    :goto_10
    if-ltz v0, :cond_2c

    .line 378
    if-le v0, v1, :cond_17

    .line 379
    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 383
    :cond_17
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->to:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_1e
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 389
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_10

    .line 393
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_39

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 397
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 371
    :cond_3e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing from in stringreplace"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->to:Ljava/lang/String;

    .line 361
    return-void
.end method
