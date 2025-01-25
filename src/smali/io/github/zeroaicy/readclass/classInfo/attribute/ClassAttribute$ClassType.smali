.class public enum Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
.super Ljava/lang/Enum;
.source "ClassAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ClassType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

.field public static final Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

.field public static final Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

.field public static final Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

.field public static final Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;


# instance fields
.field public final type:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 10

    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v1, "enum "

    const-string v2, "Enum"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v2, "class "

    const-string v4, "Class"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v4, "interface "

    const-string v6, "Interface"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    new-instance v4, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v6, "@interface "

    const-string v8, "Annotation"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const/4 v6, 0x4

    new-array v6, v6, [Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 5

    .line 217
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const/4 v1, 0x0

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_16

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->name()Ljava/lang/String;

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

.method public static final values()[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 1

    .line 217
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v0}, [Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isAnnotation()Z
    .registers 2

    .line 235
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method public isClass()Z
    .registers 2

    .line 229
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method public isEnum()Z
    .registers 2

    .line 226
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method public isInterface()Z
    .registers 2

    .line 232
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method
