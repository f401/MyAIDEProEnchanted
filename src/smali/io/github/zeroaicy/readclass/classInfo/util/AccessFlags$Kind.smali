.class public enum Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;
.super Ljava/lang/Enum;
.source "AccessFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

.field public static final Class:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

.field public static final Field:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

.field public static final InnerClass:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

.field public static final Method:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;


# direct methods
.method static final constructor <clinit>()V
    .registers 9

    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v1, "Class"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Class:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v3, "InnerClass"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->InnerClass:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    new-instance v3, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v5, "Field"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Field:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    new-instance v5, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v7, "Method"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Method:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;
    .registers 5

    .line 42
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const/4 v1, 0x0

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_16

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_1d

    :goto_1c
    throw p0

    :goto_1d
    goto :goto_1c
.end method

.method public static final values()[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;
    .registers 1

    .line 42
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-virtual {v0}, [Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    return-object v0
.end method
