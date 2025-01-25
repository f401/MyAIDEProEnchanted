.class final enum Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;
.super Ljava/lang/Enum;
.source "Ant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Ant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PropertyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

.field public static final enum INHERITED:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

.field public static final enum PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

.field public static final enum USER:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 810
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v4}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    const-string v2, "INHERITED"

    invoke-direct {v1, v2, v5}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->INHERITED:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    const-string v3, "USER"

    invoke-direct {v2, v3, v6}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->USER:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    .line 809
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;
    .registers 2

    .line 809
    const-class v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;
    .registers 1

    .line 809
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    return-object v0
.end method
