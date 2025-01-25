.class public final Lcom/google/googlejavaformat/Output$BreakTag;
.super Ljava/lang/Object;
.source "Output.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BreakTag"
.end annotation


# instance fields
.field taken:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/Output$BreakTag;->taken:Lcom/google/common/base/Optional;

    return-void
.end method


# virtual methods
.method public recordBroken(Z)V
    .registers 3

    .line 79
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/Output$BreakTag;->taken:Lcom/google/common/base/Optional;

    .line 80
    return-void
.end method

.method public wasBreakTaken()Z
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/google/googlejavaformat/Output$BreakTag;->taken:Lcom/google/common/base/Optional;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
