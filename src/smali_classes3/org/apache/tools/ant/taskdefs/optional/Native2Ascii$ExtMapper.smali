.class Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;
.super Ljava/lang/Object;
.source "Native2Ascii.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtMapper"
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;->this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$1;)V
    .registers 3

    .line 318
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 331
    if-ltz v0, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;->this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->access$100(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;->this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->access$100(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 322
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 326
    return-void
.end method
