.class Lorg/apache/commons/lang3/CharRange$CharacterIterator;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/CharRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private current:C

.field private hasNext:Z

.field private final range:Lorg/apache/commons/lang3/CharRange;


# direct methods
.method private constructor <init>(Lorg/apache/commons/lang3/CharRange;)V
    .registers 5

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    .line 292
    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$100(Lorg/apache/commons/lang3/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 293
    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    if-nez v0, :cond_2b

    .line 294
    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_21

    .line 296
    iput-boolean v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    .line 306
    :goto_20
    return-void

    .line 298
    :cond_21
    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_20

    .line 301
    :cond_2b
    iput-char v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_20

    .line 304
    :cond_2e
    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_20
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/CharRange;Lorg/apache/commons/lang3/CharRange$1;)V
    .registers 3

    .line 276
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;)V

    return-void
.end method

.method private prepareNext()V
    .registers 5

    const v3, 0xffff

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$100(Lorg/apache/commons/lang3/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 313
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    if-ne v0, v3, :cond_13

    .line 314
    iput-boolean v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    .line 329
    :goto_12
    return-void

    .line 315
    :cond_13
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v1}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result v1

    if-ne v0, v1, :cond_34

    .line 316
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    if-ne v0, v3, :cond_28

    .line 317
    iput-boolean v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_12

    .line 319
    :cond_28
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_12

    .line 322
    :cond_34
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_12

    .line 324
    :cond_3c
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    iget-object v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v1}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 325
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_12

    .line 327
    :cond_4e
    iput-boolean v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_12
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Character;
    .registers 2

    .line 348
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    if-eqz v0, :cond_e

    .line 351
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    .line 352
    invoke-direct {p0}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->prepareNext()V

    .line 353
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 349
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
