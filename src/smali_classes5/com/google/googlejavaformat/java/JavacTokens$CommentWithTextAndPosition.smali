.class Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;
.super Ljava/lang/Object;
.source "JavacTokens.java"

# interfaces
.implements Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommentWithTextAndPosition"
.end annotation


# instance fields
.field private final endPos:I

.field private final pos:I

.field private final reader:Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;

.field private final style:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)V
    .registers 6

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->text:Ljava/lang/String;

    .line 166
    iput p1, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    .line 167
    iput p2, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->endPos:I

    .line 168
    iput-object p3, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->reader:Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;

    .line 169
    iput-object p4, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->style:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    .line 170
    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .registers 6

    .line 180
    if-ltz p1, :cond_18

    iget v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->endPos:I

    iget v1, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_18

    const/4 v0, 0x1

    :goto_a
    const-string v1, "Expected %s in the range [0, %s)"

    iget v2, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->endPos:I

    iget v3, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 185
    iget v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->pos:I

    add-int/2addr v0, p1

    return v0

    .line 180
    :cond_18
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getStyle()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->style:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->text:Ljava/lang/String;

    .line 196
    if-nez v0, :cond_11

    .line 197
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->reader:Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;->getRawCharacters()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->text:Ljava/lang/String;

    .line 199
    :cond_11
    return-object v0
.end method

.method public isDeprecated()Z
    .registers 2

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 214
    const-string v0, "Comment: \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
