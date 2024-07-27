.class public Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;
.super Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;
.source "JavadocTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;,
        Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    .line 53
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    .line 60
    return-void
.end method


# virtual methods
.method public getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
    .registers 4

    .line 444
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->getRawCharacters()[C

    move-result-object v0

    .line 445
    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/Position;->makeLineMap([CIZ)Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method protected processComment(IILcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;
    .registers 9

    .line 64
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->getRawCharacters(II)[C

    move-result-object v0

    .line 65
    new-instance v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;

    new-instance v2, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;->fac:Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

    array-length v4, v0

    invoke-direct {v2, v3, v0, v4, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CII)V

    invoke-direct {v1, v2, p3}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$JavadocComment;-><init>(Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)V

    return-object v1
.end method
