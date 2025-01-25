.class public Lcom/sun/tools/javac/jvm/CRTable;
.super Ljava/lang/Object;
.source "CRTable.java"

# interfaces
.implements Lcom/sun/tools/javac/jvm/CRTFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;,
        Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;,
        Lcom/sun/tools/javac/jvm/CRTable$SourceRange;
    }
.end annotation


# instance fields
.field private final crtDebug:Z

.field private endPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;",
            ">;"
        }
    .end annotation
.end field

.field methodTree:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

.field private positions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sun/tools/javac/jvm/CRTable$SourceRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->crtDebug:Z

    .line 53
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->entries:Lcom/sun/tools/javac/util/ListBuffer;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->positions:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/CRTable;->methodTree:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 76
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/CRTable;->endPositions:Ljava/util/Map;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/jvm/CRTable;)Ljava/util/Map;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->positions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/jvm/CRTable;)Ljava/util/Map;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->endPositions:Ljava/util/Map;

    return-object v0
.end method

.method private encodePosition(ILcom/sun/tools/javac/util/Position$LineMap;Lcom/sun/tools/javac/util/Log;)I
    .registers 9

    .line 180
    invoke-interface {p2, p1}, Lcom/sun/tools/javac/util/Position$LineMap;->getLineNumber(I)I

    move-result v0

    .line 181
    invoke-interface {p2, p1}, Lcom/sun/tools/javac/util/Position$LineMap;->getColumnNumber(I)I

    move-result v1

    .line 182
    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Position;->encodePosition(II)I

    move-result v1

    .line 187
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 188
    const-string v2, "position.overflow"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p3, p1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_1e
    return v1
.end method

.method private getTypes(I)Ljava/lang/String;
    .registers 4

    .line 162
    const-string v0, ""

    .line 163
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_STATEMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_19
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_BLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_2e
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_ASSIGNMENT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_43
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_FLOW_CONTROLLER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_58
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_FLOW_TARGET"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_6d
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_INVOKE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_82
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_97

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_CREATE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_97
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_ac

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_BRANCH_TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_ac
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_BRANCH_FALSE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_c1
    return-object v0
.end method


# virtual methods
.method public length()I
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->entries:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;III)V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->entries:Lcom/sun/tools/javac/util/ListBuffer;

    new-instance v1, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 90
    return-void
.end method

.method public writeCRT(Lcom/sun/tools/javac/util/ByteBuffer;Lcom/sun/tools/javac/util/Position$LineMap;Lcom/sun/tools/javac/util/Log;)I
    .registers 11

    const/4 v6, -0x1

    .line 99
    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;-><init>(Lcom/sun/tools/javac/jvm/CRTable;)V

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/CRTable;->methodTree:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 104
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable;->entries:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    move v3, v1

    :goto_14
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 106
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;

    .line 110
    iget v1, v0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->startPc:I

    iget v4, v0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->endPc:I

    if-ne v1, v4, :cond_2a

    move v1, v3

    .line 104
    :goto_25
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    move v3, v1

    goto :goto_14

    .line 113
    :cond_2a
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/CRTable;->positions:Ljava/util/Map;

    iget-object v4, v0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->tree:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 114
    const-string v4, "CRT: tree source positions are undefined"

    invoke-static {v1, v4}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget v4, v1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    if-eq v4, v6, :cond_73

    iget v4, v1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    if-ne v4, v6, :cond_43

    move v1, v3

    .line 116
    goto :goto_25

    .line 124
    :cond_43
    iget v4, v1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    invoke-direct {p0, v4, p2, p3}, Lcom/sun/tools/javac/jvm/CRTable;->encodePosition(ILcom/sun/tools/javac/util/Position$LineMap;Lcom/sun/tools/javac/util/Log;)I

    move-result v4

    .line 125
    if-ne v4, v6, :cond_4d

    move v1, v3

    .line 126
    goto :goto_25

    .line 133
    :cond_4d
    iget v1, v1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    invoke-direct {p0, v1, p2, p3}, Lcom/sun/tools/javac/jvm/CRTable;->encodePosition(ILcom/sun/tools/javac/util/Position$LineMap;Lcom/sun/tools/javac/util/Log;)I

    move-result v1

    .line 134
    if-ne v1, v6, :cond_57

    move v1, v3

    .line 135
    goto :goto_25

    .line 138
    :cond_57
    iget v5, v0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->startPc:I

    invoke-virtual {p1, v5}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 140
    iget v5, v0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->endPc:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 141
    invoke-virtual {p1, v4}, Lcom/sun/tools/javac/util/ByteBuffer;->appendInt(I)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendInt(I)V

    .line 143
    iget v0, v0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->flags:I

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 145
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_25

    .line 148
    :cond_72
    return v3

    :cond_73
    move v1, v3

    goto :goto_25
.end method
