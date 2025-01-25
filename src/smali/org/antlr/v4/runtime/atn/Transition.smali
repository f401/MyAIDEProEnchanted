.class public abstract Lorg/antlr/v4/runtime/atn/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# static fields
.field public static final ACTION:I = 0x6

.field public static final ATOM:I = 0x5

.field public static final EPSILON:I = 0x1

.field public static final NOT_SET:I = 0x8

.field public static final PRECEDENCE:I = 0xa

.field public static final PREDICATE:I = 0x4

.field public static final RANGE:I = 0x2

.field public static final RULE:I = 0x3

.field public static final SET:I = 0x7

.field public static final WILDCARD:I = 0x9

.field public static final serializationNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final serializationTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/antlr/v4/runtime/atn/Transition;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public target:Lorg/antlr/v4/runtime/atn/ATNState;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EPSILON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RULE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PREDICATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ATOM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SET"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NOT_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WILDCARD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PRECEDENCE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/atn/Transition;->serializationNames:Ljava/util/List;

    .line 58
    new-instance v0, Lorg/antlr/v4/runtime/atn/Transition$1;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/Transition$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/atn/Transition;->serializationTypes:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 81
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    return-void

    .line 78
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "target cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract getSerializationType()I
.end method

.method public isEpsilon()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public label()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract matches(III)Z
.end method
