.class abstract Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;
.super Ljava/lang/Object;
.source "Gen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Gen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GenFinalizer"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Gen;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Gen;)V
    .registers 2

    .line 2449
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Gen$GenFinalizer;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract gen()V
.end method

.method abstract genLast()V
.end method

.method hasFinalizer()Z
    .registers 2

    .line 2464
    const/4 v0, 0x1

    return v0
.end method
