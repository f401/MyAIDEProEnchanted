.class final Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;
.super Lcom/google/googlejavaformat/java/javac/parser/Tokens$StringToken;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NumericToken"
.end annotation


# instance fields
.field public final radix:I


# direct methods
.method public constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILjava/lang/String;ILcom/sun/tools/javac/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ">;)V"
        }
    .end annotation

    .line 462
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$StringToken;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILjava/lang/String;Lcom/sun/tools/javac/util/List;)V

    .line 463
    iput p5, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;->radix:I

    .line 464
    return-void
.end method


# virtual methods
.method protected checkKind()V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    if-ne v0, v1, :cond_0

    .line 470
    return-void

    .line 468
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad token kind - expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public radix()I
    .registers 2

    .line 474
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;->radix:I

    return v0
.end method
