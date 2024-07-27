.class Lcom/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;
.super Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;
.source "JavacTokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommentSavingTokenizer"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V
    .registers 4

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    .line 142
    return-void
.end method


# virtual methods
.method protected processComment(IILcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;
    .registers 9

    .line 146
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->getRawCharacters(II)[C

    move-result-object v0

    .line 147
    new-instance v1, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;

    new-instance v2, Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;->fac:Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

    array-length v4, v0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    invoke-direct {v1, p1, p2, v2, p3}, Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;-><init>(IILcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)V

    return-object v1
.end method
