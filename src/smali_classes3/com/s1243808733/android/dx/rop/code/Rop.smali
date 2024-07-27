.class public final Lcom/s1243808733/android/dx/rop/code/Rop;
.super Ljava/lang/Object;
.source "Rop.java"


# static fields
.field public static final BRANCH_GOTO:I = 0x3

.field public static final BRANCH_IF:I = 0x4

.field public static final BRANCH_MAX:I = 0x6

.field public static final BRANCH_MIN:I = 0x1

.field public static final BRANCH_NONE:I = 0x1

.field public static final BRANCH_RETURN:I = 0x2

.field public static final BRANCH_SWITCH:I = 0x5

.field public static final BRANCH_THROW:I = 0x6


# instance fields
.field private final branchingness:I

.field private final exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

.field private final isCallLike:Z

.field private final nickname:Ljava/lang/String;

.field private final opcode:I

.field private final result:Lcom/s1243808733/android/dx/rop/type/Type;

.field private final sources:Lcom/s1243808733/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;ILjava/lang/String;)V
    .registers 14

    .line 161
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/rop/code/Rop;-><init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;ILjava/lang/String;)V
    .registers 15

    .line 143
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/rop/code/Rop;-><init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;IZLjava/lang/String;)V
    .registers 11

    const/4 v1, 0x6

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p3, :cond_1

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    if-nez p4, :cond_2

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    const/4 v0, 0x1

    if-lt p5, v0, :cond_3

    if-le p5, v1, :cond_4

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid branchingness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_4
    invoke-interface {p4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq p5, v1, :cond_5

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "exceptions / branchingness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_5
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    .line 119
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 120
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 121
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 122
    iput p5, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    .line 123
    iput-boolean p6, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike:Z

    .line 124
    iput-object p7, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;Ljava/lang/String;)V
    .registers 14

    .line 196
    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/rop/code/Rop;-><init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Ljava/lang/String;)V
    .registers 13

    .line 177
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/rop/code/Rop;-><init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .registers 12

    .line 211
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/rop/code/Rop;-><init>(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final canThrow()Z
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 218
    if-ne p0, p1, :cond_2

    :cond_0
    move v0, v1

    .line 229
    :cond_1
    :goto_0
    return v0

    .line 223
    :cond_2
    instance-of v2, p1, Lcom/s1243808733/android/dx/rop/code/Rop;

    if-eqz v2, :cond_1

    .line 227
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 229
    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    iget v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    iget v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    iget-object v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    iget-object v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getBranchingness()I
    .registers 2

    .line 350
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    return v0
.end method

.method public getExceptions()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    .line 394
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Rop;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOpcode()I
    .registers 2

    .line 313
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    return v0
.end method

.method public getResult()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getSources()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public hashCode()I
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 239
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    .line 240
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->hashCode()I

    move-result v2

    .line 241
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 242
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 244
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    return v0
.end method

.method public isCallLike()Z
    .registers 2

    .line 359
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike:Z

    return v0
.end method

.method public isCommutative()Z
    .registers 2

    .line 371
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 379
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 377
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    const-string v0, "Rop{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/RegOps;->opName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq v0, v3, :cond_2

    .line 257
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    :goto_0
    const-string v0, " <-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v3

    .line 266
    if-nez v3, :cond_3

    .line 267
    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike:Z

    if-eqz v0, :cond_1

    .line 276
    const-string v0, " call"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 280
    if-eqz v0, :cond_6

    .line 281
    const-string v3, " throws"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :goto_1
    if-lt v1, v0, :cond_4

    .line 302
    :goto_2
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :cond_2
    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 269
    :goto_3
    if-ge v0, v3, :cond_0

    .line 270
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v4, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 283
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    .line 285
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v3, v4, :cond_5

    .line 286
    const-string v3, "<any>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_5
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 292
    :cond_6
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    packed-switch v0, :pswitch_data_0

    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 293
    :pswitch_0
    const-string v0, " flows"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 294
    :pswitch_1
    const-string v0, " returns"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 295
    :pswitch_2
    const-string v0, " gotos"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 296
    :pswitch_3
    const-string v0, " ifs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 297
    :pswitch_4
    const-string v0, " switches"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
