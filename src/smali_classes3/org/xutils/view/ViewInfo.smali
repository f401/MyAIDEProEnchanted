.class final Lorg/xutils/view/ViewInfo;
.super Ljava/lang/Object;
.source "ViewInfo.java"


# instance fields
.field public parentId:I

.field public value:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    if-ne p0, p1, :cond_1

    .line 20
    :cond_0
    :goto_0
    return v0

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 17
    :cond_3
    check-cast p1, Lorg/xutils/view/ViewInfo;

    .line 19
    iget v2, p0, Lorg/xutils/view/ViewInfo;->value:I

    iget v3, p1, Lorg/xutils/view/ViewInfo;->value:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lorg/xutils/view/ViewInfo;->parentId:I

    iget v3, p1, Lorg/xutils/view/ViewInfo;->parentId:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    .line 26
    iget v0, p0, Lorg/xutils/view/ViewInfo;->value:I

    .line 27
    iget v1, p0, Lorg/xutils/view/ViewInfo;->parentId:I

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
