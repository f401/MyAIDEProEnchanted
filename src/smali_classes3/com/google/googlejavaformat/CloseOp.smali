.class public final enum Lcom/google/googlejavaformat/CloseOp;
.super Ljava/lang/Enum;
.source "CloseOp.java"

# interfaces
.implements Lcom/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/CloseOp;",
        ">;",
        "Lcom/google/googlejavaformat/Op;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/CloseOp;

.field public static final enum CLOSE:Lcom/google/googlejavaformat/CloseOp;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/google/googlejavaformat/CloseOp;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/CloseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/CloseOp;->CLOSE:Lcom/google/googlejavaformat/CloseOp;

    .line 24
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlejavaformat/CloseOp;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/googlejavaformat/CloseOp;->$VALUES:[Lcom/google/googlejavaformat/CloseOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static make()Lcom/google/googlejavaformat/Op;
    .registers 1

    .line 33
    sget-object v0, Lcom/google/googlejavaformat/CloseOp;->CLOSE:Lcom/google/googlejavaformat/CloseOp;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/CloseOp;
    .registers 2

    .line 24
    const-class v0, Lcom/google/googlejavaformat/CloseOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/CloseOp;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/CloseOp;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/googlejavaformat/CloseOp;->$VALUES:[Lcom/google/googlejavaformat/CloseOp;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/CloseOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/CloseOp;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/googlejavaformat/DocBuilder;)V
    .registers 2

    .line 38
    invoke-virtual {p1}, Lcom/google/googlejavaformat/DocBuilder;->close()V

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 43
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
