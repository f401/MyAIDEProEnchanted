.class public Lcom/google/googlejavaformat/java/JavacTokens;
.super Ljava/lang/Object;
.source "JavacTokens.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;,
        Lcom/google/googlejavaformat/java/JavacTokens$AccessibleScanner;,
        Lcom/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;,
        Lcom/google/googlejavaformat/java/JavacTokens$CommentWithTextAndPosition;,
        Lcom/google/googlejavaformat/java/JavacTokens$RawTok;
    }
.end annotation


# static fields
.field private static final EOF_COMMENT:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-string v0, "\n//EOF"

    sput-object v0, Lcom/google/googlejavaformat/java/JavacTokens;->EOF_COMMENT:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTokens(Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Ljava/util/Set;)Lcom/google/common/collect/ImmutableList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavacTokens$RawTok;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    if-nez p0, :cond_9

    .line 50
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 88
    :goto_8
    return-object v0

    .line 52
    :cond_9
    invoke-static {p1}, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/googlejavaformat/java/JavacTokens;->EOF_COMMENT:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 54
    new-instance v4, Lcom/google/googlejavaformat/java/JavacTokens$AccessibleScanner;

    new-instance v5, Lcom/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;

    array-length v6, v1

    invoke-direct {v5, v0, v1, v6}, Lcom/google/googlejavaformat/java/JavacTokens$CommentSavingTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    invoke-direct {v4, v0, v5}, Lcom/google/googlejavaformat/java/JavacTokens$AccessibleScanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V

    .line 56
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    move v0, v3

    .line 59
    :cond_32
    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->nextToken()V

    .line 60
    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    move-result-object v6

    .line 61
    iget-object v1, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->comments:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_8e

    .line 62
    iget-object v1, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->comments:Lcom/sun/tools/javac/util/List;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_48
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;

    .line 63
    invoke-interface {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v8

    if-ge v1, v8, :cond_66

    .line 64
    new-instance v8, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;

    invoke-interface {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v9

    invoke-direct {v8, v2, v2, v1, v9}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {v5, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 66
    :cond_66
    new-instance v1, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;

    invoke-interface {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v8

    invoke-interface {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v9

    invoke-interface {v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v1, v2, v2, v8, v9}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 68
    invoke-interface {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result v1

    invoke-interface {v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 69
    goto :goto_48

    :cond_8e
    move v1, v0

    .line 71
    :cond_8f
    iget-object v0, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 85
    :goto_97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_a9

    .line 86
    new-instance v0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 88
    :cond_a9
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto/16 :goto_8

    .line 74
    :cond_af
    iget v0, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->pos:I

    if-ge v1, v0, :cond_bd

    .line 75
    new-instance v0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;

    iget v7, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->pos:I

    invoke-direct {v0, v2, v2, v1, v7}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 77
    :cond_bd
    iget-object v0, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_f9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_dd
    new-instance v1, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;

    iget-object v7, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget v8, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->pos:I

    iget v9, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->endPos:I

    invoke-direct {v1, v0, v7, v8, v9}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;II)V

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 83
    iget v0, v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->endPos:I

    .line 84
    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;->token()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    sget-object v6, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    if-ne v1, v6, :cond_32

    move v1, v0

    goto :goto_97

    :cond_f9
    move-object v0, v2

    .line 77
    goto :goto_dd
.end method
