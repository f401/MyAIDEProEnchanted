.class final Lcom/google/googlejavaformat/java/javadoc/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javadoc/Token$Type;
    }
.end annotation


# instance fields
.field private final type:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/googlejavaformat/java/javadoc/Token;->type:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    .line 27
    iput-object p2, p0, Lcom/google/googlejavaformat/java/javadoc/Token;->value:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/Token;->type:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method length()I
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javadoc/Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getType()Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
