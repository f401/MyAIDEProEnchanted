.class public abstract enum Lcom/google/common/util/concurrent/Service$State;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/common/util/concurrent/Service$State;

.field public static final enum FAILED:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum NEW:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum RUNNING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STARTING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STOPPING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum TERMINATED:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$1;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Service$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 187
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$2;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/google/common/util/concurrent/Service$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 195
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$3;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/google/common/util/concurrent/Service$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 203
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$4;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/google/common/util/concurrent/Service$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 214
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$5;

    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v7}, Lcom/google/common/util/concurrent/Service$State$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 225
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$6;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/Service$State$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 176
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/util/concurrent/Service$1;)V
    .registers 4

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/Service$State;
    .registers 2

    .line 176
    const-class v0, Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method public static values()[Lcom/google/common/util/concurrent/Service$State;
    .registers 1

    .line 176
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/Service$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method


# virtual methods
.method abstract isTerminal()Z
.end method
