.class Lcom/sun/tools/javac/code/Types$7;
.super Lcom/sun/tools/javac/code/Type$Mapping;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;Ljava/lang/String;)V
    .registers 3

    .line 813
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$7;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Type$Mapping;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 815
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_c

    new-instance v0, Lcom/sun/tools/javac/code/Type$UndetVar;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/code/Type$UndetVar;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 816
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_b
.end method
