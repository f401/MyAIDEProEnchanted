.class public final Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "StdAttributeList.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/AttributeList;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public byteLength()I
    .registers 5

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_14

    .line 49
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->byteLength()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    return v1
.end method

.method public findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    .line 58
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 61
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 7

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    if-ge v1, v0, :cond_29

    .line 78
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    if-ne v3, p1, :cond_26

    .line 87
    invoke-interface {p1}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_25

    .line 90
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    .line 91
    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    return-object v3

    :cond_25
    return-object v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_29
    return-object v2
.end method

.method public get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/iface/Attribute;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/cf/iface/Attribute;)V
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->set0(ILjava/lang/Object;)V

    return-void
.end method
