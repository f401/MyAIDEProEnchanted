.class public Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;
.super Lorg/apache/tools/ant/types/PatternSet$NameEntry;
.source "PatternSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/PatternSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatternFileNameEntry"
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/types/PatternSet;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->this$0:Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;-><init>(Lorg/apache/tools/ant/types/PatternSet;)V

    return-void
.end method


# virtual methods
.method public final getEncoding()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->encoding:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 219
    invoke-super {p0}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->encoding:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";encoding->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
