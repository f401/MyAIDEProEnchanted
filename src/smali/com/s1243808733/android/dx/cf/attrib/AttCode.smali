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
    .registers 7

    .line 57
    const-string v0, "Code"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-ltz p1, :cond_54

    if-ltz p2, :cond_4c

    if-eqz p3, :cond_44

    .line 72
    :try_start_b
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->isMutable()Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_f} :catch_3b

    if-nez v0, :cond_33

    .line 81
    :try_start_11
    invoke-interface {p5}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->isMutable()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_15} :catch_2a

    if-nez v0, :cond_22

    .line 89
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

    .line 82
    :cond_22
    :try_start_22
    new-instance p1, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string p2, "attributes.isMutable()"

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2a} :catch_2a

    .line 86
    :catch_2a
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_33
    :try_start_33
    new-instance p1, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string p2, "catches.isMutable()"

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_3b} :catch_3b

    .line 77
    :catch_3b
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxLocals < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxStack < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->byteLength()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->byteLength()I

    move-result v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    .line 99
    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->byteLength()I

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
