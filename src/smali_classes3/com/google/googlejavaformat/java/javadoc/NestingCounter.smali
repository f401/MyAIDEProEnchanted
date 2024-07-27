.class final Lcom/google/googlejavaformat/java/javadoc/NestingCounter;
.super Ljava/lang/Object;
.source "NestingCounter.java"


# instance fields
.field private value:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method decrementIfPositive()V
    .registers 2

    .line 38
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    if-lez v0, :cond_0

    .line 39
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    .line 41
    :cond_0
    return-void
.end method

.method increment()V
    .registers 2

    .line 28
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    .line 29
    return-void
.end method

.method incrementIfPositive()V
    .registers 2

    .line 32
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    if-lez v0, :cond_0

    .line 33
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    .line 35
    :cond_0
    return-void
.end method

.method isPositive()Z
    .registers 2

    .line 44
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .registers 2

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    .line 49
    return-void
.end method

.method value()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/google/googlejavaformat/java/javadoc/NestingCounter;->value:I

    return v0
.end method
