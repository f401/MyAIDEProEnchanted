.class public Lcom/a4455jkjh/b/c;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a([Ljava/lang/Object;)V
    .registers 3

    const-string v0, "SMALI"

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
