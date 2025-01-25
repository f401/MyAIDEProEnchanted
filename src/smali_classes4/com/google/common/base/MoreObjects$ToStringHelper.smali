.class public final Lcom/google/common/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/MoreObjects$1;)V

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 143
    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$1;)V
    .registers 3

    .line 140
    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    .registers 3

    .line 361
    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/MoreObjects$1;)V

    .line 362
    iget-object v1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 363
    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 367
    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 368
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 369
    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 5
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 373
    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v1

    .line 374
    iput-object p2, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 375
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    .line 376
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 4

    .line 191
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 6

    .line 201
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;F)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 4

    .line 211
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 4

    .line 221
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 6

    .line 231
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 4
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 4

    .line 181
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(C)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 3

    .line 268
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(D)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 4

    .line 281
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(F)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 3

    .line 294
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(I)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 3

    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(J)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 4

    .line 320
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 242
    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Z)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 3

    .line 255
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .registers 2

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 161
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x1

    .line 334
    iget-boolean v2, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 335
    const-string v0, ""

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    iget-object v1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object v1, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 338
    :goto_1b
    if-eqz v1, :cond_5b

    .line 340
    iget-object v4, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 341
    if-eqz v2, :cond_23

    if-eqz v4, :cond_54

    .line 342
    :cond_23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v0, ", "

    .line 345
    iget-object v5, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v5, :cond_36

    .line 346
    iget-object v5, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_36
    if-eqz v4, :cond_57

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 349
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 339
    :cond_54
    :goto_54
    iget-object v1, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_1b

    .line 353
    :cond_57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 357
    :cond_5b
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
