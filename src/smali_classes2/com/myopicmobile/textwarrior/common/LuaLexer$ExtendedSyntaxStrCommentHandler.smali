.class Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/common/LuaLexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtendedSyntaxStrCommentHandler"
.end annotation


# instance fields
.field longQLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->longQLevel:I

    return-void
.end method

.method private static getLevel(Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v3, v0, v1

    if-le v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method isCurrentExtQuoteStart(Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->getLevel(Ljava/lang/CharSequence;)I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->longQLevel:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetCurrentExtQuoteStart()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->longQLevel:I

    return-void
.end method

.method setCurrentExtQuoteStart(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->getLevel(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->longQLevel:I

    return-void
.end method
