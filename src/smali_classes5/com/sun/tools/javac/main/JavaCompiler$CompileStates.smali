.class public Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;
.super Ljava/util/HashMap;
.source "JavaCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CompileStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/sun/tools/javac/comp/Env",
        "<",
        "Lcom/sun/tools/javac/comp/AttrContext;",
        ">;",
        "Lcom/sun/tools/javac/main/JavaCompiler$CompileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x192677b61e5ddcf1L


# instance fields
.field final this$0:Lcom/sun/tools/javac/main/JavaCompiler;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/main/JavaCompiler;)V
    .registers 2

    .line 622
    iput-object p1, p0, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method isDone(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/main/JavaCompiler$CompileState;",
            ")Z"
        }
    .end annotation

    .line 626
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/main/JavaCompiler$CompileStates;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 627
    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->isDone(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
