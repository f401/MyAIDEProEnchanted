.class Lcom/sun/tools/javac/api/JavacTool$1;
.super Ljava/io/OutputStream;
.source "JavacTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/JavacTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/api/JavacTool;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/JavacTool;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTool$1;->this$0:Lcom/sun/tools/javac/api/JavacTool;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2

    .line 74
    return-void
.end method
