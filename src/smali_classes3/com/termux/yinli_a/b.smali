.class Lcom/termux/yinli_a/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "$this$addSuppressed"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/termux/yinli_a/i/b;->a:Lcom/termux/yinli_a/i/a;

    invoke-virtual {v0, p0, p1}, Lcom/termux/yinli_a/i/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
