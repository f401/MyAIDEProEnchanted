.class public final synthetic Lorg/apache/tools/ant/Evaluable$_CC;
.super Ljava/lang/Object;
.source "Evaluable.java"


# direct methods
.method public static $default$get(Lorg/apache/tools/ant/Evaluable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    invoke-interface {p0}, Lorg/apache/tools/ant/Evaluable;->eval()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
