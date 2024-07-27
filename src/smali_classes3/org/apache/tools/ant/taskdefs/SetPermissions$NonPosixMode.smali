.class public final enum Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
.super Ljava/lang/Enum;
.source "SetPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/SetPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NonPosixMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum fail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum pass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum tryDosOrFail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum tryDosOrPass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v1, "fail"

    invoke-direct {v0, v1, v5}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->fail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 69
    new-instance v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v2, "pass"

    invoke-direct {v1, v2, v6}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->pass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 74
    new-instance v2, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v3, "tryDosOrFail"

    invoke-direct {v2, v3, v7}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->tryDosOrFail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 79
    new-instance v3, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v4, "tryDosOrPass"

    invoke-direct {v3, v4, v8}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->tryDosOrPass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 65
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->$VALUES:[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
    .registers 2

    .line 65
    const-class v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
    .registers 1

    .line 65
    sget-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->$VALUES:[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-object v0
.end method
