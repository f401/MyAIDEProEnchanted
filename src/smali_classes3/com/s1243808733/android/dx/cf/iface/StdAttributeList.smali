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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v2

    .line 46
    const/4 v0, 0x2

    .line 48
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 52
    return v0

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->byteLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v2

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 67
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/iface/Attribute;

    :cond_0
    return-object v0

    .line 61
    :cond_1
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v3

    .line 74
    const/4 v1, 0x0

    .line 77
    :goto_0
    if-lt v1, v3, :cond_0

    .line 84
    check-cast v0, Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 96
    :goto_1
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v2

    .line 79
    if-ne v2, p1, :cond_1

    .line 87
    invoke-interface {p1}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    .line 89
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_2
    if-lt v2, v3, :cond_2

    .line 96
    check-cast v0, Lcom/s1243808733/android/dx/cf/iface/Attribute;

    goto :goto_1

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v1

    .line 92
    goto :goto_1

    .line 89
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method

.method public get(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/iface/Attribute;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/cf/iface/Attribute;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/cf/iface/Attribute;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->set0(ILjava/lang/Object;)V

    return-void
.end method
