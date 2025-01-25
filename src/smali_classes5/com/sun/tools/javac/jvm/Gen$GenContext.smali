.class Lcom/sun/tools/javac/jvm/Gen$GenContext;
.super Ljava/lang/Object;
.source "Gen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Gen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GenContext"
.end annotation


# instance fields
.field cont:Lcom/sun/tools/javac/jvm/Code$Chain;

.field exit:Lcom/sun/tools/javac/jvm/Code$Chain;

.field finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

.field gaps:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field isSwitch:Z


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 2472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2477
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->exit:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 2483
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 2489
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->finalize:Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;

    .line 2495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->isSwitch:Z

    .line 2501
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->gaps:Lcom/sun/tools/javac/util/ListBuffer;

    return-void
.end method


# virtual methods
.method addCont(Lcom/sun/tools/javac/jvm/Code$Chain;)V
    .registers 3

    .line 2514
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->cont:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 2515
    return-void
.end method

.method addExit(Lcom/sun/tools/javac/jvm/Code$Chain;)V
    .registers 3

    .line 2507
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->exit:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Gen$GenContext;->exit:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 2508
    return-void
.end method
