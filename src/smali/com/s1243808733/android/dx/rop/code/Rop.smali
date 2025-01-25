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
    .registers 10

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_53

    if-eqz p3, :cond_4b

    if-eqz p4, :cond_43

    const/4 v0, 0x1

    if-lt p5, v0, :cond_2f

    const/4 v0, 0x6

    if-gt p5, v0, :cond_2f

    .line 113
    invoke-interface {p4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_20

    if-ne p5, v0, :cond_18

    goto :goto_20

    .line 114
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "exceptions / branchingness mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_20
    :goto_20
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

    .line 110
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid branchingness: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 106
    :cond_43
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_4b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_53
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "result == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 223
    :cond_4
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 227
    :cond_a
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 229
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    iget v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    if-ne v1, v3, :cond_33

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    iget v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    if-ne v1, v3, :cond_33

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v1, v3, :cond_33

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    iget-object v3, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0
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

    if-eqz v0, :cond_5

    return-object v0

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Rop;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .registers 5

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
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCallLike()Z
    .registers 2

    .line 359
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike:Z

    return v0
.end method

.method public isCommutative()Z
    .registers 3

    .line 371
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_f

    const/16 v1, 0x10

    if-eq v0, v1, :cond_f

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :cond_f
    :pswitch_f  #0x14, 0x15, 0x16
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x14
        :pswitch_f  #00000014
        :pswitch_f  #00000015
        :pswitch_f  #00000016
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    const-string v1, "Rop{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->opcode:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/RegOps;->opName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v3, " "

    const-string v4, " ."

    if-eq v1, v2, :cond_28

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->result:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 260
    :cond_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_2b
    const-string v1, " <-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    const/16 v2, 0x20

    const/4 v5, 0x0

    if-nez v1, :cond_3f

    .line 267
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    if-ge v4, v1, :cond_51

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    iget-object v6, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->sources:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v6, v4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 275
    :cond_51
    :goto_51
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike:Z

    if-eqz v1, :cond_5a

    .line 276
    const-string v1, " call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_5a
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_88

    .line 281
    const-string v3, " throws"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_67
    if-ge v5, v1, :cond_cc

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v3, v5}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    .line 285
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v3, v4, :cond_7c

    .line 286
    const-string v3, "<any>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 288
    :cond_7c
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v3, v5}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 292
    :cond_88
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_bb

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_af

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/Rop;->branchingness:I

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 297
    :cond_af
    const-string v1, " switches"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 296
    :cond_b5
    const-string v1, " ifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 295
    :cond_bb
    const-string v1, " gotos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 294
    :cond_c1
    const-string v1, " returns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 293
    :cond_c7
    const-string v1, " flows"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_cc
    :goto_cc
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
