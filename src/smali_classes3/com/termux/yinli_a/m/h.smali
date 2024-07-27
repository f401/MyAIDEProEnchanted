.class public final Lcom/termux/yinli_a/m/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/termux/yinli_a/m/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/m/a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/termux/yinli_a/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/m/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/termux/yinli_a/k/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/k/a/a",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/termux/yinli_a/m/a;Lcom/termux/yinli_a/k/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/m/a",
            "<+TT;>;",
            "La/k/a/a",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/yinli_a/m/h;->a:Lcom/termux/yinli_a/m/a;

    iput-object p2, p0, Lcom/termux/yinli_a/m/h;->b:Lcom/termux/yinli_a/k/a/a;

    return-void
.end method

.method public static final synthetic a(Lcom/termux/yinli_a/m/h;)Lcom/termux/yinli_a/m/a;
    .registers 2

    iget-object v0, p0, Lcom/termux/yinli_a/m/h;->a:Lcom/termux/yinli_a/m/a;

    return-object v0
.end method

.method public static final synthetic b(Lcom/termux/yinli_a/m/h;)Lcom/termux/yinli_a/k/a/a;
    .registers 2

    iget-object v0, p0, Lcom/termux/yinli_a/m/h;->b:Lcom/termux/yinli_a/k/a/a;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/termux/yinli_a/m/h$a;

    invoke-direct {v0, p0}, Lcom/termux/yinli_a/m/h$a;-><init>(Lcom/termux/yinli_a/m/h;)V

    return-object v0
.end method
