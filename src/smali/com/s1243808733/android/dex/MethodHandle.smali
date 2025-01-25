.class public Lcom/s1243808733/android/dex/MethodHandle;
.super Ljava/lang/Object;
.source "MethodHandle.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dex/MethodHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final fieldOrMethodId:I

.field private final methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field private final unused1:I

.field private final unused2:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;III)V
    .registers 6

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/s1243808733/android/dex/MethodHandle;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 84
    iput-object p2, p0, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 85
    iput p3, p0, Lcom/s1243808733/android/dex/MethodHandle;->unused1:I

    .line 86
    iput p4, p0, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    .line 87
    iput p5, p0, Lcom/s1243808733/android/dex/MethodHandle;->unused2:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/MethodHandle;)I
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    iget-object v1, p1, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    if-eq v0, v1, :cond_b

    .line 93
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    .line 95
    :cond_b
    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    iget p1, p1, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 26
    check-cast p1, Lcom/s1243808733/android/dex/MethodHandle;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/MethodHandle;->compareTo(Lcom/s1243808733/android/dex/MethodHandle;)I

    move-result p1

    return p1
.end method

.method public getFieldOrMethodId()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    return v0
.end method

.method public getMethodHandleType()Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    return-object v0
.end method

.method public getUnused1()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->unused1:I

    return v0
.end method

.method public getUnused2()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->unused2:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->dex:Lcom/s1243808733/android/dex/Dex;

    const-string v1, " "

    if-nez v0, :cond_1d

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->isField()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 129
    iget-object v1, p0, Lcom/s1243808733/android/dex/MethodHandle;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    goto :goto_4f

    .line 130
    :cond_41
    iget-object v1, p0, Lcom/s1243808733/android/dex/MethodHandle;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->methodHandleType:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    invoke-static {v0}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->-$$Nest$fgetvalue(Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 116
    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->unused1:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 117
    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->fieldOrMethodId:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 118
    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle;->unused2:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    return-void
.end method
