.class public Lcom/sun/tools/javac/jvm/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;,
        Lcom/sun/tools/javac/jvm/ClassFile$Version;
    }
.end annotation


# static fields
.field public static final CONSTANT_Class:I = 0x7

.field public static final CONSTANT_Double:I = 0x6

.field public static final CONSTANT_Fieldref:I = 0x9

.field public static final CONSTANT_Float:I = 0x4

.field public static final CONSTANT_Integer:I = 0x3

.field public static final CONSTANT_InterfaceMethodref:I = 0xb

.field public static final CONSTANT_InvokeDynamic:I = 0x12

.field public static final CONSTANT_Long:I = 0x5

.field public static final CONSTANT_MethodHandle:I = 0xf

.field public static final CONSTANT_MethodType:I = 0x10

.field public static final CONSTANT_Methodref:I = 0xa

.field public static final CONSTANT_NameandType:I = 0xc

.field public static final CONSTANT_String:I = 0x8

.field public static final CONSTANT_Unicode:I = 0x2

.field public static final CONSTANT_Utf8:I = 0x1

.field public static final JAVA_MAGIC:I = -0x35014542

.field public static final MAX_CODE:I = 0xffff

.field public static final MAX_DIMENSIONS:I = 0xff

.field public static final MAX_LOCALS:I = 0xffff

.field public static final MAX_PARAMETERS:I = 0xff

.field public static final MAX_STACK:I = 0xffff


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static externalize(Lcom/sun/tools/javac/util/Name;)[B
    .registers 4

    .line 155
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassFile;->externalize([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static externalize([BII)[B
    .registers 7

    .line 141
    new-array v1, p2, [B

    .line 142
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 143
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    .line 144
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    const/16 v2, 0x2f

    aput-byte v2, v1, v0

    .line 142
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    aput-byte v2, v1, v0

    goto :goto_1

    .line 147
    :cond_1
    return-object v1
.end method

.method public static internalize(Lcom/sun/tools/javac/util/Name;)[B
    .registers 4

    .line 133
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassFile;->internalize([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static internalize([BII)[B
    .registers 7

    .line 119
    new-array v1, p2, [B

    .line 120
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 121
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    .line 122
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const/16 v2, 0x2e

    aput-byte v2, v1, v0

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    aput-byte v2, v1, v0

    goto :goto_1

    .line 125
    :cond_1
    return-object v1
.end method
