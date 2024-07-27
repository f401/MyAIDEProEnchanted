.class Lcom/sun/tools/javac/jvm/Code$StackMapFrame;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StackMapFrame"
.end annotation


# instance fields
.field locals:[Lcom/sun/tools/javac/code/Type;

.field pc:I

.field stack:[Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
