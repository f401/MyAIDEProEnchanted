.class final Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;
.super Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NamedToken"
.end annotation


# instance fields
.field public final name:Lcom/sun/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
            "II",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/List;)V

    .line 421
    iput-object p4, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;->name:Lcom/sun/tools/javac/util/Name;

    .line 422
    return-void
.end method


# virtual methods
.method protected checkKind()V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;->kind:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    if-ne v0, v1, :cond_9

    .line 428
    return-void

    .line 426
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad token kind - expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public name()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method
