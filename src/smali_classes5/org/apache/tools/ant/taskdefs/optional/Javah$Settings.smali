.class final enum Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
.super Ljava/lang/Enum;
.source "Javah.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/Javah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

.field public static final enum classes:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

.field public static final enum cls:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

.field public static final enum files:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    const-string v1, "cls"

    invoke-direct {v0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->cls:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    const-string v2, "files"

    invoke-direct {v1, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->files:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    const-string v3, "classes"

    invoke-direct {v2, v3, v6}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->classes:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    .line 495
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
    .registers 2

    .line 495
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
    .registers 1

    .line 495
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    return-object v0
.end method
