.class public final Lcom/s1243808733/android/dx/rop/code/SourcePosition;
.super Ljava/lang/Object;
.source "SourcePosition.java"


# static fields
.field public static final NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;


# instance fields
.field private final address:I

.field private final line:I

.field private final sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    const/4 v2, -0x1

    new-instance v1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v0, v2, v2}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;II)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;II)V
    .registers 6

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-ge p2, v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-ge p3, v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "line < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 66
    iput p2, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->address:I

    .line 67
    iput p3, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    instance-of v2, p1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    if-eq p0, p1, :cond_2

    .line 106
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 108
    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->address:I

    iget v3, p1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->address:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sameLineAndFile(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getAddress()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->address:I

    return v0
.end method

.method public getLine()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    return v0
.end method

.method public getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public hashCode()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->address:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sameLine(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)Z
    .registers 4

    .line 125
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    iget v1, p1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sameLineAndFile(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)Z
    .registers 4

    .line 136
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    iget v1, p1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    if-ltz v1, :cond_1

    .line 81
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->address:I

    if-gez v1, :cond_2

    .line 87
    const-string v1, "????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_2
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->address:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
