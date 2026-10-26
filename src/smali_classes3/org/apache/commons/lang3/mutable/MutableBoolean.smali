.class public Lorg/apache/commons/lang3/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lorg/apache/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 57
    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 32
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->compareTo(Lorg/apache/commons/lang3/mutable/MutableBoolean;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableBoolean;)I
    .locals 2

    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    iget-boolean v1, p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 171
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;

    if-eqz v1, :cond_0

    .line 172
    iget-boolean v1, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 174
    :cond_0
    return v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isFalse()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTrue()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public setFalse()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 96
    return-void
.end method

.method public setTrue()V
    .locals 1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 105
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 116
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setValue(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 87
    return-void
.end method

.method public toBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 208
    iget-boolean v0, p0, Lorg/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
