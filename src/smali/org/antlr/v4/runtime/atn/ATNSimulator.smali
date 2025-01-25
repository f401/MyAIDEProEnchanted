.class public abstract Lorg/antlr/v4/runtime/atn/ATNSimulator;
.super Ljava/lang/Object;
.source "ATNSimulator.java"


# static fields
.field public static final ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

.field public static final SERIALIZED_UUID:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIALIZED_VERSION:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final atn:Lorg/antlr/v4/runtime/atn/ATN;

.field protected final sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    sget v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    sput v0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->SERIALIZED_VERSION:I

    .line 33
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->SERIALIZED_UUID:Ljava/util/UUID;

    .line 65
    new-instance v0, Lorg/antlr/v4/runtime/dfa/DFAState;

    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 66
    const v1, 0x7fffffff

    iput v1, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 73
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    return-void
.end method

.method public static checkCondition(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    return-void
.end method

.method public static checkCondition(ZLjava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(ZLjava/lang/String;)V

    return-void
.end method

.method public static deserialize([C)Lorg/antlr/v4/runtime/atn/ATN;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserialize([C)Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object p0

    return-object p0
.end method

.method public static edgeFactory(Lorg/antlr/v4/runtime/atn/ATN;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/Transition;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "IIIIII",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/Transition;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->edgeFactory(Lorg/antlr/v4/runtime/atn/ATN;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    return-object v0
.end method

.method public static stateFactory(II)Lorg/antlr/v4/runtime/atn/ATNState;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->stateFactory(II)Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object p0

    return-object p0
.end method

.method public static toInt(C)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result p0

    return p0
.end method

.method public static toInt32([CI)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt32([CI)I

    move-result p0

    return p0
.end method

.method public static toLong([CI)J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toLong([CI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toUUID([CI)Ljava/util/UUID;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toUUID([CI)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearDFA()V
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ATN simulator does not support clearing the DFA."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 5

    .line 98
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    if-nez v0, :cond_5

    return-object p1

    .line 100
    :cond_5
    monitor-enter v0

    .line 101
    :try_start_6
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 103
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-static {p1, v2, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContextCache;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_13
    move-exception p1

    .line 106
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getSharedContextCache()Lorg/antlr/v4/runtime/atn/PredictionContextCache;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSimulator;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    return-object v0
.end method

.method public abstract reset()V
.end method
