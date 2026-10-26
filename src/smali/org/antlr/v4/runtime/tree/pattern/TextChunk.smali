.class Lorg/antlr/v4/runtime/tree/pattern/TextChunk;
.super Lorg/antlr/v4/runtime/tree/pattern/Chunk;
.source "TextChunk.java"


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lorg/antlr/v4/runtime/tree/pattern/Chunk;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->text:Ljava/lang/String;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
