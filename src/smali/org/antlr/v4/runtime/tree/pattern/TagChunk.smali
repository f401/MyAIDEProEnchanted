.class Lorg/antlr/v4/runtime/tree/pattern/TagChunk;
.super Lorg/antlr/v4/runtime/tree/pattern/Chunk;
.source "TagChunk.java"


# instance fields
.field private final label:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Lorg/antlr/v4/runtime/tree/pattern/Chunk;-><init>()V

    if-eqz p2, :cond_10

    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 64
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->label:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->tag:Ljava/lang/String;

    return-void

    .line 61
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 96
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->label:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_1d
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TagChunk;->tag:Ljava/lang/String;

    return-object v0
.end method
