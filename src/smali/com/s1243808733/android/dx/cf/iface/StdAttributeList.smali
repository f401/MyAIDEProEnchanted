.class public final Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "StdAttributeList.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/AttributeList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public byteLength()I
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v2

    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->byteLength()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 4

    .line 58
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 6

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 78
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 87
    invoke-interface {p1}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 1

    .line 39
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/iface/Attribute;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/cf/iface/Attribute;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->set0(ILjava/lang/Object;)V

    return-void
.end method
