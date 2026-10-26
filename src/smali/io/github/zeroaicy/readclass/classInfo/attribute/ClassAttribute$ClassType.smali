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
        "Ljava/lang/Enum",
        "<",
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
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v1, "Enum"

    const-string v2, "enum "

    invoke-direct {v0, v1, v6, v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v2, "Class"

    const-string v3, "class "

    invoke-direct {v1, v2, v7, v3}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v3, "Interface"

    const-string v4, "interface "

    invoke-direct {v2, v3, v8, v4}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    new-instance v3, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const-string v4, "Annotation"

    const-string v5, "@interface "

    invoke-direct {v3, v4, v9, v5}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const/4 v4, 0x4

    new-array v4, v4, [Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    sput-object v4, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .locals 4

    .line 217
    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->name()Ljava/lang/String;

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

.method public static final values()[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .locals 1

    .line 217
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->$VALUES:[Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    invoke-virtual {v0}, [Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isAnnotation()Z
    .locals 1

    .line 235
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClass()Z
    .locals 1

    .line 229
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Class:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnum()Z
    .locals 1

    .line 226
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInterface()Z
    .locals 1

    .line 232
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Interface:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
