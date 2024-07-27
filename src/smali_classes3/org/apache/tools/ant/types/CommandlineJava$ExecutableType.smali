.class final enum Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;
.super Ljava/lang/Enum;
.source "CommandlineJava.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/CommandlineJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExecutableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

.field public static final enum CLASS:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

.field public static final enum JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

.field public static final enum MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

.field public static final enum SOURCE_FILE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 906
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v5}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->CLASS:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 910
    new-instance v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    const-string v2, "JAR"

    invoke-direct {v1, v2, v6}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 914
    new-instance v2, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    const-string v3, "MODULE"

    invoke-direct {v2, v3, v7}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 919
    new-instance v3, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    const-string v4, "SOURCE_FILE"

    invoke-direct {v3, v4, v8}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->SOURCE_FILE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 902
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->$VALUES:[Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 902
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;
    .registers 2

    .line 902
    const-class v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;
    .registers 1

    .line 902
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->$VALUES:[Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    return-object v0
.end method
