.class Lcom/google/googlejavaformat/java/JavacTokens$RawTok;
.super Ljava/lang/Object;
.source "JavacTokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RawTok"
.end annotation


# instance fields
.field private final endPos:I

.field private final kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field private final pos:I

.field private final stringVal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;II)V
    .registers 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->stringVal:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 103
    iput p3, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->pos:I

    .line 104
    iput p4, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->endPos:I

    .line 105
    return-void
.end method


# virtual methods
.method public endPos()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->endPos:I

    return v0
.end method

.method public kind()Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    return-object v0
.end method

.method public pos()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->pos:I

    return v0
.end method

.method public stringVal()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->stringVal:Ljava/lang/String;

    return-object v0
.end method
