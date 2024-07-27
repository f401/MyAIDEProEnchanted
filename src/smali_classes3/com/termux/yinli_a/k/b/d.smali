.class public abstract Lcom/termux/yinli_a/k/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/termux/yinli_a/k/b/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/k/b/b",
        "<TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/termux/yinli_a/k/b/e;->a(Lcom/termux/yinli_a/k/b/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reflection.renderLambdaToString(this)"

    invoke-static {v0, v1}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
