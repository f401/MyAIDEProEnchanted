.class final Lorg/apache/commons/lang3/builder/IDKey;
.super Ljava/lang/Object;
.source "IDKey.java"


# instance fields
.field private final id:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    .line 43
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lorg/apache/commons/lang3/builder/IDKey;

    if-nez v1, :cond_6

    .line 70
    :cond_5
    :goto_5
    return v0

    .line 65
    :cond_6
    check-cast p1, Lorg/apache/commons/lang3/builder/IDKey;

    .line 66
    iget v1, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    iget v2, p1, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    if-ne v1, v2, :cond_5

    .line 70
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .line 52
    iget v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    return v0
.end method
