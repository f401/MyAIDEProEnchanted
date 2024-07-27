.class public final enum Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;
.super Ljava/lang/Enum;
.source "MultiRootFileSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field public static final enum both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field public static final enum dir:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field public static final enum file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    new-instance v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const-string v1, "file"

    invoke-direct {v0, v1, v4}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    new-instance v1, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const-string v2, "dir"

    invoke-direct {v1, v2, v5}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->dir:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    new-instance v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const-string v3, "both"

    invoke-direct {v2, v3, v6}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    .line 195
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->$VALUES:[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;
    .registers 2

    .line 195
    const-class v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;
    .registers 1

    .line 195
    sget-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->$VALUES:[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    return-object v0
.end method
