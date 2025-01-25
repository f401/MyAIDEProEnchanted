.class Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/common/escape/CharEscaper;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/CharEscaperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayDecorator"
.end annotation


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method constructor <init>([[C)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 48
    array-length v0, p1

    iput v0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    .line 49
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 58
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_18

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 60
    iget-object v3, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    array-length v4, v3

    if-ge v2, v4, :cond_19

    aget-object v2, v3, v2

    if-eqz v2, :cond_19

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_18
    return-object p1

    .line 58
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected escape(C)[C
    .registers 3

    .line 69
    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v0, v0, p1

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
