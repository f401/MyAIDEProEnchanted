.class public Lcom/sun/tools/javac/comp/AttrContextEnv;
.super Lcom/sun/tools/javac/comp/Env;
.source "AttrContextEnv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/comp/Env",
        "<",
        "Lcom/sun/tools/javac/comp/AttrContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/AttrContext;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/comp/Env;-><init>(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    .line 45
    return-void
.end method
