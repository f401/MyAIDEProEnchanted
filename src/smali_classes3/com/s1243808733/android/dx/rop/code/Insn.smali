.class public abstract Lcom/s1243808733/android/dx/rop/code/Insn;
.super Ljava/lang/Object;
.source "Insn.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# instance fields
.field private final opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

.field private final position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

.field private final result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private final sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    if-nez p4, :cond_2

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 66
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 67
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 68
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method private static equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 268
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public abstract accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;",
            ")V"
        }
    .end annotation
.end method

.method public final canThrow()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->canThrow()Z

    move-result v0

    return v0
.end method

.method public contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->equalsHandleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->equalContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)Z

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

.method public copy()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 2

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 79
    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2

    .line 117
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 164
    :goto_0
    if-nez v1, :cond_1

    .line 165
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 174
    :goto_1
    return-object v0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 170
    if-nez v2, :cond_2

    .line 171
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 174
    goto :goto_1
.end method

.method public final getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

    return-object v0
.end method

.method public final getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-object v0
.end method

.method public final getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public final getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 91
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    if-eqz p1, :cond_0

    .line 347
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez v0, :cond_2

    .line 353
    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_0
    const-string v0, " <-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 362
    if-nez v2, :cond_3

    .line 363
    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_2
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 365
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 366
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->toStringWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final toStringWithInline(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x20

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    const-string v1, "Insn{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->opcode:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Insn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
.end method

.method public abstract withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
.end method

.method public abstract withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
.end method

.method public withSourceLiteral()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 1

    .line 247
    return-object p0
.end method
