.class Lcom/sun/tools/javac/model/JavacSourcePosition;
.super Ljava/lang/Object;
.source "JavacSourcePosition.java"


# instance fields
.field final lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

.field final pos:I

.field final sourcefile:Ljavax/tools/JavaFileObject;


# direct methods
.method constructor <init>(Ljavax/tools/JavaFileObject;ILcom/sun/tools/javac/util/Position$LineMap;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 49
    iput p2, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->pos:I

    .line 50
    const/4 v0, -0x1

    if-eq p2, v0, :cond_d

    :goto_a
    iput-object p3, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    .line 51
    return-void

    .line 50
    :cond_d
    const/4 p3, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getColumn()I
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->pos:I

    invoke-interface {v0, v1}, Lcom/sun/tools/javac/util/Position$LineMap;->getColumnNumber(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getFile()Ljavax/tools/JavaFileObject;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->sourcefile:Ljavax/tools/JavaFileObject;

    return-object v0
.end method

.method public getLine()I
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->pos:I

    invoke-interface {v0, v1}, Lcom/sun/tools/javac/util/Position$LineMap;->getLineNumber(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getOffset()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->pos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/sun/tools/javac/model/JavacSourcePosition;->getLine()I

    move-result v0

    .line 71
    if-lez v0, :cond_1d

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_1c
    return-object v0

    .line 73
    :cond_1d
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacSourcePosition;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method
