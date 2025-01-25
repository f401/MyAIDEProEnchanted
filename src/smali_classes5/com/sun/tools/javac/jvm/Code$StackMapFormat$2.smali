.class final enum Lcom/sun/tools/javac/jvm/Code$StackMapFormat$2;
.super Lcom/sun/tools/javac/jvm/Code$StackMapFormat;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Code$StackMapFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;-><init>(Ljava/lang/String;ILcom/sun/tools/javac/jvm/Code$1;)V

    return-void
.end method


# virtual methods
.method getAttributeName(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 62
    iget-object v0, p1, Lcom/sun/tools/javac/util/Names;->StackMapTable:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method
