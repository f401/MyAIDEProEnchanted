.class Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;
.super Ljava/io/Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/common/LuaLexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharSeqReader"
.end annotation


# instance fields
.field offset:I

.field src:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->offset:I

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->src:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->src:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->offset:I

    return-void
.end method

.method public read([CII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->src:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->offset:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->src:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;->offset:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
