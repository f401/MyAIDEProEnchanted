.class Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyAndWidth"
.end annotation


# instance fields
.field final strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field final width:I


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V
    .registers 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 184
    iput p2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->width:I

    .line 185
    return-void
.end method


# virtual methods
.method getMaxWidth(Ljava/util/ListIterator;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    move v0, v1

    .line 193
    :goto_10
    return v0

    .line 191
    :cond_11
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 192
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 193
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->width:I

    goto :goto_10

    :cond_25
    move v0, v1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrategyAndWidth [strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
