.class final Lorg/codehaus/groovy/control/ClassNodeResolver$1;
.super Lorg/codehaus/groovy/ast/ClassNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/control/ClassNodeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    return-void
.end method


# virtual methods
.method public DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 3

    new-instance p1, Lorg/codehaus/groovy/GroovyBugError;

    const-string v0, "This is a dummy class node only! Never use it for real classes."

    invoke-direct {p1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
