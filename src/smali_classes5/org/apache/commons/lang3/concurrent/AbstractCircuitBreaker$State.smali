.class public abstract enum Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.super Ljava/lang/Enum;
.source "AbstractCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final enum CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final enum OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    new-instance v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 156
    new-instance v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;

    const-string v2, "OPEN"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 142
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$1;)V
    .registers 4

    .line 142
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .registers 2

    .line 142
    const-class v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .registers 1

    .line 142
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method


# virtual methods
.method public abstract oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.end method
