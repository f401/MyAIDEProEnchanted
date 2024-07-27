.class public final Lcom/s1243808733/android/dx/cf/attrib/AttCode;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttCode.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Code"


# instance fields
.field private final attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

.field private final catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

.field private final code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

.field private final maxLocals:I

.field private final maxStack:I


# direct methods
.method public constructor <init>(IILcom/s1243808733/android/dx/cf/code/BytecodeArray;Lcom/s1243808733/android/dx/cf/code/ByteCatchList;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V
    .registers 8

    .line 57
    const-string v0, "Code"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 59
    if-gez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxStack < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-gez p2, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxLocals < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    if-nez p3, :cond_2

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    :try_start_0
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v1, "catches.isMutable()"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    :try_start_1
    invoke-interface {p5}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    new-instance v0, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v1, "attributes.isMutable()"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4
    iput p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->maxStack:I

    .line 90
    iput p2, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->maxLocals:I

    .line 91
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    .line 92
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    .line 93
    iput-object p5, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    return-void
.end method


# virtual methods
.method public byteLength()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->byteLength()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->byteLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->byteLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    return-object v0
.end method

.method public getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    return-object v0
.end method

.method public getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    return-object v0
.end method

.method public getMaxLocals()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->maxLocals:I

    return v0
.end method

.method public getMaxStack()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->maxStack:I

    return v0
.end method
