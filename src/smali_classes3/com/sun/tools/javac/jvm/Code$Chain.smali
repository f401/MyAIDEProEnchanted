.class public Lcom/sun/tools/javac/jvm/Code$Chain;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chain"
.end annotation


# instance fields
.field public final next:Lcom/sun/tools/javac/jvm/Code$Chain;

.field public final pc:I

.field state:Lcom/sun/tools/javac/jvm/Code$State;


# direct methods
.method public constructor <init>(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$State;)V
    .registers 4

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1499
    iput p1, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    .line 1500
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->next:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1501
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    .line 1502
    return-void
.end method
