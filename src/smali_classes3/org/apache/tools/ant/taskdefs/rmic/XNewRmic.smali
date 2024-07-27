.class public Lorg/apache/tools/ant/taskdefs/rmic/XNewRmic;
.super Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;
.source "XNewRmic.java"


# static fields
.field public static final COMPILER_NAME:Ljava/lang/String; = "xnew"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupRmicCommand()Lorg/apache/tools/ant/types/Commandline;
    .registers 4

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-Xnew"

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->setupRmicCommand([Ljava/lang/String;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method
