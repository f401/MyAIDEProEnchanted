.class final Lcom/google/googlejavaformat/java/javadoc/CharStream;
.super Ljava/lang/Object;
.source "CharStream.java"


# instance fields
.field remaining:Ljava/lang/String;

.field toConsume:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method isExhausted()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method readAndResetRecorded()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    .line 62
    return-object v0
.end method

.method tryConsume(Ljava/lang/String;)Z
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 39
    const/4 v0, 0x0

    .line 42
    :goto_9
    return v0

    .line 41
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    .line 42
    const/4 v0, 0x1

    goto :goto_9
.end method

.method tryConsumeRegex(Ljava/util/regex/Pattern;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->remaining:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_f

    .line 55
    :goto_e
    return v0

    .line 53
    :cond_f
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-nez v3, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 54
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/javadoc/CharStream;->toConsume:I

    move v0, v1

    .line 55
    goto :goto_e
.end method
