.class public Lorg/apache/commons/lang3/reflect/InheritanceUtils;
.super Ljava/lang/Object;
.source "InheritanceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static distance(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    .line 49
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 64
    :cond_5
    :goto_5
    return v0

    .line 53
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 54
    const/4 v0, 0x0

    goto :goto_5

    .line 57
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/lang3/BooleanUtils;->toInteger(Z)I

    move-result v1

    .line 60
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    move v0, v1

    .line 61
    goto :goto_5

    .line 63
    :cond_1f
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/InheritanceUtils;->distance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    add-int/2addr v1, v2

    .line 64
    if-lez v1, :cond_5

    add-int/lit8 v0, v1, 0x1

    goto :goto_5
.end method
