.class Lcom/google/googlejavaformat/Newlines$LineIterator;
.super Ljava/lang/Object;
.source "Newlines.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Newlines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field curr:Ljava/lang/String;

.field idx:I

.field private final indices:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final input:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->indices:Ljava/util/Iterator;

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->idx:I

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/googlejavaformat/Newlines$1;)V
    .registers 3

    .line 173
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/Newlines$LineIterator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private advance()V
    .registers 4

    .line 187
    iget v1, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->idx:I

    .line 188
    iget-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->indices:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->indices:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->idx:I

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->idx:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->curr:Ljava/lang/String;

    .line 197
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Newlines$LineIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->idx:I

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 201
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->idx:I

    iget-object v1, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 173
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Newlines$LineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .line 206
    invoke-direct {p0}, Lcom/google/googlejavaformat/Newlines$LineIterator;->advance()V

    .line 207
    iget-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineIterator;->curr:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
