.class public interface Lcom/luajava/LuaMetaTable;
.super Ljava/lang/Object;


# virtual methods
.method public varargs abstract __call([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation
.end method

.method public abstract __index(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract __newIndex(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
