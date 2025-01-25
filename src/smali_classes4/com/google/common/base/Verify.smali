.class public final Lcom/google/common/base/Verify;
.super Ljava/lang/Object;
.source "Verify.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verify(Z)V
    .registers 2

    .line 99
    if-eqz p0, :cond_3

    .line 102
    return-void

    .line 100
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    invoke-direct {v0}, Lcom/google/common/base/VerifyException;-><init>()V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;C)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 138
    if-eqz p0, :cond_3

    .line 141
    return-void

    .line 139
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;CC)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 197
    if-eqz p0, :cond_3

    .line 200
    return-void

    .line 198
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;CI)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 260
    if-eqz p0, :cond_3

    .line 263
    return-void

    .line 261
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;CJ)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 323
    if-eqz p0, :cond_3

    .line 326
    return-void

    .line 324
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;CLjava/lang/Object;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 389
    if-eqz p0, :cond_3

    .line 392
    return-void

    .line 390
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;I)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 152
    if-eqz p0, :cond_3

    .line 155
    return-void

    .line 153
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;IC)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 212
    if-eqz p0, :cond_3

    .line 215
    return-void

    .line 213
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;II)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 275
    if-eqz p0, :cond_3

    .line 278
    return-void

    .line 276
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;IJ)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 338
    if-eqz p0, :cond_3

    .line 341
    return-void

    .line 339
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;ILjava/lang/Object;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 407
    if-eqz p0, :cond_3

    .line 410
    return-void

    .line 408
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;J)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 167
    if-eqz p0, :cond_3

    .line 170
    return-void

    .line 168
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;JC)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 227
    if-eqz p0, :cond_3

    .line 230
    return-void

    .line 228
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;JI)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 290
    if-eqz p0, :cond_3

    .line 293
    return-void

    .line 291
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;JJ)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 353
    if-eqz p0, :cond_3

    .line 356
    return-void

    .line 354
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;JLjava/lang/Object;)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 425
    if-eqz p0, :cond_3

    .line 428
    return-void

    .line 426
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 182
    if-eqz p0, :cond_3

    .line 185
    return-void

    .line 183
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;Ljava/lang/Object;C)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 245
    if-eqz p0, :cond_3

    .line 248
    return-void

    .line 246
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;Ljava/lang/Object;I)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 308
    if-eqz p0, :cond_3

    .line 311
    return-void

    .line 309
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;Ljava/lang/Object;J)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 371
    if-eqz p0, :cond_3

    .line 374
    return-void

    .line 372
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 443
    if-eqz p0, :cond_3

    .line 446
    return-void

    .line 444
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 462
    if-eqz p0, :cond_3

    .line 465
    return-void

    .line 463
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 482
    if-eqz p0, :cond_3

    .line 485
    return-void

    .line 483
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs verify(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 123
    if-eqz p0, :cond_3

    .line 126
    return-void

    .line 124
    :cond_3
    new-instance v0, Lcom/google/common/base/VerifyException;

    invoke-static {p1, p2}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 497
    const-string v0, "expected a non-null reference"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 520
    if-eqz p0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0, p1, p2}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 521
    return-object p0

    .line 520
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
