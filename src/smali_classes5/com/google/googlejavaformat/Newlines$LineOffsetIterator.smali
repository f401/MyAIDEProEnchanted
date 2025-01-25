.class Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;
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
    name = "LineOffsetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private curr:I

.field private idx:I

.field private final input:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    .line 126
    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    .line 129
    iput-object p1, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/googlejavaformat/Newlines$1;)V
    .registers 3

    .line 122
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private advance()V
    .registers 4

    const/16 v2, 0xa

    .line 148
    :goto_2
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    iget-object v1, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 149
    iget-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 150
    if-eq v0, v2, :cond_3f

    const/16 v1, 0xd

    if-eq v0, v1, :cond_21

    .line 148
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    goto :goto_2

    .line 152
    :cond_21
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3f

    iget-object v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->input:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3f

    .line 153
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    .line 157
    :cond_3f
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->idx:I

    .line 158
    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    .line 165
    :goto_47
    return-void

    .line 164
    :cond_48
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    goto :goto_47
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 134
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public next()Ljava/lang/Integer;
    .registers 3

    .line 139
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 142
    iget v0, p0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->curr:I

    .line 143
    invoke-direct {p0}, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->advance()V

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 140
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 122
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
