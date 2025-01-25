.class Lsun/reflect/misc/MethodUtil$Signature;
.super Ljava/lang/Object;
.source "MethodUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/reflect/misc/MethodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Signature"
.end annotation


# instance fields
.field private argClasses:[Ljava/lang/Class;

.field private volatile hashCode:I

.field private methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    .line 205
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    .line 207
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    if-ne p0, p1, :cond_6

    move v1, v2

    .line 225
    :cond_5
    :goto_5
    return v1

    .line 213
    :cond_6
    check-cast p1, Lsun/reflect/misc/MethodUtil$Signature;

    .line 214
    iget-object v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    iget-object v3, p1, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v3, p1, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v3, v3

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 220
    :goto_1b
    iget-object v3, p0, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v0, v4, :cond_2b

    .line 221
    aget-object v3, v3, v0

    iget-object v4, p1, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    aget-object v4, v4, v0

    if-ne v3, v4, :cond_5

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2b
    move v1, v2

    .line 225
    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    const/4 v1, 0x0

    .line 233
    iget v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    if-nez v0, :cond_2b

    .line 234
    iget-object v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v2, v0, 0x275

    .line 236
    iget-object v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    if-eqz v0, :cond_29

    move v0, v1

    .line 237
    :goto_12
    iget-object v3, p0, Lsun/reflect/misc/MethodUtil$Signature;->argClasses:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v0, v4, :cond_29

    .line 238
    aget-object v4, v3, v0

    if-nez v4, :cond_22

    move v3, v1

    .line 239
    :goto_1c
    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v2, v3

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 239
    :cond_22
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1c

    .line 242
    :cond_29
    iput v2, p0, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    .line 244
    :cond_2b
    iget v0, p0, Lsun/reflect/misc/MethodUtil$Signature;->hashCode:I

    return v0
.end method
