.class final enum Lcom/google/common/hash/Funnels$LongFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LongFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/hash/Funnels$LongFunnel;",
        ">;",
        "Lcom/google/common/hash/Funnel",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/common/hash/Funnels$LongFunnel;

.field public static final enum INSTANCE:Lcom/google/common/hash/Funnels$LongFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 210
    new-instance v0, Lcom/google/common/hash/Funnels$LongFunnel;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$LongFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$LongFunnel;

    .line 209
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/hash/Funnels$LongFunnel;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$LongFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 2

    .line 209
    const-class v0, Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 1

    .line 209
    sget-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$LongFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/Long;Lcom/google/common/hash/PrimitiveSink;)V
    .registers 5

    .line 213
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/hash/PrimitiveSink;->putLong(J)Lcom/google/common/hash/PrimitiveSink;

    .line 214
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .registers 3

    .line 209
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$LongFunnel;->funnel(Ljava/lang/Long;Lcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 218
    const-string v0, "Funnels.longFunnel()"

    return-object v0
.end method
