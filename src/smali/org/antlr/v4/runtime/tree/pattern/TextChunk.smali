.class Lorg/antlr/v4/runtime/tree/pattern/TextChunk;
.super Lorg/antlr/v4/runtime/tree/pattern/Chunk;
.source "TextChunk.java"


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Lorg/antlr/v4/runtime/tree/pattern/Chunk;-><init>()V

    if-eqz p1, :cond_8

    .line 31
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->text:Ljava/lang/String;

    return-void

    .line 28
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "text cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
