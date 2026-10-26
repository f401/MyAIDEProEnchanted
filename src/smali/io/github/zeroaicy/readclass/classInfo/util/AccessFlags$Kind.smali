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
        "Ljava/lang/Enum",
        "<",
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
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v1, "Class"

    invoke-direct {v0, v1, v5}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Class:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v2, "InnerClass"

    invoke-direct {v1, v2, v6}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->InnerClass:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v3, "Field"

    invoke-direct {v2, v3, v7}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Field:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    new-instance v3, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const-string v4, "Method"

    invoke-direct {v3, v4, v8}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Method:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const/4 v4, 0x4

    new-array v4, v4, [Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;
    .locals 4

    .line 42
    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final values()[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;
    .locals 1

    .line 42
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-virtual {v0}, [Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    return-object v0
.end method
