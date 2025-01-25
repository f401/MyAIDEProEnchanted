.class Lcom/termux/yinli_a/n/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/Appendable;Ljava/lang/Object;Lcom/termux/yinli_a/k/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "TT;",
            "La/k/a/a<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$appendElement"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    invoke-interface {p2, p1}, Lcom/termux/yinli_a/k/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_14

    :cond_c
    if-eqz p1, :cond_11

    instance-of p2, p1, Ljava/lang/CharSequence;

    goto :goto_12

    :cond_11
    const/4 p2, 0x1

    :goto_12
    if-eqz p2, :cond_17

    :goto_14
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_29

    :cond_17
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_25

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2c

    :cond_25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_29
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_2c
    return-void
.end method
