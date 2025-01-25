.class Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spartacusrex/spartacuside/helper/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 4141
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4142
    if-eqz p1, :cond_8

    .line 4144
    iput-object p1, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 4145
    return-void

    .line 4143
    :cond_8
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 4190
    invoke-virtual {p0, p1}, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4167
    iget-object v0, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    .line 4177
    if-nez p1, :cond_12

    .line 4178
    :goto_3
    iget-object v1, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 4179
    aget-object v1, v1, v0

    if-nez v1, :cond_d

    .line 4186
    :goto_c
    return v0

    .line 4178
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4182
    :cond_10
    add-int/lit8 v0, v0, 0x1

    :cond_12
    iget-object v1, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 4183
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_c

    .line 4186
    :cond_20
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 4171
    iget-object v0, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 4172
    aput-object p2, v0, p1

    .line 4173
    return-object v1
.end method

.method public size()I
    .registers 2

    .line 4148
    iget-object v0, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 4152
    iget-object v0, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 4156
    invoke-virtual {p0}, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->size()I

    move-result v0

    .line 4157
    array-length v1, p1

    if-ge v1, v0, :cond_13

    .line 4158
    iget-object v1, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 4159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4158
    invoke-static {v1, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 4163
    :cond_12
    :goto_12
    return-object p1

    .line 4160
    :cond_13
    iget-object v1, p0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4161
    array-length v1, p1

    if-le v1, v0, :cond_12

    .line 4162
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_12
.end method
