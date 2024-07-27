.class Lcom/sun/tools/javac/comp/Env$1;
.super Ljava/lang/Object;
.source "Env.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Env;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sun/tools/javac/comp/Env",
        "<TA;>;>;"
    }
.end annotation


# instance fields
.field next:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/comp/Env;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Env;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Env$1;->this$0:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env$1;->this$0:Lcom/sun/tools/javac/comp/Env;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Env$1;->next:Lcom/sun/tools/javac/comp/Env;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env$1;->next:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Env$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env$1;->next:Lcom/sun/tools/javac/comp/Env;

    .line 138
    iget-object v1, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Env$1;->next:Lcom/sun/tools/javac/comp/Env;

    .line 139
    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 130
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Env$1;->next()Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
