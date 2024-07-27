.class Lcom/sun/tools/javac/comp/Infer$1;
.super Lcom/sun/tools/javac/code/Type$Mapping;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Infer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Infer;Ljava/lang/String;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Infer$1;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Type$Mapping;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 123
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sun/tools/javac/code/Type$UndetVar;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Type$UndetVar;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method
